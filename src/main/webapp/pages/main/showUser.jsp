<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="../resources/jquery-easyui-1.5/demo/demo.css" type="text/css">
<link rel="stylesheet" href="../resources/jquery-easyui-1.5/themes/default/easyui.css" type="text/css">
<link rel="stylesheet" href="../resources/jquery-easyui-1.5/themes/icon.css" type="text/css">
<script type="text/javascript" src="../resources/jquery-easyui-1.5/jquery.min.js"></script>
<script type="text/javascript" src="../resources/jquery-easyui-1.5/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="../resources/jquery-easyui-1.5/jquery.easyui.min.js"></script
<title>展示所有用户</title>
<script type="text/javascript">
    
</script>
</head>
<body>

	<h2>基础表格</h2>
	<div style="margin:20px 0;"></div>
	
	<table class="easyui-datagrid" title="Basic DataGrid" style="width:700px;height:250px"
			data-options="rownumbers:true,toolbar:'#tb',singleSelect:true,collapsible:true,nowrap:true,url:'/MySSM/demouser1.action',method:'post'">
		<thead>
			<tr>
				<th data-options="field:'id',width:80">主键id</th>
				<th data-options="field:'username',width:100">用户名</th>
				<th data-options="field:'password',width:80,align:'right'">密码</th>
				<th data-options="field:'age',width:80,align:'right'">年龄</th>
				<th data-options="field:'sex',width:250">性别</th>
				<th data-options="field:'phone',width:60,align:'center'">电话</th>
			</tr>
		</thead>
	</table>
	<div id="tb" style="height:auto">
		<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true" onclick="append()">新增</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true" onclick="removeit()">删除</a>
		<!-- <a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" onclick="accept()">Accept</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-undo',plain:true" onclick="reject()">Reject</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true" onclick="getChanges()">GetChanges</a>
		 -->
	</div>
	<script type="text/javascript">
	     function append(){
	    	 
	     }
	
	</script>
	
</body>
</html>