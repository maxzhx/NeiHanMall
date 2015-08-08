<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%><%@taglib
	uri="http://java.sun.com/jsf/core" prefix="f"%><%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html> 
	<head> 
	    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>当当图书</title>
		<link rel="stylesheet" type="text/css" href="head_zy.css">
		<LINK rel=Stylesheet type=text/css href="css/jj.css">
        <SCRIPT type=text/javascript src="js/index_solid_zy.js"></SCRIPT>
		<style type="text/css">
/*如果一个容器内的元素都浮动的话，那么它的高度将不会去适应内部元素的高度。解决办法是在#maincontent增加 overflow:auto; zoom:1;，这样就可以让它自动适应内部元素的高度了。*/

/*main*/	
#maincontent { overflow:auto; zoom:1; margin-bottom:8px;margin-top:10px;}
#maintop{height:470px;border:solid;border-width:2px;margin-left:20px;margin-top:5px;}		
a{font-family: Verdana; font-size: 16px;line-height: 1.5;color: #000; text-align: right;}
a:hover{color:rgb(255,102,0);}

</style>	
	</head> 
	<body>
<f:view>
<h:form>

<div id=container>
<div id=headlogo >
   <h:graphicImage url="sysimages/logo.jpg" ></h:graphicImage>
</div>
<div class="clearfloat"></div>

<div id=headmenu>
	<ul>
		<li><a href="#">礼品卡</a></li>
		<li><a href="#">购物车</a></li>
		<li><a href="#">我的订单</a></li>
		<li><a href="#">我的信息</a></li>
		<li><a href="#">我的订单</a></li>
		<li><a href="firstpage.jsp">首页</a></li>
	</ul>
</div>


<div class="clearfloat"></div>

<div id="maincontent">
<div id="maintop">
 <div id="mainleft">
      <div class="side_box">
        <h2><strong>图书</strong>分类</h2>
        <div class="side_con product">
          <ul>
            <li>
              <strong>小说：</strong>
              <a href="#">悬疑</a> | <a href="#">言情</a> | <a href="#">历史</a> | <a href="#">社会</a>
            </li>
            <li>
              <strong>文艺：</strong>
              <a href="#">文学</a> | <a href="#">艺术</a> | <a href="#">传记</a> | <a href="#">摄影</a>
            </li>
            <li>
              <strong>管理：</strong>
              <a href="#">经济</a> | <a href="#">金融</a> |<a href="#">营销</a> | <a href="#">会计</a>
            </li>
            <li>
              <strong>科技：</strong>
              <a href="#">科普</a> | <a href="#">建筑</a> | <a href="#">医学</a> | <a href="#">计算机</a>
             </li>
            <li>
              <strong>教育：</strong>
                <a href="#">教材</a> | <a href="#">外语</a>| <a href="#">考试</a>
            </li>
            <li>
              <strong>生活：</strong>
                <a href="#">育儿</a> | <a href="#">保健</a>| <a href="#">美妆</a>| <a href="#">运动</a>
            </li>
          </ul>
        </div>
 </div>
 </div>


<div id="side">
<div id=side-left>

     <ul style="margin-top:30px;"> 
     <li>   
        <input id="q" name="q" accesskey="s" size="35" style="border:solid 2px rgb(136,221,85)"/>      
        <input class="image_button" id="image_button" type="submit" value="" />
     </li>   
     </ul>
  
   <div id="adver">
       <center><br /><br />
       <DIV id=banner>
       <DIV id=ifocus>
       <DIV style="OVERFLOW: hidden" id=ifocus_pic>
       <DIV style="OVERFLOW: hidden; TOP: 0px; LEFT: 0px" id=ifocus_piclist>
       <UL><!--大图_start -->
          <LI><A href="#" target=_blank><IMG border=0 alt=多游网 src="sysimages/adver/b1.jpg"></A> </LI>
          <LI><A href="#" target=_blank><IMG border=0 alt=多游网 src="sysimages/adver/b2.jpg"></A> </LI>
          <LI><A href="#" target=_blank><IMG border=0 alt=多游网 src="sysimages/adver/b3.jpg"></A> </LI>
          <LI><A href="#" target=_blank><IMG border=0 alt=多游网 src="sysimages/adver/b4.jpg"></A> </LI>
          <LI><A href="#" target=_blank><IMG border=0 alt=多游网 src="sysimages/adver/b5.jpg"></A> <!--大图_end --></LI>
       </UL>
       </DIV>
       <DIV id=ifocus_opdiv></DIV>
       <DIV id=ifocus_tx>
       <UL><!--小图列表_start -->
          <LI class=current>
          <LI class=normal>
          <LI class=normal>
          <LI class=normal>
          <LI class=normal><!--小图列表_end --></LI>
       </UL>
       </DIV>
       <DIV id=ifocus_btn>
       <UL><!--小图_start -->
              <LI class=current><IMG border=0 alt=多游网 src="sysimages/adver/b1.jpg"> </LI>
              <LI class=normal><IMG border=0 alt=多游网 src="sysimages/adver/b2.jpg"> </LI>
              <LI class=normal><IMG border=0 alt=多游网 src="sysimages/adver/b3.jpg"> </LI>
              <LI class=normal><IMG border=0 alt=多游网 src="sysimages/adver/b4.jpg"> </LI>
              <LI class=normal><IMG border=0 alt=多游网 src="sysimages/adver/b5.jpg"> <!--小图_end --></LI></UL>
       </DIV></DIV></DIV></DIV>
       </center>
    </div>
    </div>  <!-- side-left结束 -->

  <div id="index_box">
       <div class="box">
          <h2><a class="more" href="#">更多..</a><span>新书热卖榜</span></h2>
          <div class="box_con">
            <ul>
             <li><a href="#">大国小民</a></li>
              <li><a href="#">幸福想你了</a></li>
              <li><a href="#">两个人的江湖</a></li>
              <li><a href="#">爱情万岁</a></li>
              <li><a href="#">可口可乐的证据</a></li>
              <li><a href="#">大声的自由</a></li>
              <li><a href="#">香蕉哲学</a></li>
              <li><a href="#">生死疲劳</a></li>
              <li><a href="#">香蕉哲学</a></li>
            </ul>
          </div>
       </div>
  </div> <!--右边结束-->
</div>
</div>
 <div id="list">
    <dl>
      <dt><a href="#">默认</a>　||　<a href="#">人气</a>　||　<a href="#">销量</a>　||　<a href="#">信用</a>　||　<a href="#">价格</a></dt>
          <div class="news_list">
            <ul>
              <li><span><a href="#">赢在当当：李国庆、俞渝联合创</a></span><a href="#"><image src="sysimages/books/book1.jpg" alt="产品名称" width="120" height="100" /></a></li>
              <li><span><a href="#">赢在当当：李国庆、俞渝联合创</a></span><a href="#"><image src="sysimages/books/book2.jpg" alt="产品名称" width="120" height="100" /></a></li>
              <li><span><a href="#">莫言长篇小说集</a></span><a href="#"><image src="sysimages/books/book3.jpg" alt="产品名称" width="120" height="100" /></a></li>
              <li><span><a href="#">最好的女子</a></span><a href="#"><image src="sysimages/books/book4.jpg" alt="产品名称" width="120" height="100" /></a></li>
              <li><span><a href="#">中国科普名家名作</a></span><a href="#"><image src="sysimages/books/book5.jpg" alt="产品名称" width="120" height="100" /></a></li>
              <li><span><a href="#">赢在当当：李国庆、俞渝联合创</a></span><a href="#"><image src="sysimages/books/book6.jpg" alt="产品名称" width="120" height="100" /></a></li>
            </ul>
          </div>
    </dl>
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


</h:form>
</f:view>
</body>
</html>              

 