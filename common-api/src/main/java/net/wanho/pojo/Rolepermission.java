package net.wanho.pojo;

import java.io.Serializable;
import java.util.Date;

public class Rolepermission implements Serializable {
    private Long tid;

    private Date createtime;

    private Long logicaldelete;

    private Date modifytime;

    private Long roleid;

    private Long permissionid;

    public Long getTid() {
        return tid;
    }

    public void setTid(Long tid) {
        this.tid = tid;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public Long getLogicaldelete() {
        return logicaldelete;
    }

    public void setLogicaldelete(Long logicaldelete) {
        this.logicaldelete = logicaldelete;
    }

    public Date getModifytime() {
        return modifytime;
    }

    public void setModifytime(Date modifytime) {
        this.modifytime = modifytime;
    }

    public Long getRoleid() {
        return roleid;
    }

    public void setRoleid(Long roleid) {
        this.roleid = roleid;
    }

    public Long getPermissionid() {
        return permissionid;
    }

    public void setPermissionid(Long permissionid) {
        this.permissionid = permissionid;
    }
}