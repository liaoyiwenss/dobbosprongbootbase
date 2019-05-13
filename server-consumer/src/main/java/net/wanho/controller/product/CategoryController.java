package net.wanho.controller.product;

import com.alibaba.dubbo.config.annotation.Reference;
import com.github.pagehelper.PageInfo;
import net.wanho.pojo.Productcategory;
import net.wanho.pojo.vo.ProductCategoryVO;
import net.wanho.service.ProductCategoryService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/doproductcategory")
public class CategoryController {

    @Reference
    private ProductCategoryService productCategoryService;

    @RequestMapping("/getcategorylist")
    public String CategoryList(Integer pageno, HttpSession session){
        if (pageno==null)
        {
            pageno=1;
        }
        PageInfo<Productcategory> pagehelper = productCategoryService.queryProductCategoryList(pageno, 10,4);
        session.setAttribute("pagehelper", pagehelper);
        return "redirect:/show/Member_Links";
    }


    @RequestMapping("categorylevel")
    @ResponseBody
    public List<Productcategory> categorylevel(Long tid){
        List<Productcategory> productcategories =
                productCategoryService.queryProductCategoryListbyParentId(tid);
        if(productcategories==null)
        {
            productcategories=new ArrayList<Productcategory>();
        }
        return productcategories;
    }

    @RequestMapping("addcategory")
    public String addcategory(String sele, String one, String three,String two,
                              String categoryname, HttpSession session){


        Productcategory category=new Productcategory();
        if(sele.equals("1"))
        {
            category.setName(categoryname);
            category.setParentid(0);
            category.setType(1);
        }
        else if(sele.equals("2"))
        {
            category.setParentid(Integer.parseInt(one));
            category.setType(2);
            category.setName(categoryname);
        }else if(sele.equals("3"))
        {
            category.setParentid(Integer.parseInt(two));
            category.setType(3);
            category.setName(categoryname);
        }
        productCategoryService.insert(category);
        List<ProductCategoryVO> pclist = productCategoryService.getDomList();
        session.setAttribute("pclist", pclist);

        return "redirect:/doproductcategory/getcategorylist";
    }

    @RequestMapping("deletecategory")
    public String deletecategory(Long tid){
        productCategoryService.deleteByPrimaryKey(tid);
        return "redirect:/doproductcategory/getcategorylist";
    }
}
