<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<f:view>
<h:form>
 <h1 align="center"> 内涵商城</h1>
    <table>
       <tr>
         <td>
    	   <h:outputLabel>
    	       <h:outputText value="dfge"/>
    	   </h:outputLabel>
    	 </td>
    	 <td>
    	 <td>
    	   <h:outputLabel>
    	      <h:outputText value="幻城" />
    	   </h:outputLabel>
         </td>
      </tr>
      <tr>
        <td>
           <h:graphicImage url="/images/sspl.jpg"
                        alt="生死疲劳"/>
        </td>
        <td/>
        <td>
           <h:graphicImage url="/images/hc.jpg"
                        alt="幻城"/>
        </td>
      </tr>
       <tr>
         <td>
           <h:outputLabel>
             <h:outputText value="价格:￥39.00" />
           </h:outputLabel>
           <h:commandButton value="购买" action="ok"/>
         </td>
         
         <td>
         <td>
           <h:outputLabel>
             <h:outputText value="价格:￥18.00" />
           </h:outputLabel>
           <h:commandButton value="购买"/>
         </td>          
       </tr>
    </table>
</h:form>
</f:view>
</body>
</html>