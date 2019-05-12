package net.wanho.mapper;

import net.wanho.mapper.base.BaseMapper;
import net.wanho.pojo.Rolepermission;
import org.springframework.stereotype.Repository;

@Repository
public interface RolepermissionMapper extends BaseMapper<Rolepermission> {

    public void deleteByroleid(Long roleid);
    public void deleteBypermissionid(Long permissionid);
}