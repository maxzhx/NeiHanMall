package com.neihan.sessionbean;

import java.util.List;

import javax.ejb.Remote;

@Remote
public interface CartItemManagerRemote {
	public boolean addtoCart(int usid, int gid, int cinum);
	public boolean removefromCart(int usid, int gid);
	public List<Long> findMyCartItem(int usid);
	public int getGid(int ciid);
	public int getCinum(int ciid);
}
