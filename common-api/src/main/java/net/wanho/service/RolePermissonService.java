package net.wanho.service;

import net.wanho.pojo.Rolepermission;
import net.wanho.service.base.BaseService;

public interface RolePermissonService extends BaseService<Rolepermission> {

    public void deleteByroleid(Long roleid);
    public void deleteBypermissionid(Long permissionid);
}
