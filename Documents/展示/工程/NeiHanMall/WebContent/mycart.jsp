<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
	a{text-decoration:none;}
	a:hover{color:red;text-decoration:none;}
</style>
<script type="text/javascript">
	function addnumber(id)
	{
		var str="amount"+id;
		document.getElementById(str).value++;
		
	}
	function subnumber(id)
	{
		var str="amount"+id;
		if(document.getElementById(str).value>1)
		document.getElementById(str).value=document.getElementById(str).value-1;
		else alert("数量不可以小于1");
	}
	</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>购物车</title>
</head>
<body>
<f:view>
	<h:form>
	<div id=listBox>
		<div id=listhead>商品列表</div>
		<c:forEach items="${userCart}" var="info">
			
			<span><img class="image" src="/myapp${info.iamgeUrl}"></img></span>
			<span>${info.name}</span>
			<span>${info.price}</span>
			<span><a onclick="addnumber(${info.id})" href="#">+</a><input size="1" value="${info.amount}" id="amount${info.id}" type="text"><a href="#" onclick="subnumber(${info.id})">-</a></span>
			<span><a href="#">删除</a><br/><a href="#">收藏</a></span>
			
		</c:forEach>
		<span><img class="image" src="/myapp/image/jsfbook.jpg"></img></span>
			<span>JSF实战</span>
			<span>55.00元</span>
			<span><a onclick="addnumber()" href="#">+</a><input size="1" value="2" id="number" type="text"><a href="#" onclick="subnumber()">-</a></span>
			<span><a href="#">删除</a><br/><a href="#">收藏</a></span>
			
	</div>
	</h:form>
</f:view>
</body>
</html>