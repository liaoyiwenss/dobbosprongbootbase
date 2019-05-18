package net.wanho.service;

import com.github.pagehelper.PageInfo;
import net.wanho.pojo.Product;
import net.wanho.service.base.BaseService;
import org.apache.solr.client.solrj.SolrServerException;

import java.io.IOException;

public interface ProductService extends BaseService<Product> {

    public PageInfo<Product> selectProductbyEntity(Integer pcid, String proname, Integer start, Integer limit, Integer navigatePages);

    PageInfo<Product> queryListProduct(Integer start, Integer limit, Integer navigatePages);

    public void importAlltoSolr();


    public PageInfo<Product> queryItem(Integer pcid, String proname, Integer start, Integer limit, Integer navigatePages) throws IOException, SolrServerException;
}
