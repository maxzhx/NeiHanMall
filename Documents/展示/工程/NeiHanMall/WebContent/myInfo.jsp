<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的信息</title>
<link rel="stylesheet" type="text/css" href="head.css">
<style type="text/css">
	#leftInfoBox{width:150px;float:left;}
	#imageBox{margin:0 auto;border:solid 2px #D1D1D1;border-right:none} 
	#rightInfoBox{width:800px;margin-left:150px;border:solid 2px #D1D1D1}
	#iframestyle{margin:0 auto;}
	#liBox{margin:0 auto;padding-left:1px;}
	#liBox {list-style:circle;display:block}
	#liBox li{margin-left:0;margin:0 auto;display:block;background:url(sysimages/orangeblock.jpg)}
	#liBox li a{display:block;color:white;font-weight:bold;padding-top:10px;
	font-size:15px;width:80%;padding-left:10%;padding-right:10%;margin:0 auto;border:1px solid;text-decoration:none}
	#liBox li a:hover{background:#FFB90F;color:red;background:url(sysimages/orangeblock.jpg);}
	.image{
	border:0; margin:0;
	 padding:0; max-width:100px;
	  width:expression(this.width>100?"100px":this.width);
	   max-height:100px;
	    height:expression(this.height>100?"100px":this.height); 
	}
	.myImageStyle
	{
		margin:0 auto;
		display:block;
		
	}
</style>
</head>
<body>
<f:view>
	<div id=contentdiv>
			<div id=headlogo>
				<h:graphicImage url="sysimages/logo.jpg"></h:graphicImage>
			</div>
			<div id=headmenu>
				<ul>
					<li><a href="#">礼品卡</a></li>
					<li><a href="myOrder.jsp">我的订单</a></li>
					<li><a href="myInfo.jsp">我的信息</a></li>
					<li><a href="mycart.jsp">购物车</a></li>
					<li><a href="homepage.jsp">首页</a></li>
				</ul>
			</div>
			<div id=zhanwei></div>
			
			<div id=leftInfoBox>
				<div id=imageBox><h:graphicImage url="sysimages/zhenxiang.jpg" styleClass="myImageStyle"></h:graphicImage></div>
				
					<ul id="liBox">
						
						<li><a href="editInfo.jsp" target="mainframe">编辑信息</a></li>
						
						<li><a href="mycart.jsp" target="mainframe">我的购物车</a></li>
						<li><a href="myCollection.jsp" target="mainframe">我的收藏</a></li>
						<li><a href="myOrder.jsp" target="mainframe">我的订单</a></li>
						<li><a href="#">私 信</a></li>
					</ul>
				
			</div>
			<div id=rightInfoBox >
			  <iframe  name="mainframe" width="790px" height="600px" id=iframestyle frameborder="0" ></iframe>
			</div>
	</div>
</f:view>
</body>
</html>