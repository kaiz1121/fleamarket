package com.zk.flea.model;

public class OrderItem {

	private Order order;//订单
	private Product p;//商品
	private int buynum;//单个购买商品的数量

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public Product getP() {
		return p;
	}

	public void setP(Product p) {
		this.p = p;
	}

	public int getBuynum() {
		return buynum;
	}

	public void setBuynum(int buynum) {
		this.buynum = buynum;
	}

}
