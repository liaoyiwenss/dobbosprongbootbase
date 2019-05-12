package net.wanho.pojo;

import java.io.Serializable;
import java.util.Date;

public class Permission implements Serializable {
    private Long tid;

    private Date createtime;

    private Long logicaldelete;

    private Date modifytime;

    private String permissionname;

    private Boolean ismenu;

    private Long pid;

    private String classname;

    private Integer seq;

    private String menuname;

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

    public String getPermissionname() {
        return permissionname;
    }

    public void setPermissionname(String permissionname) {
        this.permissionname = permissionname == null ? null : permissionname.trim();
    }

    public Boolean getIsmenu() {
        return ismenu;
    }

    public void setIsmenu(Boolean ismenu) {
        this.ismenu = ismenu;
    }

    public Long getPid() {
        return pid;
    }

    public void setPid(Long pid) {
        this.pid = pid;
    }

    public String getClassname() {
        return classname;
    }

    public void setClassname(String classname) {
        this.classname = classname == null ? null : classname.trim();
    }

    public Integer getSeq() {
        return seq;
    }

    public void setSeq(Integer seq) {
        this.seq = seq;
    }

    public String getMenuname() {
        return menuname;
    }

    public void setMenuname(String menuname) {
        this.menuname = menuname == null ? null : menuname.trim();
    }
}