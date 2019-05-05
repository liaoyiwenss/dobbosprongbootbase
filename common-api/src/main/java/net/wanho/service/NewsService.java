package net.wanho.service;

import net.wanho.pojo.News;
import net.wanho.service.base.BaseService;

import java.util.List;

public interface NewsService extends BaseService<News> {


    public List<News> selectnewsList();
}
