package net.wanho.pojo.vo;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class ShoppingCart implements Serializable {

	private   List<ShoppingCartItem>  items=new  ArrayList<ShoppingCartItem>();
	private   double   sum;
	public List<ShoppingCartItem> getItems() {
		return items;
	}
	public void setItems(List<ShoppingCartItem> items) {
		this.items = items;
	}
	public double getSum() {
		return sum;
	}
	public void setSum(double sum) {
		this.sum = sum;
	}
	public ShoppingCart(List<ShoppingCartItem> items, double sum) {
		super();
		this.items = items;
		this.sum = sum;
	}
	public ShoppingCart() {
		super();
	}
	
	
}
