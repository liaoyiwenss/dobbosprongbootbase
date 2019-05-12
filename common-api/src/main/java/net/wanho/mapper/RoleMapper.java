package net.wanho.mapper;

import net.wanho.mapper.base.BaseMapper;
import net.wanho.pojo.Role;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RoleMapper extends BaseMapper<Role> {
    public List<Role> selectUserandRole(Long userid);

    public List<Role> selectallrole();
}