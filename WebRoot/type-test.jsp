<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'type-test.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  	<table>
	    <s:iterator value="%{typeList}" id="type">
	    	<tr>
	    		<td><s:property value="%{#type.type_name}"/></td>
	    		<s:property value="%{#type.childs[0].affis[4].affi_name}"/>
	    	</tr>
	    	<tr>
	    		<s:iterator value="%{#type.childs}" id="childType">
	    			<td><s:property value="%{#childType.child_name}"/></td>
	    			<s:iterator value="%{#childType.affis}" id="affiType">
	    				<td><s:property value="%{#affiType.affi_name}"/></td>
	    			</s:iterator>
	    			
	    		</s:iterator>
	    	</tr>
	    </s:iterator>
	    
    </table>
  </body>
</html>
