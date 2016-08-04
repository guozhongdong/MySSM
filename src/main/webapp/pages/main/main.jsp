<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<title>Insert title here</title>
</head>
<body class="easyui-layout">
	<div data-options="region:'north'" style="height:60px;background:#B3DFDA;padding:10px">
		north region
	
	</div>
	<div data-options="region:'west',split:true,title:'导航'" style="width:150px;padding:10px;">west content</div>
	<div data-options="region:'east',split:true,collapsed:true,title:'East'" style="width:100px;padding:10px;">east region</div>
	<div data-options="region:'south',border:false" style="height:50px;background:#A9FACD;padding:10px;">south region</div>
	<div data-options="region:'center',title:'Center'"></div>

</body>
</html>