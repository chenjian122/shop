<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>WeUI</title>
    
	<meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
	
	<link href="resource/css/weui.css" rel="stylesheet"  >
	<link href="resource/css/example.css" rel="stylesheet"  >

  </head>
  
  <body ontouchstart="">
  	<div class="container js_container">
	  	<div class="page button">
	  		<div class="hd">
		        <h1 class="page_title">Button</h1>
		    </div>
		    <div class="bd spacing">
			    <a href="javascript:;" class="weui_btn weui_btn_primary">按钮</a>
				<a href="javascript:;" class="weui_btn weui_btn_disabled weui_btn_primary">按钮</a>
				<a href="javascript:;" class="weui_btn weui_btn_warn">确认</a>
				<a href="javascript:;" class="weui_btn weui_btn_disabled weui_btn_warn">确认</a>
				<a href="javascript:;" class="weui_btn weui_btn_default">按钮</a>
				<a href="javascript:;" class="weui_btn weui_btn_disabled weui_btn_default">按钮</a>
				<div class="button_sp_area">
				    <a href="javascript:;" class="weui_btn weui_btn_plain_default">按钮</a>
				    <a href="javascript:;" class="weui_btn weui_btn_plain_primary">按钮</a>
				    <a href="javascript:;" class="weui_btn weui_btn_mini weui_btn_primary">按钮</a>
				    <a href="javascript:;" class="weui_btn weui_btn_mini weui_btn_default">按钮</a>
				</div>
			</div>
		 </div>
	</div>
	
	<script src="resource/js/jquery.min.js" type="text/javascript"></script>
	<script src="resource/js/example.js" type="text/javascript"></script>
  </body>
</html>
