package com.neihan.backbeans;

public class CartItem {
	private String  iamgeUrl;
	private String  name;
	private String  price;
	private String  amount;
	CartItem(){}
	public String getIamgeUrl() {
		return iamgeUrl;
	}
	public void setIamgeUrl(String iamgeUrl) {
		this.iamgeUrl = iamgeUrl;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
}
