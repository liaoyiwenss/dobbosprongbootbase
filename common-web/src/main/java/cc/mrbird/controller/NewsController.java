package cc.mrbird.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/donews")
public class NewsController {

//    @Reference
//    private NewsService newsService;

    @RequestMapping("/newslist")
    public String hello() {

//        List<News> news = newsService.selectnewsList();
        return "temp";
    }
}
