package net.wanho.controller.shoppingcar;


import com.alibaba.dubbo.config.annotation.Reference;
import net.wanho.pojo.Order;
import net.wanho.pojo.Product;
import net.wanho.pojo.User;
import net.wanho.pojo.Useraddress;
import net.wanho.pojo.vo.ShoppingCart;
import net.wanho.pojo.vo.ShoppingCartItem;
import net.wanho.service.OrderService;
import net.wanho.service.ProductService;
import net.wanho.service.UseraddressService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("shopping")
public class ShoppingController {


    @Reference
    private ProductService productService;

    @Reference
    private UseraddressService useraddressService;

    @Reference
    private OrderService orderService;




    @RequestMapping("buycar")
    public String buycar(Long tid, Long quntity, HttpSession session) {

        Product product = productService.selectByPrimaryKey(tid);

        float cost = product.getPrice() * quntity;

        ShoppingCart cartlist = (ShoppingCart) session.getAttribute("cartlist");
        if (cartlist == null) {
            ShoppingCartItem productitem = new ShoppingCartItem(product, quntity, cost);
            cartlist = new ShoppingCart();
            List<ShoppingCartItem> items = new ArrayList<ShoppingCartItem>();
            items.add(productitem);
            cartlist.setSum(productitem.getCost());
            cartlist.setItems(items);
            session.setAttribute("cartlist", cartlist);
            List<ShoppingCartItem> itemsss = cartlist.getItems();
            for (int i = 0; i < itemsss.size(); i++) {
                System.out.println("11");
                System.out.println(itemsss.get(i).getProduct().getName());
            }
            return "redirect:/show/Temp";
        } else {
            List<ShoppingCartItem> items = cartlist.getItems();
            boolean flag = false;
            for (int i = 0; i < items.size(); i++) {
                ShoppingCartItem item = items.get(i);
                Product pro = item.getProduct();
                if (pro.getTid().equals(tid)) {
                    if ((pro.getStock() - (item.getQuantity() + quntity)) > 0) {
                        item.setQuantity(item.getQuantity() + quntity);
                        item.setCost(item.getCost() + quntity * pro.getPrice());
                        cartlist.setSum(cartlist.getSum() + cost);
                        cartlist.setItems(items);
                        flag = true;

                    }
                }
            }
            if (!flag) {
                if ((product.getStock() - quntity) > 0) {
                    ShoppingCartItem productitem = new ShoppingCartItem(product, quntity, cost);
                    items.add(productitem);
                    cartlist.setSum(cartlist.getSum() + cost);
                    cartlist.setItems(items);
                    flag = true;
                }
            }
            session.setAttribute("cartlist", cartlist);
            if (flag) {
                //cartlist更新了
                session.setAttribute("message", "");
            } else {
                //cartlist没有更新了
                session.setAttribute("message", "库存不够无法插入！！");
            }
            return "redirect:/show/Temp";
        }
    }


    @RequestMapping("buycar1")
    public String buycar1(){
        return "redirect:/show/Temp";
    }



    @RequestMapping("addProduct")
    public String addProduct(Long quntity, Long tid, HttpSession session){

        ShoppingCart cartlist=(ShoppingCart) session.getAttribute("cartlist");
        List<ShoppingCartItem>  items=cartlist.getItems();
        boolean flag=false;
        for(int i=0;i<items.size();i++)
        {
            ShoppingCartItem item=items.get(i);
            Product pro=item.getProduct();
            if(pro.getTid().equals(tid))
            {
                if((pro.getStock()-(quntity))>0&&quntity>0)
                {
                    item.setQuantity(quntity);
                    float tempCost=quntity*pro.getPrice();
                    cartlist.setSum(cartlist.getSum()+(tempCost-item.getCost()));
                    item.setCost(tempCost);
                    cartlist.setItems(items);
                    flag=true;
                }
            }
        }


        session.setAttribute("cartlist", cartlist);
        if(flag)
        {
            //cartlist更新了
            session.setAttribute("message", "");
        }else
        {
            //cartlist没有更新了
            session.setAttribute("message", "库存不够无法插入！！");
        }

        return "redirect:/show/settlement1";
    }


    @RequestMapping("removeProduct")
    public String removeProduct(Long tid, HttpSession session){

        ShoppingCart cartlist=(ShoppingCart)session.getAttribute("cartlist");
        List<ShoppingCartItem>  items=cartlist.getItems();
        System.out.println(items.size());
        for(int i=0;i<items.size();i++)
        {
            ShoppingCartItem shoppingCartItem = items.get(i);
            System.out.println(shoppingCartItem.getProduct().getTid());
            if(shoppingCartItem.getProduct().getTid().equals(tid))
            {
                cartlist.setSum(cartlist.getSum()-items.get(i).getCost());
                items.remove(i);
                System.out.println(items.size());
                break;
            }
        }
        cartlist.setItems(items);
        session.setAttribute("cartlist", cartlist);
        return "redirect:/show/settlement1";
    }


    @RequestMapping("BalanceCar")
    public String BalanceCar(HttpSession session, String index, String address, Long tid, String remark){

        User user=(User) session.getAttribute("users");
        ShoppingCart cartlist=(ShoppingCart) session.getAttribute("cartlist");
        if(index.equals("1"))
        {
            List<Useraddress> addresslist = user.getAddresses();
            session.setAttribute("userAddressList", addresslist);

            return "redirect:/show/settlement2";
        }
        else if(index.equals("2"))
        {
            Useraddress useraddress=new Useraddress();
            useraddress.setRemark(remark);
            useraddress.setAddress(address);
            useraddress.setUserid(user.getTid());
            useraddress.setIsdefault(0);
            if(tid==-1)
            {
                useraddressService.insert(useraddress);
                List<Useraddress> addresseslist = user.getAddresses();
                if(addresseslist==null)
                {
                    addresseslist=new ArrayList<Useraddress>();

                }
                addresseslist.add(useraddress);
                user.setAddresses(addresseslist);
                session.setAttribute("users",user);
            }
            else
            {
                Useraddress queryaddressId = useraddressService.selectByPrimaryKey(tid);
                address=queryaddressId.getAddress();
            }
            Order order=new Order();
            order.setUserid(user.getTid());
            order.setLoginname(user.getLoginname());
            order.setUseraddress(address);
            order.setCost((float) cartlist.getSum());
            order.setSerialnumber(UUID.randomUUID().toString());
            orderService.productOrder(order, cartlist);
            session.setAttribute("currentOrder", order);
            session.removeAttribute("cartlist");
            return "redirect:/show/settlement3";

        } else//index==3
        {

            return "redirect:/settlement/settlement1";
        }
    }



}