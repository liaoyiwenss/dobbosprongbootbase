package net.wanho.activeMq;

import com.alibaba.dubbo.config.annotation.Reference;
import net.wanho.pojo.Product;
import net.wanho.service.ProductService;
import org.apache.solr.client.solrj.SolrClient;
import org.apache.solr.client.solrj.SolrServerException;
import org.apache.solr.common.SolrInputDocument;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jms.annotation.JmsListener;
import org.springframework.stereotype.Component;

import java.io.IOException;

@Component
public class Consumer {


    @Autowired
    private SolrClient solrClient;

    @Reference
    private ProductService productService;

    @JmsListener(destination = "addSolritem.queue")
    public void receiveitemQueue(String text) {


        System.out.println("asassa");
        Long productid= Long.valueOf(text);
        Product product = productService.selectByPrimaryKey(productid);


//        创建输入文档
        SolrInputDocument document = new SolrInputDocument();
        document.addField("id", product.getTid());
        document.addField("tid", product.getTid());
        document.addField("product_name", product.getName());
        document.addField("product_description", product.getDescription());
        document.addField("product_stock", product.getStock());
        document.addField("product_price", product.getPrice());
        document.addField("categorylevel1id", product.getCategorylevel1id());
        document.addField("categorylevel2id", product.getCategorylevel2id());
        document.addField("categorylevel3id", product.getCategorylevel3id());
        document.addField("product_filename", product.getFilename());
        try {
            solrClient.add(document);
            solrClient.commit();
        } catch (SolrServerException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }



    }

}
