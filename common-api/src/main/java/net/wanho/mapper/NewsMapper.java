package net.wanho.mapper;

import net.wanho.mapper.base.BaseMapper;
import net.wanho.pojo.News;

import java.util.List;


public interface NewsMapper extends BaseMapper<News> {
    public List<News> selectnewsList();
}