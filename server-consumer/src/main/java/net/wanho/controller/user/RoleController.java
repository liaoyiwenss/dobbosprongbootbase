package net.wanho.controller.user;

import com.alibaba.dubbo.config.annotation.Reference;
import com.alibaba.fastjson.JSON;
import com.github.pagehelper.PageInfo;
import net.wanho.pojo.Permission;
import net.wanho.pojo.Role;
import net.wanho.pojo.Rolepermission;
import net.wanho.pojo.vo.UpdateRoleVo;
import net.wanho.service.PermissonService;
import net.wanho.service.RolePermissonService;
import net.wanho.service.RoleService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@RequestMapping("/dorole")
@Controller
public class RoleController {

    @Reference
    private RoleService roleService;

    @Reference
    private PermissonService permissonService;

    @Reference
    private RolePermissonService rolePermissonService;

    @RequestMapping("getallrole")
    public String getallrole(Integer pageno, HttpSession session){

        if(pageno==null)
        {
            pageno=1;
        }


        PageInfo<Role> selectallrole = roleService.selectallrole(pageno, 5, 4);

        List<Map<String,Object>> permissions = permissonService.selectAllPermission();

        session.setAttribute("pagehelper",selectallrole);
        session.setAttribute("permissions", JSON.toJSONString(permissions));
        return "redirect:/show/permissionManager";

    }

    @RequestMapping("addrole")
    public String addrole(Role role){
        roleService.insert(role);
        return "redirect:/dorole/getallrole";
    }


    @RequestMapping("deleterole")
    public String deleterole(Long tid){
        roleService.deleteByPrimaryKey(tid);
        return "redirect:/dorole/getallrole";
    }



    @RequestMapping("updateRoleandPermisson")
    @ResponseBody
    public String updateRoleandPermisson(@RequestBody UpdateRoleVo updateRoleVo){

        rolePermissonService.deleteByroleid(updateRoleVo.getRoleid());
        Rolepermission rp=new Rolepermission();
        rp.setRoleid(updateRoleVo.getRoleid());
        for (Permission p:
        updateRoleVo.getPermissions()) {
            rp.setPermissionid(p.getTid());
            rolePermissonService.insert(rp);
        }
        return "true";
    }
}
