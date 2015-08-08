<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>成功加入购物车-内涵商城</title>
<link rel="stylesheet" type="text/css" href="css/head.css">
<link rel="stylesheet" type="text/css" href="css/common.css">
<link rel="stylesheet" type="text/css" href="css/docart.css">
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
 <!--购物车添加成功-->
    <div id="left">
    
        <div id="l_image">
	     <h:graphicImage url="sysimages/gou.jpg"></h:graphicImage>
        </div>
      
       <div id="l_name">   
       <h:outputLink value="goodsinfo.jsp">   <!-- 为什么字体颜色改不了啊啊 -->
         <h:outputText value="#{goodsBean.goodsName} 成功加入购物车！"/>
        </h:outputLink>      
        </div>
        
        
    </div>
    <!--//购物车添加成功-->
    
    <div id="right">
    
       <div id="right_box">
       
       <div> </div>
       
       <div> <h:outputText value="商品金额： #{goodsBean.price}"/>    </div>
       <div id="jixugouwu">
               <h:commandButton value="继续购物" image="sysimages/jixugouwu.jpg" action="header"/>
       </div>
       
       <div id="jiesuan">
             <h:commandButton value="查看购物车并结算" image="sysimages/jiesuan.jpg" action="cart"/>
       </div>
       
       </div>
      
    </div>
    
    </div>
</div>

          
          



</h:form>
</f:view>
</body>
</html>