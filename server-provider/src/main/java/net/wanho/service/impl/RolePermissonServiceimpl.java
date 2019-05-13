package net.wanho.service.impl;

import com.alibaba.dubbo.config.annotation.Service;
import net.wanho.mapper.RolepermissionMapper;
import net.wanho.pojo.Rolepermission;
import net.wanho.service.RolePermissonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Service(interfaceClass = RolePermissonService.class)
@Component
public class RolePermissonServiceimpl implements RolePermissonService {

    @Autowired
    private RolepermissionMapper rolepermissionMapper;


    @Override
    public int deleteByPrimaryKey(Long tid) {
        return rolepermissionMapper.deleteByPrimaryKey(tid);
    }

    @Override
    public int insert(Rolepermission record) {
        return rolepermissionMapper.insert(record);
    }

    @Override
    public int insertSelective(Rolepermission record) {
        return rolepermissionMapper.insertSelective(record);
    }

    @Override
    public Rolepermission selectByPrimaryKey(Long tid) {
        return rolepermissionMapper.selectByPrimaryKey(tid);
    }

    @Override
    public int updateByPrimaryKeySelective(Rolepermission record) {
        return rolepermissionMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Rolepermission record) {
        return rolepermissionMapper.updateByPrimaryKey(record);
    }

    @Override
    public void deleteByroleid(Long roleid) {
        rolepermissionMapper.deleteByroleid(roleid);
    }

    @Override
    public void deleteBypermissionid(Long permissionid) {
        rolepermissionMapper.deleteBypermissionid(permissionid);
    }
}
