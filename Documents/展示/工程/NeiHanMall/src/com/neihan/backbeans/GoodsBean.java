package com.neihan.backbeans;

public class GoodsBean extends BaseBean{
	private String image1;
	private String image2;
	private String goodsName;
	private String price;
	private String rest;
	private String type;
	private String description;
	private String title;
	private String no;
	private int id;
	
	public GoodsBean(){
//		System.out.println("xzcx");
		getGoodsManager().setGoodsID(3000020);
		id=getGoodsManager().getGoodsID();
		no=Integer.toString(getGoodsManager().getNo(id));
		goodsName=getGoodsManager().getName(id);
		price=Double.toString(getGoodsManager().getPrice(id));
		rest=String.format("%d", getGoodsManager().getRest(id));
		description=getGoodsManager().getDescription(id);
		image1="goodsimages/"+id+"/1.jpg";
		image2="goodsimages/"+id+"/2.jpg";
	}
	public String getImage1() {
		return image1;
	}
	public void setImage1(String image1) {
		this.image1 = image1;
	}
	public String getImage2() {
		return image2;
	}
	public void setImage2(String image2) {
		this.image2 = image2;
	}
	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getRest() {
		return rest;
	}
	public void setRest(String rest) {
		this.rest = rest;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
}
