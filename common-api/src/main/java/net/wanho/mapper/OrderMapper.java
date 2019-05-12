package net.wanho.mapper;

import net.wanho.mapper.base.BaseMapper;
import net.wanho.pojo.Order;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface OrderMapper extends BaseMapper<Order> {
   List<Order> queryorderbyuserId(@Param("userid") Long userid);
}