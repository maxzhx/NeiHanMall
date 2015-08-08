package com.neihan.sessionbean;

import javax.ejb.Remote;

@Remote
public interface UserManagerRemote {
	public boolean register(String userName, String password, String email, String telephone);
	public boolean login(String userName, String password);
	
	public int getUserID();
	public boolean setUserID(int usid);
	
	public String getUsername(int usid);
	public String getEmail(int usid);
	public String getTelephone(int usid);
	
	public boolean setUsername(int usid,String username);
	public boolean setPassword(int usid,String password);
	public boolean setEmail(int usid,String email);
	public boolean setTelephone(int usid,String telephone);
	public int getID(String username);//根据用户名查找id
}
