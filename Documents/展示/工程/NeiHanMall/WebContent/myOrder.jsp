<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的订单</title>
<style type="text/css">
	#listhead{width:680px;background:#FFB90F;border-bottom:gray;font-weight:bold;color:white}
	#listBox{width:780px;margin:0 auto;}
	#listBox span{width:120px;
	margin:0;padding:5px 10px 10px 10px;
	border:solid 2px gray;
	display:block;float:left;
	height:100px;
	border-left:none;border-right:none;border-top:none;
	color:red;
	font-weight:bold;
	}
	.image{
	border:0; margin:0;
	 padding:0; max-width:100px;
	  width:expression(this.width>100?"100px":this.width);
	   max-height:100px;
	    height:expression(this.height>100?"100px":this.height); 
	}
	a:hover{color:red;}
</style>
</head>
<body>
<f:view>
	<div id=listBox>
		<div id=listhead>我的订单</div>
		<c:forEach items="${orderlist}" var="order">	
			<span><img class="image" src="/myapp${order.imageUrl}"></span>
			<span>${order.name}</span>
			<span>${order.price}</span>
			<span>${order.state}</span>
			<span>${order.number}</span>
			<span><a href="#">删除</a><br><a href="#">付款</a></span>
		</c:forEach>
	</div>
	
</f:view>
</body>
</html>