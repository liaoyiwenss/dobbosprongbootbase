package net.wanho.service;


import com.github.pagehelper.PageInfo;
import net.wanho.pojo.Productcategory;
import net.wanho.pojo.vo.ProductCategoryVO;
import net.wanho.service.base.BaseService;

import java.util.List;

public interface ProductCategoryService extends BaseService<Productcategory> {

    public List<ProductCategoryVO> getDomList();

    public PageInfo<Productcategory> queryProductCategoryList(Integer start, Integer limit, Integer navigatePages);

    List<Productcategory> queryProductCategoryListbyParentId(Long parentid);


    public List<ProductCategoryVO> getProductCategoryVOList(List<Productcategory> list);
}
