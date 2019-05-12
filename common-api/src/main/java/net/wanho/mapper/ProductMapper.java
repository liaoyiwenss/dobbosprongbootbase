package net.wanho.mapper;

import net.wanho.mapper.base.BaseMapper;
import net.wanho.pojo.Product;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductMapper extends BaseMapper<Product> {

    public List<Product> selectProductbyEntity(@Param("pcid") Integer pcid, @Param("proname") String proName);

    public Product queryProductbtid(Long tid);

    public List<Product> queryListProduct();
}