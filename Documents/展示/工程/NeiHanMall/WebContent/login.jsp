<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
<link rel="stylesheet" type="text/css" href="head.css">
<style type="text/css">
	#loginbox{width:300px;float:left;margin:0;height:400px;}
	#imagebox{width:500px;float:left;margin:0;}
	#logincontent{width:900px;margin:0 auto;}
	a{color:blue;}
	a:hover{color:red;}
</style>
</head>
<body>
<f:view>
	<h:form>
		<div id=contentdiv>
			<div id=headlogo>
				<h:graphicImage url="sysimages/logo.jsp"></h:graphicImage>
			</div>
			<div id=headmenu>
				<ul>
					<li><a href="#">礼品卡</a></li>
					<li><a href="myOrder.jsp">我的订单</a></li>
					<li><a href="myInfo.jsp">我的信息</a></li>
					<li><a href="myCart.jsp">购物车</a></li>
					<li><a href="homePage.jsp">首页</a></li>
				</ul>
			</div>
			<div id=logincontent>
				<div id=imagebox><h:graphicImage url="sysimages/imagebox.jpg"></h:graphicImage></div>
				<div id=loginbox>
				<div>
						<h:panelGrid columns="3" cellpadding="5" cellspacing="3">
							<h:inputHidden></h:inputHidden>
							<h:inputHidden></h:inputHidden>
							<h:inputHidden></h:inputHidden>
							<h:inputHidden></h:inputHidden>
							<h:inputHidden></h:inputHidden>
							<h:inputHidden></h:inputHidden>
							<h:inputHidden></h:inputHidden>
							<h:inputHidden></h:inputHidden>
							<h:inputHidden></h:inputHidden>
							<h:outputLabel for="userName">
								<h:outputText value="用户名:"></h:outputText>
							</h:outputLabel>
							<h:inputText id="userName" size="20" required="true" maxlength="20" value="#{loginBean.userName }">
								<f:validateLength minimum="5" maximum="20"></f:validateLength>
						
							</h:inputText>
							<h:message for="userName"></h:message>
							<h:inputHidden></h:inputHidden>
							<h:inputHidden></h:inputHidden>
							<h:inputHidden></h:inputHidden>
							<h:inputHidden></h:inputHidden>
							<h:inputHidden></h:inputHidden>
							<h:inputHidden></h:inputHidden>
							<h:inputHidden></h:inputHidden>
							<h:inputHidden></h:inputHidden>
							<h:inputHidden></h:inputHidden>
							
							<h:outputLabel for="passWord">
								<h:outputText value="密码:"></h:outputText>
							</h:outputLabel>
							<h:inputSecret id="passWord" size="20" maxlength="20" required="true" value="#{loginBean.password }">
								<f:validateLength minimum="6" maximum="20"></f:validateLength>
							</h:inputSecret>
							<h:message for="passWord"></h:message>
							<h:commandButton action="#{loginBean.login}" value="登录" image="sysimages/login.jpg"></h:commandButton>
							
							
				</h:panelGrid>
				</div>
				<a href="register.jsp">立即注册</a>
			</div>
		</div>
		</div>
	</h:form>
</f:view>
</body>
</html>