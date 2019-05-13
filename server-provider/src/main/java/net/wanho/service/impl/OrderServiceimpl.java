package net.wanho.service.impl;

import com.alibaba.dubbo.config.annotation.Service;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import net.wanho.mapper.OrderMapper;
import net.wanho.mapper.OrderdetailMapper;
import net.wanho.mapper.ProductMapper;
import net.wanho.pojo.Order;
import net.wanho.pojo.Orderdetail;
import net.wanho.pojo.Product;
import net.wanho.pojo.vo.ShoppingCart;
import net.wanho.pojo.vo.ShoppingCartItem;
import net.wanho.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Service(interfaceClass = OrderService.class)
@Component
public class OrderServiceimpl implements OrderService {


    @Autowired
    private OrderMapper orderMapper;


    @Autowired
    private ProductMapper productMapper;

    @Autowired
    private OrderdetailMapper orderdetailMapper;


    @Override
    public int deleteByPrimaryKey(Long tid) {
        return orderMapper.deleteByPrimaryKey(tid);
    }

    @Override
    public int insert(Order record) {
        return orderMapper.insert(record);
    }

    @Override
    public int insertSelective(Order record) {
        return orderMapper.insertSelective(record);
    }

    @Override
    public Order selectByPrimaryKey(Long tid) {
        return orderMapper.selectByPrimaryKey(tid);
    }

    @Override
    public int updateByPrimaryKeySelective(Order record) {
        return orderMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Order record) {
        return orderMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public Order productOrder(Order order, ShoppingCart cartlist){
        long orderid;
            //查询自增序，为插入详情订单做准备
            orderMapper.insert(order);
            orderid=order.getTid();
            List<ShoppingCartItem> items = cartlist.getItems();
            List<Orderdetail> detaillist=new ArrayList<Orderdetail>();
            for(int i=0;i<items.size();i++)
            {
                //修改库存
                Product p=items.get(i).getProduct();
                p.setStock(p.getStock()-items.get(i).getQuantity());
                productMapper.updateByPrimaryKeySelective(p);
                Orderdetail detail=new Orderdetail();
                detail.setOrderid((long) orderid);
                detail.setProductid(items.get(i).getProduct().getTid());
                detail.setQuantity(items.get(i).getQuantity());
                detail.setCost(items.get(i).getCost());
                orderdetailMapper.insert(detail);
                detaillist.add(detail);
            }
            order.setOrderdetaillist(detaillist);
            //把订单详情属性赋给订单
            //添加订单
        return order;
    }


    @Override
    public PageInfo<Order> queryorderbyuserId(Long userid, Integer start, Integer limit, Integer navigatePages){

        PageHelper.startPage(start, limit);
        List<Order> orders = orderMapper.queryorderbyuserId(userid);
        PageInfo<Order> pageinfo=new PageInfo<Order>(orders,navigatePages);
        return pageinfo;
    }
}
