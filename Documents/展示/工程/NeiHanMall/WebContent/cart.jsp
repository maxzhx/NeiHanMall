<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的购物车</title>
<link rel="stylesheet" type="text/css" href="head.css">
<link rel="stylesheet" type="text/css" href="css/common.css">
<link rel="stylesheet" type="text/css" href="css/cart.css">
<SCRIPT type=text/javascript src="js/index_solid.js"></SCRIPT>
<style type="text/css">
	
</style>
</head>
<body>
<f:view>
<h:form>

<div id="header">
<div id=headlogo>
	<h:graphicImage url="sysimages/logo.jpg"></h:graphicImage>
</div>
</div>

<hr size=0 style="color:#EE7621;border-style:solid;width:490">

<div id="wrapper">
<div id="box">

     <div> 
       <h:graphicImage url="sysimages/mycart1.jpg"></h:graphicImage>
    </div>
    
    <div id=listhead>商品列表</div>
    
         
        <div id=listbox>
             
<h:dataTable value="#{cartBean.list}" var="air">
<h:column>
<h:graphicImage styleClass="image" url="#{air.iamgeUrl}"/>
</h:column>
<h:column>
<h:outputText value="#{air.price}" />
</h:column>
<h:column>
<h:outputText value="#{air.name}" />
</h:column>
<h:column>
<h:outputText value="#{air.amount}" />
</h:column>

</h:dataTable>			
		
        </div>
   <!-- 
    <div id="shopping_titile">
	<ul>
		<li>商品名称</a></li>
		<li>价格</li>
		<li>数量</li>
		<li>操作</li>
	</ul>
	</div>
    --> 
 
	<div>
	   <h:commandButton value="清空购物车" action="" image="sysimages/qingkonggouwuche.jpg"/>
	</div>
	
    <div id="gouwu">
      <span id=spancss><h:commandButton value="继续购物" action="header" image="sysimages/jixugouwu.jpg"/></span> 
      <span >  <h:commandButton value="结算" action="success" image="sysimages/jiesuan1.jpg"/></span>
    </div>

</div>

<!-- 
<h:dataTable>
  <h:column>
  </h:column>
</h:dataTable>
<div id="name">
<h:outputLabel>
   <h:outputText value="#{goods.name}"/>
</h:outputLabel>
</div>
-->

</div>

<!-- 
<div id="footer">
    <dl>
    <dt><a href="#">关于我们</a>　||　<a href="#">产品目录</a>　||　<a href="#">联系我们</a>　||　<a href="#">友情链接</a>　||　<a href="#">反馈问题</a>　||　<a href="#">广告合作</a></dt>
      <dd>Copyright &copy; 2007 - 2010 aa25.cn   All Rights Reserved<br />
          标准之路  版权所有  京ICP备10007159号</dd>
    </dl>
</div>
 -->
 

</h:form>
</f:view>
</body>
</html>