<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的收藏</title>
<style type="text/css">
	.image{
	border:0; margin:0 auto;
	 padding:0; max-width:100px;
	  width:expression(this.width>100?"100px":this.width);
	   max-height:100px;
	    height:expression(this.height>100?"100px":this.height); 
	}
	
	#listBox{width:780px;margin:0 auto;}
	span{width:100px;height:120px}
	a{font-weight:bold;text-decoration:none;}
	a:hover{color:red}
	#collectlist{float:left;width:200px}
	#listhead{width:680px;background:#FFB90F;border-bottom:gray;font-weight:bold;color:white}
</style>
</head>
<body>
<f:view>
	<div id=listBox>
		<div id=listhead>我的收藏</div>
		<c:forEach items="${collectionList}" var="collect">
		<div><img src="/myapp${collect.picUrl}" class="image"><br><a href="${collect.url}">${collect.name}</a></div>
			
		</c:forEach>
		<div id=collectlist><img src="sysimages/jsfbook.jpg" class="image"><br><a href="#">jsf实战</a></div>
		<div id=collectlist><img src="sysimages/jsfbook.jpg" class="image"><br><a href="#">jsf实战</a></div>
		<div id=collectlist><img src="sysimages/jsfbook.jpg" class="image"><br><a href="#">jsf实战</a></div>
		<div id=collectlist><img src="sysimages/jsfbook.jpg" class="image"><br><a href="#">jsf实战</a></div>
		<div id=collectlist><img src="sysimages/jsfbook.jpg" class="image"><br><a href="#">jsf实战</a></div>
		<div id=collectlist><img src="sysimages/jsfbook.jpg" class="image"><br><a href="#">jsf实战</a></div>
		<div id=collectlist><img src="sysimages/jsfbook.jpg" class="image"><br><a href="#">jsf实战</a></div>
		<div id=collectlist><img src="sysimages/jsfbook.jpg" class="image"><br><a href="#">jsf实战</a></div>
		<div id=collectlist><img src="sysimages/jsfbook.jpg" class="image"><br><a href="#">jsf实战</a></div>
	</div>
</f:view>
</body>
</html>