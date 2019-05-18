package net.wanho.controller.user;


import com.alibaba.dubbo.config.annotation.Reference;
import net.wanho.pojo.Permission;
import net.wanho.service.PermissonService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/dopermission")
public class PermissonController {


    @Reference
    private PermissonService permissonService;



    @RequestMapping("/queryallPermissonbyRoleid")
    @ResponseBody
    public List<Map<String, Object>> queryallPermissonbyRoleid(Long roleid){

        List<Map<String, Object>> maps = permissonService.selectRoleandPermission(roleid);

        return maps;
    }


}
