<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<LINK rel=stylesheet type=text/css href="/css/register_121015.css">
<LINK rel=stylesheet type=text/css href="/css/unite_header_1129.css">
<title>注册</title>
 
<style type="text/css">
body{margin:0;}
#headlogo {width:150px;height:100px;float:left;boder:1;backgroud:#FF0000;margin:0;}
#headmenu {width:750px;height:100px;float:right;margin:0;}
#contentdiv{width:900px;margin:0 auto;}
#registerbox{width:900px;border: 2px solid #FFB90F;}
#registertable{margin:0 auto;width:900px;}
#zhanwei{width:900px;height:100px;}
#regdiv{width:600px;margin:0 auto;}
#headmenu ul{list-style:none;margin:0px;padding:60px;}
#headmenu ul li{float:right; padding: 0px 10px; height: 26px; line-height: 26px; border-bottom: 2px solid #CCC;margin:0px }
#headmenu ul li a { color: #000; text-decoration: none; display:block;background:url(sysimages/common.jpg);width:88px;text-align:center;font-weight:bold;}
#headmenu ul li a:hover {color:#FFF;background:url(sysimages/orange.jpg)}


 
</style>
</head>
<body>

<f:view>
	<h:form>
		<div id=contentdiv>
			<div id=headlogo>
				<h:graphicImage url="image/ddnewhead_logo.gif"></h:graphicImage>
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
			<div id=zhanwei>
			</div>
			<div id=registerbox>
			    <div id=regdiv>
					<h:panelGrid columns="3" cellpadding="5" cellspacing="3">
						<h:outputLabel for="userName">
							<h:outputText value="用户名:"></h:outputText>
						</h:outputLabel>
						<h:inputText id="userName" size="20" required="true" maxlength="20" value="#{registerBean.userName }" validator="#{registerBean.username_validate}">
					
						</h:inputText>
						<h:message for="userName" style="color:red"></h:message>
				
						<h:outputLabel for="passWord">
							<h:outputText value="密码:"></h:outputText>
						</h:outputLabel>
						<h:inputSecret id="passWord" size="20" maxlength="20" required="true" value="#{registerBean.password }" validator="#{registerBean.password_validate}">
						</h:inputSecret>
						<h:message for="passWord" style="color:red"></h:message>
				
						<h:outputLabel for="ensure">
							<h:outputText value="确认密码:"></h:outputText>
						</h:outputLabel>
						<h:inputSecret id="ensure" size="20" maxlength="20" required="true" value="#{registerBean.password_ensure }" validator="#{registerBean.ensure_validate}">
						</h:inputSecret>
						<h:message for="ensure" style="color:red"></h:message>
				
				
						<h:outputLabel for="email">
							<h:outputText value="邮箱:"></h:outputText>
						</h:outputLabel>
						<h:inputText id="email" size="20" required="true" maxlength="20" value="#{registerBean.email }" validator="#{registerBean.email_validate}">
						</h:inputText>
						<h:message for="email" style="color:red"></h:message>
				
						<h:outputLabel for="phoneNumber">
							<h:outputText value="电话:"></h:outputText>
						</h:outputLabel>
						<h:inputText id="phoneNumber" size="20" required="true" maxlength="20" value="#{registerBean.telephone }" validator="#{registerBean.telephone_validate}">
						</h:inputText>
						<h:message for="phoneNumber" style="color:red"></h:message>
				
						
						
						
				
						<h:outputLabel for="address">
							<h:outputText value="收货地址:"></h:outputText>
						</h:outputLabel>
						<h:inputText id="address" size="20" required="true" maxlength="20">
						</h:inputText>
						<h:message for="address"></h:message>
						<h:commandButton action="#{registerBean.register}" value="注册" image="image/regbutton.jpg"></h:commandButton>
					</h:panelGrid>
				</div>
		    </div>
</div>
</h:form>
</f:view>
</body>
</html>