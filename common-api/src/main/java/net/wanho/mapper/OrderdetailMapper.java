package net.wanho.mapper;

import net.wanho.mapper.base.BaseMapper;
import net.wanho.pojo.Orderdetail;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface OrderdetailMapper extends BaseMapper<Orderdetail> {


    List<Orderdetail> queryorderdetailbyOrderid(Long orderid);
}