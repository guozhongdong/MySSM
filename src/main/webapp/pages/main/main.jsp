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
<script type="text/javascript" src="../resources/jquery-easyui-1.5/jquery.easyui.min.js"></script>
<title>后台管理系统</title>
<script type="text/javascript">
  $(function(){
	  
	  
	  
	  
  });
  //打开 复选框
  function append(){
	  
	  $("#addDialog").dialog('open');
	//  $("#addDialog").dialog('open');

  }

</script>

</head>

</head>
<body class="easyui-layout">
	<div data-options="region:'north'" style="height:60px;background:#B3DFDA;padding:10px">
		页面大标题
	
	</div>
	<div data-options="region:'west',split:true,title:'导航'" style="width:150px;padding:10px;">west content</div>
	<div data-options="region:'east',split:true,title:'East'" style="width:100px;padding:10px;">east region</div>
	<div data-options="region:'south',border:false" style="height:50px;background:#A9FACD;padding:10px;">south region</div>
	<div data-options="region:'center',title:'xxx 欢迎你！'"> 
		<table class="easyui-datagrid" title="用户列表" style="width:700px;height:250px"
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
	
	
	</div>
	<div id="addDialog" class="easyui-dialog" closed="true" title="新增用户" 
		data-options="iconCls:'icon-add'
					" style="width:300px;height:400px;padding:10px">
	     <form id="ff" method="post" action="/MySSM/insertUser.action" class="easyui-form"  style="height:80%;" enctype="multipart/form-data">

			<table cellpadding="5">
	    		<tr>
	    			<td>用户名:</td>
	    			<td><input class="easyui-textbox" type="text" name="username" data-options="required:true"></input></td>
	    		</tr>
	    		<tr>
	    			<td>登陆名:</td>
	    			<td><input class="easyui-textbox" type="text" name="loginid" data-options="required:true"></input></td>
	    		</tr>
	    		<tr>
	    			<td>密码:</td>
	    			<td><input class="easyui-textbox" type="text" name="password" data-options="required:true"></input></td>
	    		</tr>
	    		<tr>
	    			<td>邮箱:</td>
	    			<td><input class="easyui-textbox" type="text" name="email" data-options="required:true,validType:'email'"></input></td>
	    		</tr> 
	    		<tr>
	    			<td>性别:</td>
	    			<td><select class="easyui-combobox" style="width:50px">
	    			       <option value="1">男</option>
	    			       <option value="0">女</option>
	    			 	</select>
	    			 
	    			 </td>
	    		</tr>   		
	    		
	    	</table>
	     </form>
	     <div style="text-align:center;padding:5px">
	    	<a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">提交</a>
	    	<a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">清除</a>
	    </div>
	    <script>
		function submitForm(){
			
			$('#ff').form('submit');
		}
		function clearForm(){
			$('#ff').form('clear');
		}
	</script>
		  
	</div>

</body>
</html>