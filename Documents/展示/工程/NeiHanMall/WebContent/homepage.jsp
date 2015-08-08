<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%><%@taglib
	uri="http://java.sun.com/jsf/core" prefix="f"%><%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>内涵商城-我的最爱</title>
<link rel="stylesheet" type="text/css" href="head_zy.css">
<LINK rel=Stylesheet type=text/css href="css/lrtk_zy.css">
<SCRIPT type=text/javascript src="js/index_solid.js"></SCRIPT>
<style type="text/css">  

 ul{list-style:none;}

/*main*/
#maincontent { overflow:auto; zoom:1; margin-bottom:8px;}
#items{float:left;width:220px;height:820px;border:solid;border-color:red;border-width:2px;padding-top:13px;padding-left:10px;margin-left:20px;margin-bottom:20px;}
#items dl{ list-style: none; margin: 0px; padding: 4px;}
#items span{font-family: 幼圆 ; font-size: 25px;font-weight:bold; color:rgb(255,102,0);}
#items dl dt{font-family: 楷体; font-size: 20px;font-weight:bold; line-height: 1.5;color:rgb(0,0,255);text-decoration: none;padding-left:20px;}
#items dl dt:hover{color: #F00;cursor:pointer;}
#items dl dt dd{color:#233;height: 26px; line-height: 26px;}
a{font-family: 楷体 ; font-size: 18px;line-height: 1.5;color: #000;}
a:hover{color:rgb(255,102,0);}

#side { float:right; width:800px; height:820px;padding-bottom:5px;}
#side-top{float:right; width:800px; height:400px;}
#side-bottom{height:440;width:800px;float:left;padding-top:20px;}
#side-books{height:40;width:15}
#side-books span{height:20;float:left;}
#side-books ul li{height:15}
#side-books ul li a{font-family: 幼圆 ; font-size: 10px;font-weight:bold; color:rgb(255,102,0);}



</style>

</head>

<body>
<f:view>
<h:form>
<div id="container">

<div id=headlogo>
<div id="navigation">
    <dl>
      <dt><h:commandLink value="#{loginBean.logMessage }" action="#{loginBean.linkTo}" /><dt>
      <dt><h:commandLink value="#{loginBean.logMessage2 }" action="register" /></dt>
    </dl>
</div>
   <h:graphicImage url="sysimages/logo.jpg"></h:graphicImage>
</div>


<div id=nav>
<div id=headmenu>
	<ul>
		<li><a href="">礼品卡</a></li>
		<li><a href="">我的订单</a></li>
		<li><a href="myInfo.jsp">我的信息</a></li>
		<li><a href="cart.jsp">购物车</a></li>
		<li><a href="homepage.jsp">首页</a></li>
	</ul>
</div>

 <div id="search" style="padding-top:50px">
        <input id="q" name="q" accesskey="s" size="40" />  
        <input class="image_button" id="image_button" type="submit" value="" />
         
</div>
</div>

<div class="clearfloat"></div>
<div id="maincontent">
 <div id="items">
    <span>淘宝服务</span>
    <dl>
        <dt>女装</dt>
 
            <dd><a href="">羽绒</a></dd>
            <dd><a href="">毛衣</a></dd>
            <dd><a href="">棉衣</a></dd>
            <dd><a href="">连衣裙</a></dd>

    </dl>

   <dl>  
        <dt>男装</dt>
    
            <dd><a href="">牛仔</a></dd>
            <dd><a href="">卫衣</a></dd>
            <dd><a href="">潮流</a></dd>  
                
    </dl>
    <dl>  
        <dt>图书</dt>  
        <dd><a href="">杂志</a></dd>
        <dd><a href="">教育</a></dd>            
    </dl>
    
    <dl>  
        <dt>饰品</dt>
     
            <dd><a href="">项链</a></dd>
            <dd><a href="">手链</a></dd>
            <dd><a href="">手镯</a></dd>
                 
    </dl>
    <dl>  
        <dt>家电</dt>
    
            <dd><a href="">小家电</a></dd>
            <dd><a href="">视听</a></dd>
            <dd><a href="">厨房</a></dd>  
            <dd><a href="">个人护理</a></dd> 
           
    </dl>
    <dl>  
        <dt>美食特产</dt>
        <de>
            <dd><a href="">零食</a></dd>
            <dd><a href="">特产</a></dd>
            <dd><a href="">进口</a></dd>  
            <dd><a href="">茶酒</a></dd>
            <dd><a href="">保健</a></dd>
            </de>        
    </dl>
 </div>
 
 <div id="side">
 <div id="side-top">
<center><br /><br />
<DIV id=banner>
<DIV id=ifocus>
<DIV style="OVERFLOW: hidden" id=ifocus_pic>
<DIV style="OVERFLOW: hidden; TOP: 0px; LEFT: 0px" id=ifocus_piclist>
<UL><!--大图_start -->
  <LI><A href="http://www.lanrentuku.com" 
  target=_blank><IMG border=0 alt=多游网 src="sysimages/adver/1.jpg"></A> </LI>
  <LI><A href="http://www.lanrentuku.com" 
  target=_blank><IMG border=0 alt=多游网 src="sysimages/adver/2.jpg"></A> </LI>
  <LI><A href="http://www.lanrentuku.com" 
  target=_blank><IMG border=0 alt=多游网 src="sysimages/adver/3.jpg"></A> </LI>
  <LI><A href="http://www.lanrentuku.com" 
  target=_blank><IMG border=0 alt=多游网 src="sysimages/adver/4.jpg"></A> </LI>
  <LI><A href="http://www.lanrentuku.com" 
  target=_blank><IMG border=0 alt=多游网 src="sysimages/adver/5.jpg"></A> <!--大图_end --></LI></UL>
</DIV>
<DIV id=ifocus_opdiv></DIV>
<DIV id=ifocus_tx>
<UL><!--小图列表_start -->
  <LI class=current>
  <LI class=normal>
  <LI class=normal>
  <LI class=normal>
  <LI class=normal><!--小图列表_end --></LI></UL></DIV>
<DIV id=ifocus_btn>
<UL><!--小图_start -->
  <LI class=current><IMG border=0 alt=多游网 src="sysimages/adver/1.jpg"> </LI>
  <LI class=normal><IMG border=0 alt=多游网 src="sysimages/adver/2.jpg"> </LI>
  <LI class=normal><IMG border=0 alt=多游网 src="sysimages/adver/3.jpg"> </LI>
  <LI class=normal><IMG border=0 alt=多游网 src="sysimages/adver/4.jpg"> </LI>
  <LI class=normal><IMG border=0 alt=多游网 src="sysimages/adver/5.jpg"> <!--小图_end --></LI></UL>
</DIV></DIV></DIV></DIV>
</center>
 </div>
 <div id="side-bottom">
 <div id="index_pic">
        <h2>今日闪价<span>每日更新</span></h2>
        <ul>
         <li><a href="#"><img src="sysimages/pagepg/1.jpg" alt="产品名称" width="107" height="87" />365页故事</a></li>
          <li><a href="#"><img src="sysimages/pagepg/2.jpg" alt="产品名称" width="107" height="87" />生死疲劳</a></li>
          <li><a href="#"><img src="sysimages/pagepg/3.jpg" alt="产品名称" width="107" height="87" />亲子早教</a></li>
          <li><a href="#"><img src="sysimages/pagepg/4.jpg" alt="产品名称" width="107" height="87" />产品名称</a></li>
          <li><a href="#"><img src="sysimages/pagepg/5.jpg" alt="产品名称" width="107" height="87" />产品名称</a></li>
          <li><a href="#"><img src="sysimages/pagepg/6.jpg" alt="产品名称" width="107" height="87" />产品名称</a></li>
          <li><a href="#"><img src="sysimages/pagepg/7.jpg" alt="产品名称" width="107" height="87" />产品名称</a></li>
          <li><a href="#"><img src="sysimages/pagepg/8.jpg" alt="产品名称" width="107" height="87" />产品名称</a></li>
          <li><a href="#"><img src="sysimages/pagepg/9.jpg" alt="产品名称" width="107" height="87" />产品名称</a></li>
          <li><a href="#"><img src="sysimages/pagepg/10.jpg" alt="产品名称" width="107" height="87" />产品名称</a></li>
          <li><a href="#"><img src="sysimages/pagepg/11.jpg" alt="产品名称" width="107" height="87" />产品名称</a></li>
          <li><a href="#"><img src="sysimages/pagepg/12.jpg" alt="产品名称" width="107" height="87" />产品名称</a></li>
        </ul>
      </div>
 
 </div>
</div>


<div class="clearfloat"></div>

<div id="footer">
    <dl>
    <dt><a href="#">关于我们</a>　||　<a href="#">产品目录</a>　||　<a href="#">联系我们</a>　||　<a href="#">友情链接</a>　||　<a href="#">反馈问题</a>　||　<a href="#">广告合作</a></dt>
      <dd>Copyright &copy; 2012 - 2015 aa25.cn   All Rights Reserved<br />
          内涵商城  版权所有  京ICP备10007159号</dd>
    </dl>
  </div>
</div>
</div>



</h:form>
</f:view>
</body>
</html>