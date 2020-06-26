package net.wanho.controller.alipay;


import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ControllerTestGc {
    @RequestMapping("/testGc")
    public void testGc(){
        byte[] bb =new byte[1024];
    }
}
