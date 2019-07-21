package net.wanho.service.impl;

import com.alibaba.dubbo.config.annotation.Service;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import net.wanho.mapper.ProductMapper;
import net.wanho.pojo.Product;
import net.wanho.service.ProductService;
import org.apache.commons.lang3.StringUtils;
import org.apache.solr.client.solrj.SolrClient;
import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.SolrServerException;
import org.apache.solr.client.solrj.response.QueryResponse;
import org.apache.solr.common.SolrDocument;
import org.apache.solr.common.SolrDocumentList;
import org.apache.solr.common.SolrInputDocument;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.util.CollectionUtils;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service(interfaceClass = ProductService.class)
@Component
public class ProductServiceimpl implements ProductService {

    @Autowired
    private ProductMapper productMapper;


    @Autowired
    private SolrClient solrClient;


    @Override
    public void importAlltoSolr() {
//        查询所有商品  要求包含索引库中所有需要的信息

        try {
            List<Product> products = productMapper.queryListProduct();
            if (CollectionUtils.isEmpty(products)) {
            }
            for (Product item : products) {
                SolrInputDocument document = new SolrInputDocument();
                document.addField("id", item.getTid());
                document.addField("tid", item.getTid());
                document.addField("product_name", item.getName());
                document.addField("product_description", item.getDescription());
                document.addField("product_stock", item.getStock());
                document.addField("product_price", item.getPrice());
                document.addField("categorylevel1id", item.getCategorylevel1id());
                document.addField("categorylevel2id", item.getCategorylevel2id());
                document.addField("categorylevel3id", item.getCategorylevel3id());
                document.addField("product_filename", item.getFilename());
                solrClient.add(document);
            }
            solrClient.commit();
        } catch (SolrServerException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    public PageInfo<Product> queryItem(Integer pcid, String proname, Integer start, Integer limit, Integer navigatePages) throws IOException, SolrServerException {


//        创建SolrQuery对象
//        设置查询条件
        SolrQuery solrQuery = new SolrQuery();

        if (StringUtils.isBlank(proname)) {
            solrQuery.setQuery("*:*");
        }

//        搜索框中的值
        if (StringUtils.isNotBlank(proname)) {
            solrQuery.setQuery("product_keywords:" + proname);

        }

//        商品类目
        if (pcid!=null) {
            solrQuery.addFilterQuery("tid:" + pcid);
        }


//        添加分页条件
        if (start == null) {
            start = 1;
        }

        solrQuery.setStart((start - 1) * limit);
        solrQuery.setRows(limit);
        //        设置高亮
        solrQuery.setHighlight(true);
        //        设置高亮显示的域
        solrQuery.addHighlightField("product_name");
        solrQuery.setHighlightSimplePre("<font color='red'>");
        solrQuery.setHighlightSimplePost("</font>");

        //        执行查询
        QueryResponse response = solrClient.query(solrQuery);
        //        获取查询结果
        SolrDocumentList documentList = response.getResults();


        //        计算总页数
        long numFound = documentList.getNumFound();
        long pages = numFound / limit;
        if (numFound % limit != 0) {
            pages++;
        }



//        获取商品列表
        List<Product> itemList = new ArrayList<Product>();


        for (SolrDocument document : documentList) {
            Product searchItem = new Product();
            searchItem.setTid((Long) document.get("tid"));

//            取高亮显示
            Map<String, Map<String, List<String>>> highlighting = response.getHighlighting();
            List<String> list = (highlighting.get(document.get("id"))).get("product_name");
            String itemTitle = "";
            if (CollectionUtils.isEmpty(list)) {
                itemTitle = (String) document.get("product_name");
            } else {
                itemTitle = list.get(0);
            }
            searchItem.setName((String) document.get("product_name"));
            searchItem.setDescription((String) document.get("product_description"));
            searchItem.setFilename((String) document.get("product_filename"));
            searchItem.setCategorylevel1id((Long)document.get("categorylevel1id"));
            searchItem.setCategorylevel2id((Long) document.get("categorylevel1id"));
            searchItem.setCategorylevel3id((Long) document.get("categorylevel3id"));
            searchItem.setStock((Long) document.get("product_stock"));
            searchItem.setPrice((Float) document.get("product_price"));
            itemList.add(searchItem);
        }

        PageInfo pageInfo=new PageInfo();
        pageInfo.setList(itemList);
        pageInfo.setPageNum(start);
        pageInfo.setPageSize(limit);
        pageInfo.setSize(itemList.size());
        pageInfo.setTotal(numFound);
        pageInfo.setPages((int) pages);
        if(start>1) {
            pageInfo.setPrePage(start - 1);
            pageInfo.setHasPreviousPage(true);
        }else {
            pageInfo.setHasPreviousPage(false);
        }
        if(pages>start)
        {
            pageInfo.setHasNextPage(true);
            pageInfo.setNextPage(start+1);
        }else {
            pageInfo.setHasNextPage(false);
        }
        pageInfo.setNavigatePages(navigatePages);

        if(start==1)
        {
            pageInfo.setIsFirstPage(true);
        }else
        {
            pageInfo.setIsFirstPage(false);
        }
        if(start==pages)
        {
            pageInfo.setIsLastPage(true);
        }else {
            pageInfo.setIsLastPage(false);
        }



        int[] navigatepageNums=null;
        if (pages <= navigatePages) {
            navigatepageNums = new int[(int) pages];
            for (int i = 0; i < pages; i++) {
                navigatepageNums[i] = i + 1;
            }
        } else { //当总页数大于导航页码数时
            navigatepageNums = new int[navigatePages];
            int startNum = start - navigatePages / 2;
            int endNum = start + navigatePages / 2;

            if (startNum < 1) {
                startNum = 1;
                //(最前navigatePages页
                for (int i = 0; i < navigatePages; i++) {
                    navigatepageNums[i] = startNum++;
                }
            } else if (endNum > pages) {
                endNum = (int) pages;
                //最后navigatePages页
                for (int i = navigatePages - 1; i >= 0; i--) {
                    navigatepageNums[i] = endNum--;
                }
            } else {
                //所有中间页
                for (int i = 0; i < navigatePages; i++) {
                    navigatepageNums[i] = startNum++;
                }
            }
        }

        pageInfo.setNavigatepageNums(navigatepageNums);
        return pageInfo;
    }

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
        productMapper.insert(record);
        return Integer.parseInt(record.getTid().toString());
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
