package net.wanho.service.base;

public interface BaseService<T> {

    int deleteByPrimaryKey(Long tid);

    int insert(T record);

    int insertSelective(T record);

    T selectByPrimaryKey(Long tid);

    int updateByPrimaryKeySelective(T record);

    int updateByPrimaryKey(T record);
}
