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
		<table id="dg" class="easyui-datagrid" fitColumns="true" pagination="true" title="用户列表" style="width:700px;height:400px"
			data-options="rownumbers:true,toolbar:'#tb',singleSelect:true,collapsible:true,nowrap:true,url:'/MySSM/demouser1.action',method:'post'">
		<thead>
			<tr>
			   <!-- 
				<th data-options="field:'id',width:80">主键id</th> -->
				<th data-options="field:'username',width:150,align:'center'">用户名</th>
				<th data-options="field:'password',width:120,align:'center'">密码</th>
				<th data-options="field:'age',width:120,align:'center'">年龄</th>
				<th data-options="field:'sex',width:80,align:'center'">性别</th>
				<th data-options="field:'phone',width:160,align:'center'">电话</th>
			</tr>
		</thead>
		</table>
		<div id="tb" style="height:auto">
			<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true" onclick="newuser()">新增</a>
			 <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editUser()">修改</a>
			<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true" onclick="removeit()">删除</a>
		</div>
	</div>
	<div id="addDialog" class="easyui-dialog" closed="true"  buttons="#dlg-buttons" 
		data-options="iconCls:'icon-add'
					" style="width:300px;height:280px;padding:10px">
	     <form id="ff" method="post" action="" class="easyui-form"  style="height:80%;" >

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
	    			<td><input class="easyui-textbox" type="password" name="password" data-options="required:true"></input></td>
	    		</tr>
	    		<tr>
	    			<td>年龄:</td>
	    			<td><input class="easyui-textbox" type="text" name="age" data-options="required:true"></input></td>
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
	</div>
	<div id="dlg-buttons">
        <a href="javascript:void(0)" class="easyui-linkbutton c6" iconCls="icon-ok" onclick="saveUser()" style="width:90px">Save</a>
        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#addDialog').dialog('close')" style="width:90px">Cancel</a>
    </div>
   	<script type="text/javascript">
   	  	var url;
	   	function newuser(){
	        $('#addDialog').dialog('open').dialog('center').dialog('setTitle','新增用户');
	        $('#ff').form('clear');
	        url = '/MySSM/insertUser.action';
	    }
	   	
	   	function saveUser(){
            $('#ff').form('submit',{
                url: url,
                onSubmit: function(){
                    return $(this).form('validate');
                },
                success: function(result){
                    var result = eval('('+result+')');
                    if(result >0 ){
                    	$.messager.alert('提示', '保存成功！', 'info');
                    	 $('#addDialog').dialog('close');        // close the dialog
                         $('#dg').datagrid('reload'); 
                    	
                    }

                }
            });
        }
	   	
	   	function editUser(){
	   		
	        var row = $('#dg').datagrid('getSelected');
	       
	        if (row){
	        	 console.log(row.id);
	            $('#addDialog').dialog('open').dialog('center').dialog('setTitle','修改用户');
	            $('#ff').form('load',row);
	            url = '/MySSM/updateUser.action?id='+row.id;
	        }else{
	        	$.messager.alert('提示', '请选择一条记录修改！', 'info');
	        	
	        }
	    }
	    	
	    //删除行数据
	    function removeit(){
	        var row = $('#dg').datagrid('getSelected');
	        if (row){
	            $.messager.confirm('确认','确定要删除这个用户吗?',function(r){
	                if (r){
	                    $.post('/MySSM/deleteUser.action',{id:row.id},function(result){
	                        if (result.success){
	                        	$.messager.alert('提示', '删除成功！', 'info');
	                            $('#dg').datagrid('reload');                             
	                        } else {
	                            $.messager.show({    // show error message
	                                title: 'Error',
	                                msg: result.errorMsg
	                            });
	                        }
	                    },'json');
	                }
	            });
	        }
	    }

		function submitForm(){
			
			$('#ff').form('submit');
			$("#addDialog").dialog("close");
		}
		function clearForm(){
			$('#ff').form('clear');
		}
	</script>

</body>
</html>