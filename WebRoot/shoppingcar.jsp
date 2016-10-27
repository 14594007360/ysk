<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>付款</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
	<link rel="stylesheet" href="css/cssresets.css" media="all" />
	<!-- <link rel="stylesheet" href="css/normalize.css" media="all" />-->
	<link rel="stylesheet" href="css/util.css" media="all" />
	<link rel="stylesheet" href="css/tipso.css" media="all" />
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/owl.carousel.min.css" />
	<link rel="stylesheet" href="css/owl.theme.default.min.css" />
	<link rel="stylesheet" href="css/top-footer.css" media="all" />
	<link rel="stylesheet" href="css/shoppingcar.css" media="all" />
  </head>
  
  <body>
	<!--[if lte IE 8]>
		<p class="browserupgrade text-center">为了获得更好的体验 请点击<a href="browsehappy.com">这里</a>更新您的浏览器</p>
	<![endif]-->

	<!-- 导航 -->
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
						<li><a href="#">注册</a></li>
						<li><span class="sep-lines"></span></li>
						<li><a href="#">手机Booking</a>
							<p>
								<a href="#" alt="手机booking二维码" class="img qrcode-discount "></a>
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
	
	<!-- 中间部分 -->
	<div class="flexible center-block">
		<div class="container clearfix">
			<!-- 搜索 -->
			<div class="pull-left logo">
				<img src="img/index/logo.png" height="90" />
			</div>
			<div class="pull-right searchinput jindu">
				<ul>
					<li>
						<div class="shuzi color"><span>1</span></div>
						<div class="color">确认订单</div>
					</li>
					<li>
						<div class="shuzi"><span>2</span></div>
						<div>请选择支付方式</div>
					</li>
					<li>
						<div class="shuzi"><span>3</span></div>
						<div>购买成功</div>
					</li>
				</ul>
			</div>
		</div>
		<div class="container clearfix">
			<table>
				<tr>
					<th class="first">商品</th>
					<th class="first">单价</th>
					<th class="first">数量</th>
					<th class="first">优惠</th>
					<th class="first">小计</th>
				</tr>
				<tr>
					<th style="width: 300px;" class="next">
						<div style="float: left;"><img src="img/bsk.jpg" width="130" height="79"/></div>
						<div style="float: left; width: 150px;" class="money">【必胜客欢乐餐厅】150元代金券！免费WiFi！</div>
					</th>
					<th class="money next color">￥100.00</th>
					<th></th>
					<th class="money next color">-￥0.00</th>
					<th class="money next color">￥100.00</th>
				</tr>
			</table>
		</div>
	</div>
	
	<!-----------底部------------------------>
	<footer class="foot">
		<p>
			&copy; 2016 Company, YSK. &middot; <a href="#">关于我们</a> &middot; <a
				href="#">反馈意见</a>
		</p>
	</footer>
  </body>
</html>
