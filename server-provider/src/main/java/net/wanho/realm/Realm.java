package net.wanho.realm;

import net.wanho.pojo.Permission;
import net.wanho.pojo.Role;
import net.wanho.pojo.User;
import net.wanho.service.UserService;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class Realm extends AuthorizingRealm {


    private static User user;

    @Autowired
    private UserService userService;
    //    授权
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        List<Role> userrole = user.getRoles();
        List<String> roles = userrole.stream().map(Role:: getRolename).collect(Collectors.toList());
        List<String> permissions=new ArrayList<>();

        for (Role role:
                userrole) {
        List<String> pm = role.getPermissions().stream().map(Permission:: getPermissionname).collect(Collectors.toList());
        permissions.addAll(pm);
        }

        SimpleAuthorizationInfo simpleAuthorizationInfo = new SimpleAuthorizationInfo();
        simpleAuthorizationInfo.addRoles(roles);
        simpleAuthorizationInfo.addStringPermissions(permissions);

        return simpleAuthorizationInfo;
    }

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {

        String username = (String) authenticationToken.getPrincipal();
        String password = new String((char[]) authenticationToken.getCredentials());

        User users=new User();
        users.setLoginname(username);
        User user = userService.queryexUser(users);
        if (user == null) {
            throw new RuntimeException("用户不存在");
        }
        String newPwd = userService.shiroMD5(password, user.getSalt());

        if (!newPwd .equals( user.getPassword())) {
            throw new IncorrectCredentialsException("账号或者密码不正确");
        }

        Realm.user=user;

        return new SimpleAuthenticationInfo(user.getLoginname(),user.getPassword(), ByteSource.Util.bytes(user.getSalt()),getName());
    }
}
