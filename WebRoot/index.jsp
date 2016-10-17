<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!doctype html>
<html>
<head>
<base href="<%=basePath%>">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<title>首页</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->

<link rel="stylesheet" href="css/cssresets.css" media="all" />
<link rel="stylesheet" href="css/tipso.css" media="all" />
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/util.css" media="all" />
<link rel="stylesheet" href="css/index.css" media="all" />
</head>

<body>
	<!--[if lte IE 8]>
		<p class="browserupgrade text-center">为了获得更好的体验 请点击<a href="browsehappy.com">这里</a>更新您的浏览器</p>
	<![endif]-->
	<header class="clearfix">
		<nav>
			<div class="clearfix flexible center-block">
				<div class="top-left">
					<ul>
						<li>赣州</li>
						<li><span class="sep-lines"></span></li>
						<li>切换城市</li>
					</ul>
				</div>
				<div class="top-right">
					<ul>
						<li><a href="#">登录</a></li>
						<li><span class="sep-lines"></span></li>
						<li><a href="#">手机Booking</a>
							<p>
								<a href="#" alt="手机booking二维码" class="img qrcode-discount hide"></a>
							</p></li>
						<li><span class="sep-lines"></span></li>
						<li><a href="#">我的预订</a></li>
						<li><span class="sep-lines"></span></li>
						<li><a href="#">我是商家</a></li>
						<li><span class="sep-lines"></span></li>
						<li><a href="#">帮助中心</a></li>
						<li><span class="sep-lines"></span></li>
						<li><a href="#">关于</a></li>
						<li><span class="sep-lines"></span></li>
						<li><span id="tip-sc"><a href="#">收藏</a></span></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<!-- 主体 -->
	<div class="container flexible center-block">
		<!-- 搜索 -->
		<div class="pull-left"><img src="img/index/logo.png"  height="90"/></div>
		<div class="pull-right">
			<form method="get">
				<input type="text"/><button><i class="icon-search"></i></button>
			</form>
		</div>
	</div>


	<script src="js/jquery-1.8.3.min.js"></script>
	<script src="js/tipso.min.js"></script>
	<script src="js/index.js" charset="utf-8"></script>
</body>
</html>
