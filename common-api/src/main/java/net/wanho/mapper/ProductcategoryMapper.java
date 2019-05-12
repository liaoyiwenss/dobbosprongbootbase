package net.wanho.mapper;

import net.wanho.mapper.base.BaseMapper;
import net.wanho.pojo.Productcategory;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductcategoryMapper extends BaseMapper<Productcategory> {


    List<Productcategory> queryProductCategoryListbyParentId(@Param("parentid") Long parentid);

    List<Productcategory> queryProductCategoryList();
}