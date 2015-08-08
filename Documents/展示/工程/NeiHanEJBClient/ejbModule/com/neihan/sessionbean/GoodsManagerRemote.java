package com.neihan.sessionbean;

import javax.ejb.Remote;

@Remote
public interface GoodsManagerRemote {
	
	public boolean addGoods(int no,String name,int rest,double price,
			String color,String size,String type,String description);
	public boolean removeGoods(int id);
	
	public int getGoodsID();
	public boolean setGoodsID(int goodsID);
	
	public String getName(int gid);
	public String getColor(int gid);
	public String getDescription(int gid);
	public int getNo(int gid);
	public double getPrice(int gid);
	public int getRest(int gid);
	public String getSize(int gid);
	public String getType(int gid);
	
	public boolean setName(int gid,String name);
	public boolean setColor(int gid,String color);
	public boolean setDescription(int gid,String description);
	public boolean setNo(int gid,int no);
	public boolean setPrice(int gid,double price);
	public boolean setRest(int gid,int rest);
	public boolean setSize(int gid,String size);
	public boolean setType(int gid,String type);
}