package cc.mrbird.consumer.controller;

import cc.mrbird.common.api.NewsService;
import com.alibaba.dubbo.config.annotation.Reference;
import net.wanho.pojo.News;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/donews")
public class NewsController {

    @Reference
    private NewsService newsService;

    @RequestMapping("/newslist")
    public String hello() {

        List<News> news = newsService.selectnewsList();
        return "temp";
    }
}
