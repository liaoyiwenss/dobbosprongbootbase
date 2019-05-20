package net.wanho.service.impl;

import com.alibaba.dubbo.config.annotation.Service;
import net.wanho.mapper.UserroleMapper;
import net.wanho.pojo.Userrole;
import net.wanho.service.UserRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Service(interfaceClass = UserRoleService.class)
@Component
public class UserRoleServiceimpl implements UserRoleService {

    @Autowired
    private UserroleMapper userroleMapper;

    @Override
    public int deleteByPrimaryKey(Long tid) {
        return userroleMapper.deleteByPrimaryKey(tid);
    }

    @Override
    public int insert(Userrole record) {
        return userroleMapper.insert(record);
    }

    @Override
    public int insertSelective(Userrole record) {
        return userroleMapper.insertSelective(record);
    }

    @Override
    public Userrole selectByPrimaryKey(Long tid) {
        return userroleMapper.selectByPrimaryKey(tid);
    }

    @Override
    public int updateByPrimaryKeySelective(Userrole record) {
        return userroleMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Userrole record) {
        return userroleMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public void deleteByuserId(Long userid) {
        userroleMapper.deleteByuserId(userid);
    }
}
