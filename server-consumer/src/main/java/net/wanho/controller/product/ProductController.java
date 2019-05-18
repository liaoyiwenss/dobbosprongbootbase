package net.wanho.controller.product;

import com.alibaba.dubbo.config.annotation.Reference;
import com.github.pagehelper.PageInfo;
import net.wanho.pojo.Product;
import net.wanho.pojo.Productcategory;
import net.wanho.service.ProductCategoryService;
import net.wanho.service.ProductService;
import net.wanho.utils.FastDFSClient;
import net.wanho.utils.JedisClient;
import net.wanho.utils.JsonUtils;
import org.apache.solr.client.solrj.SolrClient;
import org.apache.solr.client.solrj.SolrServerException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jms.core.JmsMessagingTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
@RequestMapping("doproduct")
public class ProductController {

    @Reference
    private ProductService productService;

    @Reference
    private ProductCategoryService productCategoryService;


    @Autowired
    private JmsMessagingTemplate jmsTemplate;


    @Autowired
    private SolrClient solrClient;






    private Logger logger= LoggerFactory.getLogger(ProductController.class);

    @RequestMapping("queryproductList")
    public String queryproductList(String proName, Integer productid, Integer pageno, HttpSession session){

        if(pageno==null)
        {
            pageno=1;
        }
        session.removeAttribute("pcid");
        session.removeAttribute("proName");
        if(proName!=null)
        {
            session.setAttribute("proName",proName);
        }else if(productid!=null) {
            session.setAttribute("pcid", productid);
        }

        PageInfo<Product> productPageInfo=null;
        if(productid!=null)
        {
            productPageInfo = productService.selectProductbyEntity(productid,proName,pageno, 5, 4);
        }else
        {
            try {
                productPageInfo = productService.queryItem(productid,proName,pageno, 5, 4);
            } catch (IOException e) {
                e.printStackTrace();
            } catch (SolrServerException e) {
                e.printStackTrace();
            }

        }

        session.setAttribute("pagehelper",productPageInfo);

        return "redirect:/show/CategoryList";
    }

    @RequestMapping("product")
    public String product(Long tid, HttpSession session){


        Product product=productService.selectByPrimaryKey(tid);
        session.setAttribute("pro",product);
        return "redirect:/show/Product";

    }

    @RequestMapping("getallproduct")
    public String getallproduct(Integer pageno, HttpSession session){

        if(pageno==null)
        {
            pageno=1;
        }
        PageInfo<Product> pagehelper = productService.queryListProduct(pageno, 10,4);
        session.setAttribute("pagehelper", pagehelper);
        return "redirect:/show/Member_Money";
    }

    @RequestMapping("deleteProduct")
    public String deleteProduct(Long tid){
        productService.deleteByPrimaryKey(tid);
        return "redirect:/doproduct/getallproduct";
    }

    @RequestMapping("addProduct")
    public String addProduct(@RequestParam("picpath") CommonsMultipartFile file, HttpServletRequest request,
                             Long one, Long two, Long three, String action, String picname,
                             Float price, Long stock, HttpSession session){

        Product product=new Product();

        product.setName(picname);
        product.setCategorylevel1id(one);
        product.setCategorylevel2id(two);
        product.setCategorylevel3id(three);
        product.setPrice(price);
        product.setStock(stock);
        if (!file.isEmpty()) {
//            String type = file.getOriginalFilename().substring(
//                    file.getOriginalFilename().indexOf("."));// 取文件格式后缀名
//            String filename = UUID.randomUUID() + type;// 取当前时间戳作为文件名


            //使用fastdfs文件上传
            String str = FastDFSClient.uploadFile(file);
            System.out.println(str);
            product.setFilename("/"+str);
            FastDFSClient.getResAccessUrl(str);
//          //获取本地服务器文件上传
//            String path = request.getSession().getServletContext()
//                    .getRealPath("/files/"+ filename);// 存放位置
//            File destFile = new File(path);
//            try {
//                FileUtils.copyInputStreamToFile(file.getInputStream(), destFile);// 复制临时文件到指定目录下
//            } catch (IOException e) {
//                e.printStackTrace();
//            }
        }
        int r = 0;
        if(action.equals("add"))
        {
                r = productService.insert(product);
        }
        if(action.equals("update"))
        {
                Product updateproduct=(Product) session.getAttribute("product");
                product.setTid(updateproduct.getTid());
                if(file.isEmpty())
                {
                    product.setFilename(updateproduct.getFilename());
                }else {
                    if(updateproduct.getFilename()!=null&&updateproduct.getFilename()!="")
                    {
                        FastDFSClient.deleteFile(updateproduct.getFilename().substring(1,product.getFilename().length()));
                    }
                }
                r=productService.updateByPrimaryKey(product);
        }
            return "redirect:/doproduct/getallproduct";
    }


    @RequestMapping("updateProduct")
    public String updateProduct(Long tid, HttpSession session){

        Product product = productService.selectByPrimaryKey(tid);
        session.setAttribute("product", product);

        Productcategory c1 = productCategoryService.selectByPrimaryKey(product.getCategorylevel1id());
        Productcategory c2 = productCategoryService.selectByPrimaryKey(product.getCategorylevel2id());
        Productcategory c3 = productCategoryService.selectByPrimaryKey(product.getCategorylevel3id());
        session.setAttribute("c1", c1);
        session.setAttribute("c2", c2);
        session.setAttribute("c3", c3);
        return "redirect:/show/toAddProduct";
    }
}
