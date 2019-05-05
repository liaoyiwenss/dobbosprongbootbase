package cc.mrbird.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {


    @RequestMapping("showTemp")
    public String showTemp(){
        return "temp";
    }
}
