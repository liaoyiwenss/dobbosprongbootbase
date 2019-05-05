package net.wanho.pojo.base;

import java.io.Serializable;
import java.util.Date;

public class BaseEntity implements Serializable {
     Long tid;

     Date createtime;

     Long logicaldelete;

     Date modifytime;

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
}
