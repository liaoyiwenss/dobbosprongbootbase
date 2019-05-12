package net.wanho.service;

import com.github.pagehelper.PageInfo;
import net.wanho.pojo.Product;
import net.wanho.service.base.BaseService;

public interface ProductService extends BaseService<Product> {

    public PageInfo<Product> selectProductbyEntity(Integer pcid, String proname, Integer start, Integer limit, Integer navigatePages);

    PageInfo<Product> queryListProduct(Integer start, Integer limit, Integer navigatePages);
}
