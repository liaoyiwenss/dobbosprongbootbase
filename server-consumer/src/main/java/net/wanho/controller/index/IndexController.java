package net.wanho.controller.index;


import com.alibaba.dubbo.config.annotation.Reference;
import com.github.pagehelper.PageInfo;
import net.wanho.pojo.Product;
import net.wanho.pojo.vo.ProductCategoryVO;
import net.wanho.service.ProductCategoryService;
import net.wanho.service.ProductService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@Controller
public class IndexController {

    @Reference
    ProductService productService;

    @Reference
    ProductCategoryService productCategoryService;

    @RequestMapping("/")
    public String showindex(HttpSession session, HttpServletRequest request, Map map)
    {
//        List<ProductCategoryVO> pclist = productCategoryService.getDomList();
        List<ProductCategoryVO> domList = productCategoryService.getDomList();
        session.setAttribute("pclist",domList);
        PageInfo<Product> productPageInfo = productService.selectProductbyEntity(null,null,0, 6, 1);
        PageInfo<Product> productPageInfo1 =productService.selectProductbyEntity(null,null,1,6,1);
        PageInfo<Product> productPageInfo2 =productService.selectProductbyEntity(null,null,2,6,1);
        PageInfo<Product> productPageInfo3 =productService.selectProductbyEntity(null,null,3,6,1);
        PageInfo<Product> productPageInfo4 =productService.selectProductbyEntity(null,null,4,6,1);
        PageInfo<Product> productPageInfo5 =productService.selectProductbyEntity(null,null,5,6,1);
        PageInfo<Product> productPageInfo6 =productService.selectProductbyEntity(null,null,6,6,1);
        map.put("productlist",productPageInfo.getList());
        map.put("productlist1",productPageInfo1.getList());
        map.put("productlist2",productPageInfo2.getList());
        map.put("productlist3",productPageInfo3.getList());
        map.put("productlist4",productPageInfo4.getList());
        map.put("productlist5",productPageInfo5.getList());
        map.put("productlist6",productPageInfo6.getList());
        String filepath=request.getContextPath();
        session.setAttribute("filepath", ""+"http://129.211.121.171:83");
        return "Index";
    }
}
