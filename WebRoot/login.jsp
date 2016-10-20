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
<title>登录 - Booking</title>

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
<link rel="stylesheet" href="css/login/login.css">

</head>

<body>
	<!--[if lte IE 8]>
		<p class="browserupgrade text-center">为了获得更好的体验 请点击<a href="browsehappy.com">这里</a>更新您的浏览器</p>
	<![endif]-->
	<!-- 导航 -->
	<header class="clearfix"> <nav>
	<div class="top-right center-block clearfix">
		<ul class="pull-right">
			<li><a href="#">Booking首页</a></li>
			<li><span class="sep-lines"></span></li>
			<li><a href="#">服务大厅</a></li>
			<li><span class="sep-lines"></span></li>
			<li><a href="#">提建议</a></li>
		</ul>
	</div>
	</nav> </header>
	<!-- 内容 -->
	<div class="box center-block claerfix">
		<section class="center">
		<div class="pull-left logo-box claerfix">
			<a href="#" class="pull-left logo-a"><img alt="ysklogo logo"
				src="img/logo-b.png" class="logo"></a>
		</div>
		
		<div style="height: 180px;"></div>
		
		<div class="clearfix">
			<div class="pull-right login-form">
				<div class="login-header">账密登录</div>
				<div class="login-modern">
					<form action="">

						<div class="clearfix">
							<span class="input-prepend pull-left"><i class="icon-user"></i></span><input
								type="text" placeholder="用户名/邮箱/手机号"
								class="input-text pull-left" />
						</div>

						<div class="clearfix">
							<span class="input-prepend pull-left"><i class="icon-lock"></i></span><input
								type="password" class="input-text pull-left" />
						</div>

						<div class="forgot">
							<a href="#">忘记登录密码？</a>
						</div>

						<div>
							<input type="submit" class="input-buttom" value="登 录" />
						</div>


						<div class="register">
							<a href="#">免费注册</a>
						</div>

					</form>
				</div>
			</div>
		</div>
		</section>

		<!-----------底部------------------------>
		<footer class="foot claerfix">
		<p>
			&copy; 2016 Company, YSK. &middot; <a href="#">关于我们</a> &middot; <a
				href="#">反馈意见</a>
		</p>
		</footer>
	</div>
</body>
</html>
