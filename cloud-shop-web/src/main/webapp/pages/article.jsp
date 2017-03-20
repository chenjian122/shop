<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<!-- 用来指定IE8浏览器去模拟某个特定版本的IE浏览器的渲染方式（比如人见人烦的IE6），以此来解决部分兼容问题 -->
  	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  	<!-- 360安全浏览器已实现   webkit(极速核)|ie-comp(ie兼容内核)|ie-stand(ie标准内核)-->
  	<meta name="renderer" content="ie-stand">
  	<!-- 定义网页编码信息 -->
  	<meta charset="utf-8">
  	<title>文章</title>
  	<!-- 网页关键字,用于搜索引擎查到本页 -->
  	<meta name="keywords" content="优质文章首选">
  	<meta name="description" content="文章首页信息">
  	
  	<link rel="stylesheet" type="text/css" href="../resource/css/jquery.fullPage.min.css">
  	<link rel="stylesheet" type="text/css" href="../resource/css/page.min.css">
  	<link rel="stylesheet" type="text/css" href="../resource/css/ani.min.css">
  	<link rel="stylesheet" type="text/css" href="../resource/css/reset.min.css">
  	<link rel="stylesheet" type="text/css" href="../resource/css/section2SmallScreen.min.css">
  </head>
  
  <body>
	<!-- header html start -->
	<div id="header-wrap">
		<div id="header">
			<div class="logo">
				<img class="logo-image" width="180" src="../resource/images/header.png">
			</div>
			<div class="company-produce">
                <span>优选文章</span>
            </div>
            <div class="btn">
                <div class='login-btn'>
                    <span class="ripple3"></span>
                    <span class="login"><a href="/login">登录</a></span>
                </div>
                <div class='resign-btn'>
                    <span class="ripple4"></span>
                    <span class="resign">注册</span>
                </div>
            </div>
            <div class="header-nav">
            	<span>网站介绍</span>
            	<span>更换皮肤</span>
            	<span>文章精选</span>
            	<span>联系我们</span>
            </div>
		</div>
	</div>
  
  	<!-- footer html start-->
  	<div id="footer-wrap">
  		<div id="footer">
  			<span class="address">湖南省株洲市炎陵县8888号</span>
  			<div class="footer-nav">
  				<span><a href="#">帮助中心</a></span>
  				<span><a href="#">使用手册</a></span>
  			</div>
  		</div>
  	</div>
  
  	<!-- context html start -->
  	<div id="fullpage">
  		<div class="section pg1" id="section1">
            <div class="wrap1 gaosiBlur">
                <img class="loading-image " data-delay="../resource/images/bg-cover-big-v2.jpg" src="../resource/images/bg-cover-big-v2.jpg" />
                <div class="main-content">
                    <div class="main">
                        <div class="logo"><img src="../resource/images/logo.png"></div>
                        <p class="slogan">企业级项目计划、执行、追踪、考核管理平台</p>
                        <div class="resign-buy">
                            <div class="resign clearFloat">
                                <span class="ripple1"></span>
                                <span class="resign-btn">注册试用</span>
                            </div>
                            <div class="buy">
                                <span class="ripple2"></span>
                                <span class="buy-btn">联系购买</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--section1 end-->
        <div class="section pg2" id="section2">
            <div class="bgColor"></div>
            <div class="wrap2">
                <div class="main-content">
                    <div class="main">
                        <p class="title">让所有人发挥一流工作执行力</p>
                        <p class="detail"> tita.com基于PDCA质量管理理论,帮助您统一把控企业的项目和计划，快速追踪工作进展，评价工作成果，纳入考核形成企业管理闭环，有效提升企业执行力</p>
                        <div class="index-page-logo"></div>
                        <!-- <div class="index-page-logo"></div> -->
                        <div class="pdca-wrap">
                            <div class="center-circle">
                                <img src="../resource/images/pdca.png" class="ie8-pdca">
                                <div class="circle circle-1"></div>
                                <div class="circle circle-2"></div>
                                <div class="circle circle-3"></div>
                                <div class="circle circle-4"></div>
                                <div class="circle circle-5"></div>

                                <div class="desc-1">
                                    <img src="../resource/images/c-shadow.png" class="desc-cir">
                                    <img src="../resource/images/kaohe.png" class="center">
                                    <img src="../resource/images/line-1.png" class="line">
                                    <span class="desc-title desc-text">评价考核</span>
                                    <span class="desc-detail desc-text">对任务、项目评价打分，有效纳入考核管理 并数据分析工作成果</span>
                                </div>
                                <div class="desc-2">
                                    <img src="../resource/images/c-shadow.png" class="desc-cir">
                                    <img src="../resource/images/guankong.png" class="center">
                                    <img src="../resource/images/line-2.png" class="line">
                                    <span class="desc-title desc-text">统一管理</span>
                                    <span class="desc-detail desc-text">在线制定计划、项目,统一管理工作执行情况</span>
                                </div>
                                <div class="desc-3">
                                    <img src="../resource/images/c-shadow.png" class="desc-cir">
                                    <img src="../resource/images/zhuizong.png" class="center">
                                    <img src="../resource/images/line-3.png" class="line">
                                    <span class="desc-title desc-text">快速追踪</span>
                                    <span class="desc-detail desc-text">项目管理、计划分解执行，更有效的追踪工作线索</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
  	</div>
  </body>
  
  
  <script type="text/javascript" src="../resource/js/jquery-1.8.3.min.js"></script>
  <script type="text/javascript" src="../resource/js/customize-script.min.js"></script>
  <script type="text/javascript" src="../resource/js/jquery.backgroundcover.min.js"></script>
  <script type="text/javascript" src="../resource/js/jquery.fullPage.min.js"></script>
  <script type="text/javascript" src="../resource/js/jqueryUI-1.9.1.min.js"></script>
  <script type="text/javascript" src="../resource/js/quietflow.min.js"></script>
</html>
