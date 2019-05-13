package net.wanho.service.impl;

import com.alibaba.dubbo.config.annotation.Service;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import net.wanho.mapper.ProductcategoryMapper;
import net.wanho.pojo.Productcategory;
import net.wanho.pojo.vo.ProductCategoryVO;
import net.wanho.service.ProductCategoryService;
import net.wanho.utils.JedisClient;
import net.wanho.utils.JsonUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Service(interfaceClass = ProductCategoryService.class)
@Component
public class ProductCategoryServiceimpl implements ProductCategoryService {

    @Autowired
    private ProductcategoryMapper productcategoryMapper;


    @Autowired
    private JedisClient jedisClient;


    @Override
    public int deleteByPrimaryKey(Long tid) {
        jedisClient.del("pclist");
        return productcategoryMapper.deleteByPrimaryKey(tid);
    }

    @Override
    public int insert(Productcategory record) {
        return productcategoryMapper.insert(record);
    }

    @Override
    public int insertSelective(Productcategory record) {
        return productcategoryMapper.insertSelective(record);
    }

    @Override
    public Productcategory selectByPrimaryKey(Long tid) {
        return productcategoryMapper.selectByPrimaryKey(tid);
    }

    @Override
    public int updateByPrimaryKeySelective(Productcategory record) {
        return productcategoryMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Productcategory record) {
        jedisClient.del("pclist");
        return productcategoryMapper.updateByPrimaryKey(record);
    }


    public List<ProductCategoryVO> getProductCategoryVOList(List<Productcategory> list){
        List<ProductCategoryVO> oneList=new ArrayList<ProductCategoryVO>();
        for (int i=0;i<list.size();i++)
        {
            ProductCategoryVO v1=new ProductCategoryVO();
            Productcategory parent1=list.get(i);
            v1.setPc(parent1);
            List<Productcategory> list2=productcategoryMapper.queryProductCategoryListbyParentId(parent1.getTid());
            if(list2!=null)
            {
                v1.setPcVOList(getProductCategoryVOList(list2));
                oneList.add(v1);
            }else {
                break;
            }
        }
        return oneList;
    }

    public List<ProductCategoryVO> getDomList(){

        //        先从缓存中取值
        String pclist = jedisClient.get("pclist");
        if (pclist == null) {
            List<ProductCategoryVO> oneList=new ArrayList<ProductCategoryVO>();
            List<Productcategory> list1 = productcategoryMapper.queryProductCategoryListbyParentId(0l);
            for(int i=0;i<list1.size();i++)
            {
                ProductCategoryVO v1=new ProductCategoryVO();
                Productcategory parent1=list1.get(i);
                v1.setPc(parent1);
                List<Productcategory> list2=productcategoryMapper.queryProductCategoryListbyParentId(parent1.getTid());

                List<ProductCategoryVO> twoList=new ArrayList<ProductCategoryVO>();
                for(int j=0;j<list2.size();j++)
                {
                    ProductCategoryVO v2=new ProductCategoryVO();
                    Productcategory parent2=list2.get(j);
                    v2.setPc(parent2);
                    List<Productcategory> list3=productcategoryMapper.queryProductCategoryListbyParentId(parent2.getTid());
                    List<ProductCategoryVO> threeList= new ArrayList<ProductCategoryVO>();
                    for(int k=0;k<list3.size();k++)
                    {
                        ProductCategoryVO v3=new ProductCategoryVO();
                        Productcategory pc=list3.get(k);
                        v3.setPc(pc);
                        threeList.add(v3);
                    }
                    v2.setPcVOList(threeList);
                    twoList.add(v2);
                }
                v1.setPcVOList(twoList);
                oneList.add(v1);
            }
            jedisClient.set("pclist", JsonUtils.objectToJson(oneList));
            jedisClient.expire("pclist", 24 * 3600);
            return oneList;
        }
        System.out.println("=========从缓存查询=============");
        List<ProductCategoryVO> oneList = JsonUtils.jsonToList(pclist, ProductCategoryVO.class);
        return oneList;
    }

    @Override
    public PageInfo<Productcategory> queryProductCategoryList(Integer start, Integer limit, Integer navigatePages) {
        PageHelper.startPage(start, limit);
        List<Productcategory> productcategories = productcategoryMapper.queryProductCategoryList();
        PageInfo<Productcategory> pageinfo=new PageInfo<Productcategory>(productcategories,navigatePages);
        return pageinfo;
    }

    @Override
    public List<Productcategory> queryProductCategoryListbyParentId(Long parentid) {
        return productcategoryMapper.queryProductCategoryListbyParentId(parentid);
    }


}
