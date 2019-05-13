package net.wanho.service.impl;

import com.alibaba.dubbo.config.annotation.Service;
import net.wanho.mapper.UseraddressMapper;
import net.wanho.pojo.Useraddress;
import net.wanho.service.UseraddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Service(interfaceClass = UseraddressService.class)
@Component
public class UseraddressServiceimpl implements UseraddressService {


    @Autowired
    private UseraddressMapper useraddressMapper;

    @Override
    public int deleteByPrimaryKey(Long tid) {
        return useraddressMapper.deleteByPrimaryKey(tid);
    }

    @Override
    public int insert(Useraddress record) {
        return useraddressMapper.insert(record);
    }

    @Override
    public int insertSelective(Useraddress record) {
        return useraddressMapper.insertSelective(record);
    }

    @Override
    public Useraddress selectByPrimaryKey(Long tid) {
        return useraddressMapper.selectByPrimaryKey(tid);
    }

    @Override
    public int updateByPrimaryKeySelective(Useraddress record) {
        return useraddressMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Useraddress record) {
        return useraddressMapper.updateByPrimaryKey(record);
    }
}
