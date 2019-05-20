package net.wanho.controller.user;

import com.alibaba.dubbo.config.annotation.Reference;
import com.alibaba.fastjson.JSON;
import com.github.pagehelper.PageInfo;
import net.wanho.pojo.User;
import net.wanho.pojo.Userrole;
import net.wanho.service.*;
import net.wanho.utils.RegUtils;
import org.apache.ibatis.annotations.Param;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.UUID;

@Controller
@RequestMapping("/douser")
public class UserController {


    @Reference
    UserService userService;

    @Reference
    RoleService roleService;

    @Reference
    RolePermissonService rolePermissonService;

    @Reference
    UserRoleService userRoleService;

    @Reference
    PermissonService permissonService;

    private Logger logger = LoggerFactory.getLogger(UserController.class);

    @RequestMapping("/tologin")
    public String tologin(String username, String password, HttpSession session){
        User user=new User();
        user.setLoginname(username);
        user.setPassword(password);
        User users = userService.queryexUser(user);
        session.setAttribute("users",users);
        return "redirect:/show/Index";
    }
    @RequestMapping("/selectalluser")
    public String selectalluser(HttpSession session, User user)
    {
        logger.debug(user.toString());
        User currentuser = userService.selectByPrimaryKey(user.getTid());
        session.setAttribute("currentuser",currentuser);
        return "index";
    }

    @RequestMapping(value = "/toprelogin",produces={"text/html;charset=UTF-8;","application/json;"})
    @ResponseBody
    public String toLogin(String username,String password){
        UsernamePasswordToken token = new UsernamePasswordToken(username, password);
        Subject subject = SecurityUtils.getSubject();
        try {
            subject.login(token);
            return "true";
        } catch (AuthenticationException e) {
            e.printStackTrace();
            return "用户名密码不正确！！";
        }

    }


    @RequestMapping(value = "/toRegister",produces={"text/html;charset=UTF-8;","application/json;"})
    @ResponseBody
    public String  toRegister(String username, String password, String repassword,
                              String email, String phone, String realname, String indentified,
                              HttpServletRequest request,
                              String kaptcha){
        String loginname=username;
        username=realname;
        User user=new User();
        user.setLoginname(loginname);
        user.setPassword(password);
        user.setEmail(email);
        user.setMobile(phone);
        user.setUsername(username);
        user.setIdentitycode(indentified);
        RegUtils.checkEmail(email);
        User users=userService.queryexUser(user);
        if(users!=null)
        {
            return "用户名已存在";
        }
        if(!RegUtils.checkEmail(email))
        {
            return "邮箱格式不正确";
        }

        if(!RegUtils.checkIdentityCodeReg(indentified))
        {
            return "身份证格式不正确";
        }

        if(!RegUtils.checkMobile(phone))
        {
            return "手机号格式不正确";
        }

        String kaptchaExpected = (String) request.getSession().getAttribute(
                com.google.code.kaptcha.Constants.KAPTCHA_SESSION_KEY);
        if(!kaptcha.equalsIgnoreCase(kaptchaExpected))
        {
            return "验证码错误";
        }
        if(!password.equals(repassword))
        {
            return "两此密码输入不一致";
        }
     return "true";
    }


    @RequestMapping("addUser")
    public String addUser(String username, String password, String repassword,
                          String email, String phone, String realname, String indentified, HttpSession session)
    {
        String loginname=username;
        username=realname;
        User user=new User();
        user.setLoginname(loginname);
        user.setEmail(email);
        user.setMobile(phone);
        user.setUsername(username);
        user.setPassword(password);
        user.setIdentitycode(indentified);
        user.setSex(0);
        String salt= UUID.randomUUID().toString();
        user.setPassword(userService.shiroMD5(user.getPassword(),salt));
        user.setSalt(salt);
        User user1 = userService.addUser(user);
        session.setAttribute("users",user1);
        return "redirect:/show/Login";
    }

    @ResponseBody
    @RequestMapping("/ExistsUsername")
    public Object ExistsUsername(String username){


        User user=new User();
        user.setLoginname(username);
        User users=userService.queryexUser(user);
        return JSON.toJSONString(users);
    }

    @RequestMapping("/Invilidaty")
    public String Invilidaty(HttpSession session){
        session.removeAttribute("users");
        session.removeAttribute("cartlist");
        Subject subject = SecurityUtils.getSubject();
        subject.logout();
        return "redirect:/show/Login";
    }

    @RequestMapping("getAlluser")
    public String getAlluser(Integer pageno, HttpSession session){

        if(pageno==null)
        {
            pageno=1;
        }

        PageInfo<User> pagehelper = userService.queryallUser(pageno, 10,4);
        session.setAttribute("pagehelper", pagehelper);

        return "redirect:/show/Member_Collect";
    }


    @RequestMapping("adminaddUser")
    public String adminaddUser(String loginName, String userName, String repPassword,
                               String identityCode, String email, String mobile, String password,
                               String type, HttpSession session){

        User useru=new User();
        useru.setLoginname(loginName);
        useru.setUsername(userName);
        useru.setIdentitycode(identityCode);
        useru.setEmail(email);
        useru.setMobile(mobile);
        useru.setType(Integer.parseInt(type));
        useru.setPassword(password);
        useru.setSex(1);




        User user = (User) session.getAttribute("user");
        if(user==null)
        {
            String salt= UUID.randomUUID().toString();
            useru.setSalt(salt);
            useru.setPassword(userService.shiroMD5(useru.getPassword(),salt));
            userService.addUser(useru);
            session.removeAttribute("user");
        }
        else
        {
            userService.updateByPrimaryKey(useru);
            Userrole userrole=new Userrole();
            userrole.setRoleid(Long.parseLong(type));
            userrole.setUserid(user.getTid());
            userRoleService.deleteByuserId(user.getTid());
            userRoleService.insert(userrole);
            session.removeAttribute("user");
        }

        return "redirect:/douser/getAlluser";
    }

    @RequestMapping("deleteuser")
    public String deleteuser(Long tid){
        userService.deleteByPrimaryKey(tid);
        return "redirect:/douser/getAlluser";
    }

    @RequestMapping("updateUser")
    public String updateUser(Long tid, HttpSession session){

        User users = userService.selectByPrimaryKey(tid);
        session.setAttribute("user", users);
        return "redirect:/show/AdminAddUser";
    }
}
