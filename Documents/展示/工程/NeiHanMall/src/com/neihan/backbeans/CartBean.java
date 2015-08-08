package com.neihan.backbeans;

import java.util.ArrayList;
import java.util.List;

public class CartBean extends BaseBean{
	private List<CartItem> list=new ArrayList<CartItem>();
	public CartBean() {
		// TODO Auto-generated constructor stub
		List<Long> l=getCartItemManager().findMyCartItem(getUserManager().getUserID());
		for (int i = 0; i < l.size(); i++) {
			CartItem c1=new CartItem();
			int gid=getCartItemManager().getGid(l.get(i).intValue());
			c1.setAmount(Integer.toString(getCartItemManager().getCinum(l.get(i).intValue())));
			c1.setIamgeUrl("goodsimages/"+gid+"/1.jpg");
			c1.setName(getGoodsManager().getName(gid));
			c1.setPrice(Double.toString(getGoodsManager().getPrice(gid)));
			getList().add(c1);
		}
		
//		CartItem c2=new CartItem();
//		c2.setIamgeUrl("goodsimages/3000020/1.jpg");
//		c2.setName("打算打算打");
//		c2.setAmount("2");
//		c2.setPrice("99.00");
//		c2.setId("3333333");
//		list=new ArrayList<CartItem>();
//		
//		getList().add(c2);
	}
	public String addtoCart(){
		if(getCartItemManager().addtoCart(getUserManager().getUserID(), getGoodsManager().getGoodsID(), 1))
			return "addtoCart";
		else 
			return "falseToAdd";
	}
	public List<CartItem> getList() {
		return list;
	}
	public void setList(List<CartItem> list) {
		this.list = list;
	}
}
