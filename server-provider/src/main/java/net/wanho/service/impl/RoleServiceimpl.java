package net.wanho.service.impl;

import com.alibaba.dubbo.config.annotation.Service;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import net.wanho.mapper.RoleMapper;
import net.wanho.pojo.Role;
import net.wanho.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

@Service(interfaceClass = RoleService.class)
@Component
public class RoleServiceimpl implements RoleService {

    @Autowired
    private RoleMapper roleMapper;

    @Override
    public int deleteByPrimaryKey(Long tid) {
        return roleMapper.deleteByPrimaryKey(tid);
    }

    @Override
    public int insert(Role record) {
        return roleMapper.insert(record);
    }

    @Override
    public int insertSelective(Role record) {
        return roleMapper.insertSelective(record);
    }

    @Override
    public Role selectByPrimaryKey(Long tid) {
        return roleMapper.selectByPrimaryKey(tid);
    }

    @Override
    public int updateByPrimaryKeySelective(Role record) {
        return roleMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Role record) {
        return roleMapper.updateByPrimaryKey(record);
    }


    @Override
    public PageInfo<Role> selectallrole(Integer start, Integer limit, Integer navigatePages) {

        PageHelper.startPage(start, limit);

        List<Role> roles =  roleMapper.selectallrole();

        PageInfo<Role> pageinfo=new PageInfo<Role>(roles,navigatePages);

         return pageinfo;
    }
}
