package net.wanho.pojo.vo;

import net.wanho.pojo.Product;

import java.io.Serializable;

public class ShoppingCartItem implements Serializable {

	private Product product;
    private     Long    quantity;
    private     Float     cost;
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	
	public Long getQuantity() {
		return quantity;
	}
	public void setQuantity(Long quantity) {
		this.quantity = quantity;
	}
	public float getCost() {
		return cost;
	}
	public void setCost(float cost) {
		this.cost = cost;
	}
	public ShoppingCartItem(Product product, Long quantity, Float cost) {
		super();
		this.product = product;
		this.quantity = quantity;
		this.cost = cost;
	}
	
	
	
	
}
