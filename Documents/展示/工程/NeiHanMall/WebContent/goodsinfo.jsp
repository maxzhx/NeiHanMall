<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="head.css">
<link rel="stylesheet" type="text/css" href="css/common.css">
<link rel="stylesheet" type="text/css" href="css/detail.css">
<LINK rel=Stylesheet type=text/css href="css/lrtk.css">
<SCRIPT type=text/javascript src="js/index_solid.js"></SCRIPT>
<script>
function  locking()
{
   document.all.ly.style.display="block";
   document.all.ly.style.width=document.body.clientWidth;
   document.all.ly.style.height=document.body.clientHeight;
   document.all.Layer2.style.display='block';
}
function    Lock_CheckForm(theForm)
{
   document.all.ly.style.display='none';document.all.Layer2.style.display='none';
   return   false;
}
</script>
<title>内涵商城-商品详情</title>
</head>
<body>
<f:view>
<h:form>
<div id="header">
<div id=headlogo>
	<h:graphicImage url="sysimages/logo.jpg"></h:graphicImage>
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
</div>

<div id="container">  <!-- 总体居中 -->

<div  id="position">您现在的位置：<a href="http://www.dangdang.com/" target="_blank">内涵商城</a>  <a href="http://category.dangdang.com/all/?category_path=01.00.00.00.00.00" target="_blank">图书</a> > <span>商品详情</span></div> 


<hr size=1 style="color: blue;border-style:dotted;width:490">


<div id="picpri"> <!-- 图片和价格 -->

<div id="image"> <!-- 左边图片 -->
<DIV id=banner>

<DIV id=ifocus>

<DIV style="OVERFLOW: hidden" id=ifocus_pic>

<DIV style="OVERFLOW: hidden; TOP: 0px; LEFT: 0px" id=ifocus_piclist>

<UL><!--大图_start -->

  <LI><h:graphicImage alt="图片1" url="#{goodsBean.image1 }"/> </LI>

  <LI><h:graphicImage alt="图片2" url="#{goodsBean.image2 }"/></LI>

   <!--大图_end --></LI></UL>

</DIV>

<DIV id=ifocus_opdiv></DIV>

<DIV id=ifocus_tx>

<UL><!--小图列表_start -->

  <LI class=current>

  <LI class=normal>


 <!--小图列表_end --></LI></UL></DIV>

<DIV id=ifocus_btn>

<UL><!--小图_start -->

  <LI class=current><h:graphicImage alt="图片1" url="#{goodsBean.image1 }"></h:graphicImage> </LI>

  <LI class=normal><h:graphicImage alt="图片1" url="#{goodsBean.image2 }"/> </LI>


 <!--小图_end --></LI></UL>

</DIV></DIV></DIV></DIV>
</div>

<!-- 右边价格名字等信息 -->
<div id="side">
<div id="name">
<h:outputLabel>
   <h:outputText value="#{goodsBean.goodsName}"/>
</h:outputLabel>
</div>

<div id="price">
<h:outputLabel>
   商品号：<h:outputText value="#{goodsBean.no}"/>
</h:outputLabel>
</div>

          
<div id="author">价 格：<h:outputText value="#{goodsBean.price}"/></div>               
<div id="author">库 存：<h:outputText value="#{goodsBean.rest}"/></div>               
 
 
 <div id="ly" style="position: absolute; top: 0px; filter: alpha(opacity=60); background-color: #777;
z-index: 2; left: 0px; display: none;">
</div>
<!--          浮层框架开始         -->
<div id="Layer2" align="center" style="position: absolute; z-index: 3; left: expression((document.body.offsetWidth-540)/2); top: expression((document.body.offsetHeight-170)/10);
background-color: #fff; display: none;" >
   <table width="400" height="200" border="0" cellpadding="0" cellspacing="0" style="border: 0  solid #e7e3e7;border-collapse: collapse ;" >
<tr>
<td style="background-color: #73A2d6; color: #fff; padding-left: 4px; padding-top: 2px;
font-weight: bold; font-size: 12px;" height="10" valign="middle">
  <div align="right">
   <a href=JavaScript:; class="STYLE1" onclick="Lock_CheckForm(this);">[关闭]</a> 
  </div>
</td>
</tr>

<tr>
   <td style="margin-top:30px">
      <div>
      <ul>
       <li><a>你已经成功加入收藏夹</a>
       <li><a href="favorite.jsp">查看我的收藏夹</a></li>
       </ul>
   </div>
   </td>
</tr>
</table>
</div>
<!--  浮层框架结束-->
 
<span  id=button_b>
<h:commandButton value="加入购物车" action="#{cartBean.addtoCart}" image="sysimages/cart.jpg"></h:commandButton>
</span> 

<span  id=button>            
 <a id="DocPersonal_set" name="setting" href="javascript:locking()">收藏</a>

</span>

</div>


</div>


<!--商品详情和评价-->

<div id="description">

 <div class="menu1box">

  <ul id="menu1">

   <li class="hover" onmouseover="setTab(1,0)"><a href="#">商品详情</a></li>

   <li onmouseover="setTab(1,1)"><a href="#">商品评价</a></li>

 
  </ul>

 </div>

 <div class="main1box">

  <div class="main" id="main1">

   <ul class="block">
         
    <div id="row">
    <dl>
    </dl>
    <div><!--#include File="aa.txt"--></div> 
     <h:outputText value="#{goodsBean.description }"></h:outputText>
    </div>
   
   </ul>

   <ul><li>商品评价</li></ul>


  </div>

 </div>

</div>

<br />

<br />

</div>
<div id="footer">
    <dl>
    <dt><a href="#">关于我们</a>　||　<a href="#">产品目录</a>　||　<a href="#">联系我们</a>　||　<a href="#">友情链接</a>　||　<a href="#">反馈问题</a>　||　<a href="#">广告合作</a></dt>
      <dd>Copyright &copy; 2007 - 2010 aa25.cn   All Rights Reserved<br />
          标准之路  版权所有  京ICP备10007159号</dd>
    </dl>
</div>

</div>


</h:form>
</f:view>
</body>
</html>