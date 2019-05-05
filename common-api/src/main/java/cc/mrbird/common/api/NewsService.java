package cc.mrbird.common.api;

import cc.mrbird.common.api.base.BaseService;
import net.wanho.pojo.News;

import java.util.List;

public interface NewsService extends BaseService<News> {


    public List<News> selectnewsList();
}
