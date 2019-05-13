package net.wanho.service.impl;

import com.alibaba.dubbo.config.annotation.Service;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import net.wanho.mapper.ProductMapper;
import net.wanho.pojo.Product;
import net.wanho.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

@Service(interfaceClass = ProductService.class)
@Component
public class ProductServiceimpl implements ProductService {

    @Autowired
    private ProductMapper productMapper;

    @Override
    public PageInfo<Product> selectProductbyEntity(Integer pcid, String proname, Integer start, Integer limit, Integer navigatePages) {
        PageHelper.startPage(start, limit);
        List<Product> products = productMapper.selectProductbyEntity(pcid,proname);
        PageInfo<Product> pageinfo=new PageInfo<Product>(products,navigatePages);
        return pageinfo;
    }

    @Override
    public PageInfo<Product> queryListProduct(Integer start, Integer limit, Integer navigatePages) {
        PageHelper.startPage(start, limit);
        List<Product> products = productMapper.queryListProduct();
        PageInfo<Product> pageinfo=new PageInfo<Product>(products,navigatePages);
        return pageinfo;
    }

    @Override
    public int deleteByPrimaryKey(Long tid) {
        return productMapper.deleteByPrimaryKey(tid);
    }

    @Override
    public int insert(Product record) {
        return productMapper.insert(record);
    }

    @Override
    public int insertSelective(Product record) {
        return productMapper.insertSelective(record);
    }

    @Override
    public Product selectByPrimaryKey(Long tid) {
        return productMapper.selectByPrimaryKey(tid);
    }

    @Override
    public int updateByPrimaryKeySelective(Product record) {
        return productMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Product record) {
        return productMapper.updateByPrimaryKey(record);
    }
}
