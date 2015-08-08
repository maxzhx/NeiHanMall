package com.neihan.backbeans;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.faces.application.FacesMessage;
import javax.faces.component.UIComponent;
import javax.faces.component.UIViewRoot;
import javax.faces.component.html.HtmlInputSecret;
import javax.faces.context.FacesContext;
import javax.faces.validator.ValidatorException;

public class RegisterBean extends BaseBean {
	private String userName;
	private String password;
	private String password_ensure;
	private String email;
	private String telephone;
	
	public String register() {
		if (getUserManager().register(userName, password, email, telephone))
			return "success";
		else 
			return "fail";
	}
	
	public void username_validate(FacesContext context, UIComponent component, Object value){
		String text;
		if (value != null){
			String str = (String) value;
			Pattern pat = Pattern.compile("^[a-zA-Z]\\w{5,17}$");
			Matcher mat = pat.matcher(str);
			if (!mat.find()) {
				text="用户名格式输入错误！\n用户名必须由6-18位的字母、数字或下划线组成。且为字母开头";
				FacesMessage message = new FacesMessage(
		                FacesMessage.SEVERITY_ERROR,   
		                text,   
		                text);   
				throw new ValidatorException(message);
			}
		}
	}
	
	public void ensure_validate(FacesContext context, UIComponent component, Object value){
		String text;
		if (value != null){
			String str = (String) value;
			FacesContext facesContext=FacesContext.getCurrentInstance();
			UIViewRoot viewRoot=facesContext.getViewRoot();
			HtmlInputSecret inputSecret=(HtmlInputSecret)viewRoot.findComponent("_id0:passWord");
			if (!str.equals(inputSecret.getValue())) {
				text="密码不一致!";
				FacesMessage message = new FacesMessage(
		                FacesMessage.SEVERITY_ERROR,   
		                text,   
		                text);   
				throw new ValidatorException(message);
			}
		}
	}
	
	public void password_validate(FacesContext context, UIComponent component, Object value){
		String text;
		if (value != null){
			String str = (String) value;
			Pattern pat = Pattern.compile("^[a-zA-Z]\\w{5,17}$");
			Matcher mat = pat.matcher(str);
			if (!mat.find()) {
				text="密码格式输入错误！\n密码必须由6-18位的字母、数字或下划线组成。且为字母开头";
				FacesMessage message = new FacesMessage(   
		                FacesMessage.SEVERITY_ERROR,   
		                text,   
		                text);   
				throw new ValidatorException(message);
			}
		}
	}
	
	public void email_validate(FacesContext context, UIComponent component, Object value){
		String text;
		if (value != null){
			String str = (String) value;
			Pattern pat = Pattern.compile("^[\\w-]+(\\.[\\w-]+)*@[\\w-]+(\\.[\\w-]+)+$");
			Matcher mat = pat.matcher(str);
			if (!mat.find()) {
				text="邮箱格式输入错误";
				FacesMessage message = new FacesMessage(   
		                FacesMessage.SEVERITY_ERROR,   
		                text,   
		                text);   
				throw new ValidatorException(message);
			}
		}
	}
	
	public void telephone_validate(FacesContext context, UIComponent component, Object value){
		String text;
		if (value != null){
			String str = (String) value;
			Pattern pat = Pattern.compile("\\d{11}$");
			Matcher mat = pat.matcher(str);
			if (!mat.find()) {
				text="手机号码输入错误";
				FacesMessage message = new FacesMessage(   
		                FacesMessage.SEVERITY_ERROR,   
		                text,   
		                text);   
				throw new ValidatorException(message);
			}
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

	public String getPassword_ensure() {
		return password_ensure;
	}

	public void setPassword_ensure(String password_ensure) {
		this.password_ensure = password_ensure;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
}
