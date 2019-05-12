package net.wanho.pojo.vo;

import net.wanho.pojo.Permission;

import java.util.List;


public class UpdateRoleVo {
    private Long roleid;
    private List<Permission> permissions;

    public Long getRoleid() {
        return roleid;
    }

    public void setRoleid(Long roleid) {
        this.roleid = roleid;
    }

    public List<Permission> getPermissions() {
        return permissions;
    }

    public void setPermissions(List<Permission> permissions) {
        this.permissions = permissions;
    }
}
