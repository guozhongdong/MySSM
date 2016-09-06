<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 String path = request.getContextPath();
 String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<link rel="stylesheet" href="<%=basePath%>pages/resources/jquery-easyui-1.5/themes/default/easyui.css" type="text/css">
<link rel="stylesheet" href="<%=basePath%>pages/resources/jquery-easyui-1.5/themes/icon.css" type="text/css">
<link rel="stylesheet" href="<%=basePath%>pages/resources/jquery-easyui-1.5/demo/demo.css" type="text/css">
<link rel="stylesheet" href="<%=basePath%>pages/resources/css/header.css">
<script type="text/javascript" src="<%=basePath%>pages/resources/jquery-easyui-1.5/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath%>pages/resources/jquery-easyui-1.5/jquery.easyui.min.js"></script>
<script type="text/javascript" src="<%=basePath%>pages/resources/jquery-easyui-1.5/locale/easyui-lang-zh_CN.js"></script>
