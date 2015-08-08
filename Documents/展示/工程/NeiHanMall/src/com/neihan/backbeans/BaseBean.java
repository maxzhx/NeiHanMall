package com.neihan.backbeans;

import java.util.Properties;

import javax.naming.InitialContext;
import javax.naming.NamingException;

import com.neihan.sessionbean.CartItemManagerRemote;
import com.neihan.sessionbean.GoodsManagerRemote;
import com.neihan.sessionbean.OrderItemManagerRemote;
import com.neihan.sessionbean.OrderManagerRemote;
import com.neihan.sessionbean.UserManagerRemote;

public class BaseBean {
	public static InitialContext getContext() {
		InitialContext ctx = null;
		try {
			Properties env = new Properties();
			//载入jboss的SPI相关参数,包括初始上下文工厂，服务URL，等等
		    env.load(BaseBean.class.getClassLoader().getResourceAsStream("jbossjndi.properties"));
		   //通过JNDI api 初始化上下文
		    ctx = new InitialContext(env);
		} catch (Exception exp) {
			exp.printStackTrace();
		}
	  return ctx;
	}
	
	public UserManagerRemote getUserManager() {
		InitialContext context = getContext();
		UserManagerRemote ret = null;
		try {
			ret=(UserManagerRemote) context.lookup("/NeiHanEAR/UserManager/remote");
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ret;
	}
	
	public GoodsManagerRemote getGoodsManager(){
		InitialContext context = getContext();
		GoodsManagerRemote ret = null;
		try {
			ret=(GoodsManagerRemote) context.lookup("/NeiHanEAR/GoodsManager/remote");
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ret;
	}
	
	public CartItemManagerRemote getCartItemManager(){
		InitialContext context = getContext();
		CartItemManagerRemote ret = null;
		try {
			ret=(CartItemManagerRemote) context.lookup("/NeiHanEAR/CartItemManager/remote");
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ret;
	}
	
	public OrderManagerRemote getOrderManagerManager(){
		InitialContext context = getContext();
		OrderManagerRemote ret = null;
		try {
			ret=(OrderManagerRemote) context.lookup("/NeiHanEAR/OrderManagerManager/remote");
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ret;
	}
	
	public OrderItemManagerRemote getOrderItemManagerManager(){
		InitialContext context = getContext();
		OrderItemManagerRemote ret = null;
		try {
			ret=(OrderItemManagerRemote) context.lookup("/NeiHanEAR/OrderItemManagerManager/remote");
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ret;
	}
}
