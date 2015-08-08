package com.neihan.backbeans;

public class LoginBean extends BaseBean  {
	private String userName;
	private String password;
	private String logMessage="未登录";
	private String logMessage2="注册";
	public String login() throws Exception {
		if (getUserManager().login(userName, password)){
			getUserManager().setUserID(getUserManager().getID(userName));
			System.out.println(getUserManager().getUserID());
			logMessage=userName;
			logMessage2="";
//			commandLink.setAction("j.jsp");
			return "success";
		}
		else {
//			String text="用户名或密码错误";
//			FacesMessage message = new FacesMessage(
//	                FacesMessage.SEVERITY_ERROR,   
//	                text,   
//	                text); 
//			throw new FacesMessage(text);
			return "fail";
		}
	}
	public String linkTo(){
//		System.out.println(logMessage.equals("未登录"));
		if (logMessage.equals("未登录")) {
			return "login";
		}
		else {
			return "myinfo";
		}
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getLogMessage() {
		return logMessage;
	}
	public void setLogMessage(String logMessage) {
		this.logMessage = logMessage;
	}
	public String getLogMessage2() {
		return logMessage2;
	}
	public void setLogMessage2(String logMessage2) {
		this.logMessage2 = logMessage2;
	}
}
