package net.wanho.service;

import com.github.pagehelper.PageInfo;
import net.wanho.pojo.User;
import net.wanho.service.base.BaseService;

public interface UserService extends BaseService<User> {

    User queryexUser(User user);

    String shiroMD5(String password, String salt);

    public User addUser(User user);

    PageInfo<User> queryallUser(Integer start, Integer limit, Integer navigatePages);
}
