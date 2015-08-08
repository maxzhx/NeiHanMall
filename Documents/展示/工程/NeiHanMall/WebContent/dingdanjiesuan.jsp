<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>订单结算-内涵商城</title>
<link rel="stylesheet" type="text/css" href="css/head.css">
<link rel="stylesheet" type="text/css" href="css/common.css">
<link rel="stylesheet" type="text/css" href="css/dingdanjiesuan.css">
</head>
<body>
<f:view>
<div id="header">
<div id=headlogo>
	<h:graphicImage url="sysimages/ddnewhead_logo.gif"></h:graphicImage>
</div>
</div>

<hr size=0 style="color:#EE7621;border-style:solid;width:490">

<div id="wrapper">
  <div id="box">
  
     <div>
     <h:graphicImage url="sysimages/querendingdanxinxi.jpg"></h:graphicImage>
     </div>
     
     <div>请确认以下信息，然后提交订单</div>
     
     <div id="info_box">
     <div id="info_inbox">
     
         <div>
             <span id="font_bold">收货人信息</span>
             <span><a href="#">[修改]</a></span>         
         </div>
         
         <div>
            <h:outputLabel>
               <h:outputText value="周匀嘉，中国，福建，厦门市，思明区"></h:outputText>
            </h:outputLabel>
         </div>
         
         <hr size=0 style="color:#EEE5DE;border-style:solid;width:290">
         
         <div>
             <span id="font_bold">送货方式</span>
             <span><a href="#">[修改]</a></span>          
         </div>
         
         <div>
           <h:outputLabel>
               <h:outputText value="普通快递送货上门，送货时间不限"/>
           </h:outputLabel>
         </div>
         
         <hr size=0 style="color:#EEE5DE;border-style:solid;width:290">
         
         <div>
             <span id="font_bold">付款方式</span>
             <span><a href="#">[修改]</a></span>  
         </div>
         
         <div>
             <h:outputLabel>
                 <h:outputText value="网上支付"/>
             </h:outputLabel>
         </div>
    
         <hr size=0 style="color:#EEE5DE;border-style:solid;width:290">
    
         <div>
             <span id="font_bold">商品清单</span>
             <span><a href="#">[修改]</a></span>         
         </div>
         
         <div  id="modify">
             <span><a href="cart.jsp">返回修改购物车</a></span>  
         </div>
         
         
          <div id=listbox>      
             
           
		
              <span>商品名称</span>
			  <span>价格</span>
		      <span>数量</span>
			  <span>小计</span>
												 
			 
			<span>生死疲劳</span>
			<span>28.00元</span>
			<span>1</span>
			<span>￥28.00</span>
			
        </div>
        
        <div id=money>商品金额总计:￥28.00</div>
        <div id=moneyall>您需支付:￥28.00</div>
      
   
        <div id="tijiao">
              <h:commandButton value="提交订单" image="sysimages/tijiaodingdan.jpg" action="header"/>
        </div>
    
    </div>   
     
    </div> 
    
 </div>
 </div>
     



</f:view>
</body>
</html>