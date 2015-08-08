<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>编辑信息</title>
<style type="text/css">
	.image{
	border:0; margin:0;
	 padding:0; max-width:200px;
	  width:expression(this.width>200?"200px":this.width);
	   max-height:200px;
	    height:expression(this.height>200?"200px":this.height); 
	}
#divbox{margin-left:0}
</style>
<script type="text/javascript">
function viewmypic(mypic,imgfile) {
	alert(imgfile.value);
	if (imgfile.value){
	mypic.src=imgfile.value;
	mypic.style.display="";
	mypic.border=1;
	}
	}
</script>
</head>
<body>
<f:view>

	<h:form id="form1">
	<div id="divbox">
	    <img name="showimg" id="showimg" src="" alt="预览图片" />
		<input name="imgfile" type="file" id="imgfile" size="40" onchange="viewmypic(showimg,imgfile);" />
		
		<h:panelGrid columns="2">
			<h:outputLabel>用户名：</h:outputLabel>
			<h:outputText value="#{editInfoBean.userName }"/>
			<h:message for="" style="color:red"></h:message>
			<h:outputLabel>修改密码：</h:outputLabel>
			<h:inputSecret size="20" value="#{editInfoBean.password}" id="editPass" validator="#{editInfoBean.password_validate}"></h:inputSecret>
			<h:message for="editPass" style="color:red"></h:message>
			<h:outputLabel>再次确认：</h:outputLabel>
			<h:inputSecret size="20" value="#{editInfoBean.password_ensure}" id="reEnsure" validator="#{editInfoBean.ensure_validate}"></h:inputSecret>
			<h:message for="reEnsure" style="color:red"></h:message>
			<h:outputLabel>修改电话：</h:outputLabel>
			<h:inputText size="20" value="#{editInfoBean.telephone}" id="editPhone" validator="#{editInfoBean.telephone_validate}"></h:inputText>
			<h:message for="editPhone" style="color:red"></h:message>
			<h:outputLabel>修改邮箱：</h:outputLabel>
			<h:inputText size="20" value="#{editInfoBean.email}" id="editMail" validator="#{editInfoBean.email_validate}"></h:inputText>
			<h:message for="editMail" style="color:red"></h:message>
			<h:outputLabel>修改地址：</h:outputLabel>
			<h:inputText size="20" value="#{editInfoBean.address}" id="editaddress"></h:inputText>
			<h:message for="editaddress" style="color:red"></h:message>
			<h:outputLabel>修改收件人姓名：</h:outputLabel>
			<h:inputText size="20" value="#{editInfoBean.receivername }" id="editReceiverName"></h:inputText>
			<h:message for="editReceiverName" style="color:red"></h:message>
			<h:outputLabel>修改收件人电话:</h:outputLabel>
			<h:inputText size="20" value="#{editInfoBean.receiverphone}" id="editReceiverPhone"></h:inputText>
			<h:message for="editReceiverPhone" style="color:red"></h:message>
		</h:panelGrid>
		<h:commandButton value="提交" action="#{editInfoBean.editInfo}"></h:commandButton>
		</div>
	</h:form>
</f:view>
</body>
</html>