<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%><%@taglib
	uri="http://java.sun.com/jsf/core" prefix="f"%><%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的收藏--内涵电子商城</title>
<link rel="stylesheet" type="text/css" href="head_zy.css">
<link rel="stylesheet" type="text/css" href="css/fav.css">

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

<style type="text/css">  
ul{list-style:none;}
#container { width:1100px; margin:0 auto;}
#head{width:80%;height:100px;float:left;}
#head ul{list-style:none;margin:0px;padding:60px;}
#head ul li{float:right; padding: 0px 10px; height: 26px; line-height: 26px; border-bottom: 2px solid #CCC;margin:0px }
#head ul li a { color: #000; text-decoration: none; display:block;background:url(sysimages/common.jpg);width:88px;text-align:center;font-weight:bold;}
#head ul li a:hover {color:#FFF;background:url(sysimages/orange.jpg)}
#position {width:80%; margin:0;}
#main { overflow:auto; zoom:1; margin-bottom:8px;}
</style>

</head>

<body>
<f:view>
<h:form>

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
<div id=headlogo>
	<h:graphicImage url="sysimages/logo.jpg"></h:graphicImage>
</div>


<div id=head>
	<ul>
		<li><a href="#">礼品卡</a></li>
		<li><a href="#">我的订单</a></li>
		<li><a href="#">我的信息</a></li>
		<li><a href="#">购物车</a></li>
		<li><a href="firstpage.jsp">首页</a></li>
	</ul>
</div>


<div id="container">  <!-- 总体居中 -->
  <div  id="position">您现在的位置：<a href="firstpage.jsp" target="_blank">内涵商城</a> > 
    <a href="#" target="_blank">我的当当</a> > 
    <span>我的收藏</span>
     <div id="search" style="margin-top:10px">
        <input id="q" name="q" accesskey="s" size="40" />  
        <input class="image_button" id="image_button" type="submit" value="" />
         
</div>
  </div>  
<hr size=0 style="color: rgb(255,153,51);border-style:solid;width:490">

<div class="mydnew_sidel">
   <div class="mydnew_sidel_title"> 
    <h3>常用链接</h3><a id="DocPersonal_set" name="setting" href="javascript:locking()">设置</a>
   </div>
   
   <div class="mydnew_sidel_title"> 
	 <h3>订单管理</h3> 
   </div> 
   <ul class="my_content"> 
	<li><a class="" name=" "  href="#"  target="_parent">我的订单</a></li>
    <li><a class="" name="mypaymenthistory" href="#" target="_parent">订单支付历史</a></li>
    <li class=""><a name="re_list" href="#" target="_parent">申请/查询退换货</a></li>
   </ul> 
   
   <div class="mydnew_sidel_title"> 
	 <h3>我的商品</h3> 
   </div> 
   <ul class="my_content"> 
	 <li><a class="" name="boughtcommodity" href="#" target="_parent">已购商品</a></li>
     <li><a href="#" class="current">我的收藏</a></li>
   </ul> 
   
   
   <div class="mydnew_sidel_title"> 
	  <h3>账户管理</h3>
   </div> 
   <ul class="my_content"> 
	   <li><a class="" name="mycoupons" href="#" target="_parent">礼券/礼品卡</a></li>
       <li><a class="" name="safe_center" href="#" target="_parent">安全中心<img src="http://img4.ddimg.cn/00012/2010/new.gif" style="_margin-top:0px;"  /></a></li>
       <li><a class="" name="points_index_list" href="#" target="_parent">我的积分</a></li>
       <li><a class="" name="myaddress" href="#" target="_parent">收货地址簿</a></li>
       <li><a class="" name="mybalance" href="#" target="_parent">账户余额</a></li>
       <li><a class="" name="profileleft" href="#" target="_parent">编辑个人档案</a></li>
       <li><a class="" name="mysms" href="#" target="_parent">消息中心</a></li>
  </ul>
  
  
	<div class="mydnew_sidel_title"> 
		<h3>我的社区</h3> 
	</div> 
       <ul class="my_content"> 
		  <li><a class="" name="myreview" href="#" target="_parent">我的评价/晒单</a></li>
         <li><a class="" name="mybooklist" href="#" target="_parent">我的书单</a></li>
         <li><a class="" name="mybookshelf" href="#" target="_parent">我的书架</a></li>
         <li><a class="" name="myinteresting" href="#" target="_parent">我的关注</a></li>
         <li><a class="" name="mymessage" href="#" target="_parent">我的留言板</a></li>
         <li class=""><a name="mybookmark" href="#" target="_parent">我的书签</a></li>
     </ul> 
     
</div>


 <div class="main_right" id="__main_right">
	<div class="temp_navi" id="__wish_search">
        <h2><b>我的收藏</b><span>(共有<b id="show_wish_count">3</b>个商品)</span></h2>
        <form method="get" name="wish_search_form" action="df" ">
        <span class="temp_navi_search">
            <input name="wish_searchkey" id="wish_searchkey" type="text" size="50" onfocus="if(this.value!='输入商品名称'){this.style.color='#404040'}else{this.value='';this.style.color='#404040'}" onblur="if(this.value==''){this.value='输入商品名称';this.style.color='#878787'}" onkeydown="this.style.color='#404040'" value="输入商品名称"/>
            <button type="submit" >在收藏中查询</button>
        </span>
        </form>
	</div>
	<hr size=1 style="color: blue;border-style:dotted;width:490">
	<div class="ddfavorites_sort" id="__classify_tag" style="margin:0 auto">      
      <span class=' '>分类：<a href='0_0_0.aspx?' class='now'>全部</a></span> 
    </div>
   
   <div id="view">
    <span>
       <h:commandButton value="全部商品" action="header" image="sysimages/quanbu.jpg"/>
     </span>
            <ul >
              <li>        
              <span>
                 <a href="#" ><img src="sysimages/buy.jpg"/></a>
                 <a href="#" >删除</a>         
              </span>
              
              <a href="#"><image src="sysimages/books/book1.jpg" alt="产品名称" width="120" height="100" /></a>
      
              </li>
              
             <li>
              <span><a href="#"><img src="sysimages/buy.jpg"/></a>
               <a href="#" >删除</a>
               </span>
              <a href="#"><image src="sysimages/books/book2.jpg" alt="产品名称" width="120" height="100" /></a>
              </li>
              
              <li>
              <span>
                <a href="#"><img src="sysimages/buy.jpg"/></a>
                <a href="#" >删除</a>
                </span>
              <a href="#"><image src="sysimages/books/book3.jpg" alt="产品名称" width="120" height="100" /></a>
              </li>
            </ul>
    
  </div>
</div>




</div>
 
</h:form>
</f:view>
</body>
</html>         