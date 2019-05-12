package net.wanho.mapper;

import net.wanho.mapper.base.BaseMapper;
import net.wanho.pojo.User;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserMapper extends BaseMapper<User> {

    User queryexUser(User user);

    List<User> queryallUser();
}