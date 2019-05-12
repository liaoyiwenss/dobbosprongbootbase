package net.wanho.pojo;

import java.io.Serializable;
import java.util.Date;

public class Orderdetail implements Serializable {
    private Long tid;

    private Date createtime;

    private Long logicaldelete;

    private Date modifytime;

    private Long orderid;

    private Long productid;

    private Long quantity;

    private Float cost;

    private Product product;

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

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

    public Long getOrderid() {
        return orderid;
    }

    public void setOrderid(Long orderid) {
        this.orderid = orderid;
    }

    public Long getProductid() {
        return productid;
    }

    public void setProductid(Long productid) {
        this.productid = productid;
    }

    public Long getQuantity() {
        return quantity;
    }

    public void setQuantity(Long quantity) {
        this.quantity = quantity;
    }

    public Float getCost() {
        return cost;
    }

    public void setCost(Float cost) {
        this.cost = cost;
    }
}