package net.wanho.mapper.base;

public interface BaseMapper<T> {
    int deleteByPrimaryKey(Long tid);

    int insert(T record);

    int insertSelective(T record);

    T selectByPrimaryKey(Long tid);

    int updateByPrimaryKeySelective(T record);

    int updateByPrimaryKey(T record);

}
