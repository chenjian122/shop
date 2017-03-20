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
	  	<div class="page dialog">
	  		<div class="hd">
		        <h1 class="page_title">Dialog</h1>
		    </div>
		    <div class="bd spacing">
                <a href="javascript:;" class="weui_btn weui_btn_primary" id="showDialog1">点击弹出Dialog样式一</a>
                <a href="javascript:;" class="weui_btn weui_btn_primary" id="showDialog2">点击弹出Dialog样式二</a>
            </div>
            <div class="weui_dialog_confirm" id="dialog1" style="display: none;">
                <div class="weui_mask"></div>
                <div class="weui_dialog">
                    <div class="weui_dialog_hd"><strong class="weui_dialog_title">弹窗标题</strong></div>
                    <div class="weui_dialog_bd">自定义弹窗内容<br>...</div>
                    <div class="weui_dialog_ft">
                        <a href="javascript:;" class="weui_btn_dialog default">取消</a>
                        <a href="javascript:;" class="weui_btn_dialog primary">确定</a>
                    </div>
                </div>
            </div>
            <div class="weui_dialog_alert" id="dialog2" style="display: none;">
                <div class="weui_mask"></div>
                <div class="weui_dialog">
                    <div class="weui_dialog_hd"><strong class="weui_dialog_title">弹窗标题</strong></div>
                    <div class="weui_dialog_bd">弹窗内容，告知当前页面信息等</div>
                    <div class="weui_dialog_ft">
                        <a href="javascript:;" class="weui_btn_dialog primary">确定</a>
                    </div>
                </div>
            </div>
		 </div>
	</div>
	
	
	<script src="resource/js/jquery.min.js" type="text/javascript"></script>
	<script src="resource/js/example.js" type="text/javascript"></script>
  </body>
</html>
