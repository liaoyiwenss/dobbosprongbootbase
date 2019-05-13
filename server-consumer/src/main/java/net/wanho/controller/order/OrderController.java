package net.wanho.controller.order;

import com.alibaba.dubbo.config.annotation.Reference;
import com.github.pagehelper.PageInfo;
import net.wanho.pojo.Order;
import net.wanho.pojo.User;
import net.wanho.service.OrderService;
import net.wanho.service.OrderdetailService;
import net.wanho.service.ProductService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("doorder")
public class OrderController {

    @Reference
    private OrderdetailService orderdetailService;


    @Reference
    private OrderService orderService;

    @Reference
    private ProductService productService;



@RequestMapping("orderdetail")
public String orderdetail(HttpSession session, Integer pageno, String flag)
{

    User user = (User) session.getAttribute("users");

    session.setAttribute("flag", flag);

    if(pageno==null)
    {
        pageno=1;
    }

    PageInfo<Order> pagehelper = null;

    if(flag.equals("1"))
    {
        pagehelper = orderService.queryorderbyuserId(user.getTid(), pageno, 2, 4);
    }
    else
    {
        pagehelper = orderService.queryorderbyuserId(null, pageno, 2, 4);
    }
    session.setAttribute("pagehelper", pagehelper);
    return "redirect:/show/Member_Packet";

}


}
