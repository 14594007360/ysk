<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<title>注册 - Booking</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="css/normalize.css" media="all" />
<link rel="stylesheet" href="css/tipso.css" media="all" />
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/util.css" media="all" />
<link rel="stylesheet" href="css/register/register.css">

</head>

<body>
	<!--[if lte IE 8]>
		<p class="browserupgrade text-center">为了获得更好的体验 请点击<a href="browsehappy.com">这里</a>更新您的浏览器</p>
	<![endif]-->

	<!-- 导航 -->
	<header class="clearfix"> <nav>
	<div class="clearfix flexible center-block">
		<div class="top-left">
			<a href="#" class="pull-left logo-a"><img alt="ysklogp logo"
				src="img/index/logo.png" class="logo"></a><span
				class="sep-line pull-left"></span><span class="logo-zc">注册</span>
		</div>
		<div class="top-right">
			<ul>
				<li><a href="#">登录</a></li>
				<li><span class="sep-lines"></span></li>
				<li><a href="#">注册</a></li>
				<li><span class="sep-lines"></span></li>
				<li><a href="#">服务大厅</a></li>
				<li><span class="sep-lines"></span></li>
				<li><a href="#">提建议</a></li>
			</ul>
		</div>
	</div>
	</nav> </header>

	<section class="content center-block">
	<form action="">
		<div class="regline clearfix">
			<div class="reg">手机号码/邮箱：</div>
			<div class="line">
				<input type="text" placeholder="请输入常用的手机号或邮箱" />
			</div>
			<div class="alter">
				<i class="icon-remove"></i><span>请输入正确的邮箱或密码</span>
			</div>
			<div class="alter-ok">
				<i class="icon-ok"></i>
			</div>
		</div>
		<div class="regline clearfix">
			<div class="reg">验证码：</div>
			<div class="code">
				<input type="text" placeholder="请输入4位验证码" />
			</div>
			<div class="getcode">
				<input type="button" value="获取验证码">
			</div>
		</div>
		<div class="regline clearfix">
			<div class="reg">密码：</div>
			<div class="line">
				<input type="text" placeholder="密码区分大小写" />
			</div>
			<div class="alter">
				<i class="icon-remove"></i><span>请输入6-18位密码数字或字母</span>
			</div>
			<div class="alter-ok">
				<i class="icon-ok"></i>
			</div>
		</div>
		<div class="regline clearfix btn-sub">
			<div class="btn-submit pull-right">
				<input type="submit" value="注 册">
			</div>
		</div>
		<div class="regline-text">
			<a href="#">已有账号，直接登录</a>
		</div>

	</form>
	</section>

	<!-----------底部------------------------>
	<footer class="foot">
	<p>
		&copy; 2016 Company, YSK. &middot; <a href="#">关于我们</a> &middot; <a
			href="#">反馈意见</a>
	</p>
	</footer>
</body>
</html>
