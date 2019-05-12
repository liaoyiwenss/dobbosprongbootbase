package net.wanho.mapper;

import net.wanho.mapper.base.BaseMapper;
import net.wanho.pojo.Permission;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface PermissionMapper extends BaseMapper<Permission> {

    List<Permission> selectRoleandPermission(Long roleid);


    List<Map<String,Object>> selectAllPermission();
}