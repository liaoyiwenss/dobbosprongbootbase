package net.wanho.pojo;

import java.io.Serializable;
import java.util.Date;

public class Userrole implements Serializable {
    private Long tid;

    private Date createtime;

    private Long logicaldelete;

    private Date modifytime;

    private Long userid;

    private Long roleid;

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

    public Long getUserid() {
        return userid;
    }

    public void setUserid(Long userid) {
        this.userid = userid;
    }

    public Long getRoleid() {
        return roleid;
    }

    public void setRoleid(Long roleid) {
        this.roleid = roleid;
    }
}