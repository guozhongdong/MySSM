<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%> 
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="/pages/frame/script.jsp"></jsp:include>
<link rel="stylesheet" href="<%=basePath%>pages/resources/css/main.css" type="text/css">

<style type="text/css" >
	.tablemenu { margin:10px 5% 0 5% ; width:90%;!important}
 	.tablemenu td { padding-top:4px;}
	.tablemenu th { text-align: right; padding-right:6px; font-weight: normal; font-size:14px;}
</style>
<title>后台管理系统</title>
<script type="text/javascript">
$(function(){
	// 初始化弹出框
	
	$("#form_menuAdd").form({
		url:'/MySSM/menuAdd.action',
		onSubmit:function(){
			
		}
		
	})
	$('#dialog_menuAdd').dialog({
		title:"新增系统菜单",
		closed: true,
		modal: true,
		buttons:[{
			text:'提交',
			iconCls:'icon-ok',
			handler:function(){
				$('#form_menuAdd').submit();
				
			}
		}]
	});	
})
//给树形菜单加右键事件
$(function(){
			$("#tt2").bind('contextmenu',function(e){
				e.preventDefault();
				$('#mm').menu('show', {
					left: e.pageX,
					top: e.pageY
				});
			});
			
});
function menuHandler(item){
			//alert(item.name)
			$('#dialog_menuAdd').dialog('open');
			console.log('邮件菜单打印事件');
			if(item.name == 'new '){
				console.log('输出新增');
			}			
}
function addMenu(){
	
	
}
</script>
</head>
<body class="easyui-layout" >

	<div data-options="region:'north'" style="height:83px; width:auto;padding:0px">
		<div id="wrap">	
			<div id="header">
            	<h1><img src="../resources/images/bg_h1.jpg" alt="测试" />
            	</h1>
	                <div id="icon">
	                	<img src="../resources/images/bg_icon_top.gif" alt="测试" />
	                </div>
            </div>
         </div>
	</div>
	<div data-options="region:'west',split:true,title:'导航'" style="width:250px;">
		
	<div class="easyui-accordion" data-options="fit:true,border:false">
               
         <div title="Title3" data-options="selected:true" style="padding:10px">
                
          <ul class="easyui-tree" id="tt2" animate="true">
            <li>
                <span>系统管理</span>
                <ul>
                    <li data-options="state:'closed'">
                        <span>安全管理</span>
                        <ul>
                            <li>
                                <span>菜单管理</span>
                            </li>
                            <li>
                                <span>公告管理</span>
                            </li>
                            <li>
                                <span>用户管理</span>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <span>Program Files</span>
                        <ul>
                            <li>Intel</li>
                            <li>Java</li>
                            <li>Microsoft Office</li>
                            <li>Games</li>
                        </ul>
                    </li>
                    <li>index.html</li>
                    <li>about.html</li>
                    <li>welcome.html</li>
                </ul>
                </div>
            </div>
            <div id="mm" class="easyui-menu" data-options="onClick:menuHandler" style="width:120px;">
				<div data-options="name:'new',iconCls:'icon-save'">新增</div>
				<div data-options="name:'edit',iconCls:'icon-edit'">修改</div>
				<div data-options="name:'delete',iconCls:'icon-remove'">删除</div>
			</div>
			<div id="log" class="easyui-panel" title="Event Log" style="height:250px;padding:10px">
			</div>
	
	</div>
	
	<div data-options="region:'south',border:false" style="height:50px;background:#A9FACD;padding:10px;">south region</div>
	<div data-options="region:'center',title:'xxx 欢迎你！'"> 
	 	<div class="easyui-tabs" data-options="fit:true,border:false,plain:true">
	 		
			  <div title="首页" data-options="tools:'#p-tools',closable:true">
			  
			        <iframe scrolling="yes" frameborder="0"  src="https://www.baidu.com" style="width:100%;height:100%;"></iframe>
			   </div>
		</div>
		<div id="p-tools">
		    <!-- 
        	<a href="javascript:void(0)" class="icon-mini-add" onclick="alert('add')"></a>
        	<a href="javascript:void(0)" class="icon-mini-edit" onclick="alert('edit')"></a> -->
        	<a href="javascript:void(0)" class="icon-mini-refresh" onclick="alert('refresh')"></a>
    	</div>
		
	</div>	
   	
	<div id="dialog_menuAdd" style="width:350px;height:360px;top: 100px">
        	<form action="" id="form_menuAdd" name="form_menuAdd" method="post" enctype="multipart/form-data">
        	    <table cellpadding="5" class="tablemenu">
		    		<tr>
		    			<td>系统菜单状态:</td>
		    			<td>
		    				<select class="easyui-combobox" id="resourceStateForAdd" name="resourceStateForAdd">
									<option value="1">数据开发中</option>
									<option value="2">程序开发中</option>
									<option value="3" selected="selected">开放</option>
							</select>
		    			</td>
		    		</tr>
		    		<tr>
		    			<td>系统菜单名称:</td>
		    			<td><input class="easyui-textbox" type="text" name="loginid" data-options="required:true"></input></td>
		    		</tr>
		    		<tr>
		    			<td>系统菜单路径:</td>
		    			<td><input class="easyui-textbox" type="password" name="password" data-options="required:true"></input></td>
		    		</tr>
		    		<tr>
		    			<td>系统菜单描述:</td>
		    			<td><input class="easyui-textbox" type="textarea" name="age" ></input></td>
		    		</tr> 
		    		<tr>
		    			<td>排序:</td>
		    			<td><input class="easyui-textbox" type="text" name="age" ></input></td>
		    		</tr> 
		    		<tr>
		    			<td>扩展字段:</td>
		    			<td><input class="easyui-textbox" type="text" name="age" ></input></td>
		    		</tr>     			    		
	    		</table>
        	</form>
    </div>
    <script>
		
		
	</script>
</body>
</html>