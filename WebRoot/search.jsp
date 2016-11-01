<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
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
<title>首页 - Booking</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->

<link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="css/cssresets.css" media="all" />
<link rel="stylesheet" href="css/util.css" media="all" />
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/index/index.css" media="all" />
<link rel="stylesheet" href="css/search.css" />
<link rel="stylesheet" href="css/top-footer.css" media="all" />
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
						<li id="phone-booking"><a href="#">手机Booking</a>
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
	<div class="flexible center-block">
		<div class="container clearfix">
			<!-- 搜索 -->
			<div class="pull-left logo">
				<img src="img/index/logo.png" height="90" />
			</div>
			<div class="pull-right searchinput">
				<form method="get">
					<input type="text" class="inp-input" placeholder="搜索商家或地点" />
					<button class="btn-button">
						<i class="icon-search"></i>
					</button>
				</form>
			</div>
		</div>

		<!-- 导航 -->
		<div class="nav-bar-header clearfix">
			<nav>
				<ul class="clearfix">
					<li>全部分类</li>
					<li class="active">首页</li>
					<li>电影</li>
					<li>酒店</li>
					<li>出行</li>
					<li>美食</li>
				</ul>
			</nav>
		
<!----------------->
		<div class="filter-wrap">
					<p class="w-search-info"><!--文字-->
						找到<span class="lineheight">XXX</span>相关团购<span class="lineheight">XXX</span>个。
					</p>
					<div class="w-filter "><!--分类-->
						<div class="filter-section">
							<h5 class="label">分类:</h5>
							<div class="filter-list"><!--分类后的整个的div-->
								<div class="filter-item-wrap">
									<a class="item-text item-list" href="#">全部</a>
									<a class="item-list" href="#">美食</a><!--文字后面有-->
									<a class="item-list" href="#">生活服务</a>
									<a class="item-list" href="#">休闲娱乐</a>
								</div>
							</div>
						</div>
							<!--------------->
						<div class="filter-section">
							<h5 class="label">分类:</h5>
							<div class="filter-list"><!--分类后的整个的div-->
								<div class="filter-item-wrap">
									<a class="item-text item-list" href="#">全部</a>
									<a class="item-list" href="#">美食</a><!--文字后面有-->
									<a class="item-list" href="#">生活服务</a>
									<a class="item-list" href="#">休闲娱乐</a>
									<a class="item-list" href="#">生活服务</a>
									<a class="item-list" href="#">休闲娱乐</a>
									<a class="item-list" href="#">生活服务</a>
									<a class="item-list" href="#">休闲娱乐</a>
								</div>
							</div>
						</div>
					</div>
					
					
			<!-----默认分类部分----->
				<div class="w-bar">
					<div class="bar-area ">
						<span class="sotr">
							<a href="#" class="active">默认</a>
							<!--<a class="sort-default sort-default-active" href="javascript:;" rel="nofollow" mon="element=default">默认</a>-->
							<a href="#">
								销量<i class="icon icon-arrow-down"></i>
							</a>
							<a href="#">
								价格<i class="icon icon-sort"></i>
							</a>
							<a href="#">
								折扣<i class="icon icon-arrow-up"></i>
							</a>
							<a href="#">
								最新发布<i class="icon icon-arrow-up"></i>
							</a>
						</span>
						
						<!--复选框-->
						<span class="checkbox">
							<a class="checkbox-item" href="#">
								<span class="filter-checkbox-box"></span>
								<input type="checkbox">免预约
							</a>
							<a class="checkbox-item" href="#">
								<span class="filter-checkbox-box"></span>
								<input type="checkbox">全网低价
							</a>
							
							<a class="checkbox-item" href="#">
								<span class="filter-checkbox-box"></span>
								<input type="checkbox">精选品牌
							</a>
						</span>
					</div>
						
						<!--f页-->
						<span class="ye">
							<span class=" icon-angle-left"></span>
							1/1
							<span class="icon-angle-right"></span>
						</span>
						
						
				</div>
					
					
		

		<!-- 内容 -->
		<section class="center clearfix">

			<!--美食 -->
			<section class="cen-food clearfix">

				

				<div class="items clearfix">
					<ul class="clearfix">
						<li class="fist"><a href="#">
								<div>
									<img src="img/index/sc1.jpg" alt="万象城专区" />
								</div>
								<div>
									<h3>【3店通用】万象城专区</h3>
									<p>100元代金券！免费wifi!</p>
								</div>
						</a> <!-- 一些标签 -->
							<div class="item-info">
								<span class="promo promo-p">立减3元</span>
							</div>
							<div class="pinfo clearfix">
								<span class="pay"><span class="money-f">￥</span>178</span><span
									class="pay-out">价值￥<span class="out-money">268</span></span>
							</div>
							<div class="items-foot clearfix">
								<span class="pull-lift evaluate">4.5分</span><span
									class="pull-right">已售1018</span>
							</div></li>
						<li><a href="#">
								<div>
									<img src="img/index/sc1.jpg" alt="万象城专区" />
								</div>
								<div>
									<h3>【3店通用】万象城专区</h3>
									<p>100元代金券！免费wifi!</p>
								</div>
						</a> <!-- 一些标签 -->
							<div class="item-info">
								<span class="promo promo-p">立减3元</span>
							</div>
							<div class="pinfo clearfix">
								<span class="pay"><span class="money-f">￥</span>178</span><span
									class="pay-out">价值￥<span class="out-money">268</span></span>
							</div>
							<div class="items-foot clearfix">
								<span class="pull-lift evaluate">4.5分</span><span
									class="pull-right">已售1018</span>
							</div></li>
						<li><a href="#">
								<div>
									<img src="img/index/sc1.jpg" alt="万象城专区" />
								</div>
								<div>
									<h3>【3店通用】万象城专区</h3>
									<p>100元代金券！免费wifi!</p>
								</div>
						</a> <!-- 一些标签 -->
							<div class="item-info">
								<span class="promo promo-p">立减3元</span>
							</div>
							<div class="pinfo clearfix">
								<span class="pay"><span class="money-f">￥</span>178</span><span
									class="pay-out">价值￥<span class="out-money">268</span></span>
							</div>
							<div class="items-foot clearfix">
								<span class="pull-lift evaluate">4.5分</span><span
									class="pull-right">已售1018</span>
							</div></li>
						<li><a href="#">
								<div>
									<img src="img/index/sc1.jpg" alt="万象城专区" />
								</div>
								<div>
									<h3>【3店通用】万象城专区</h3>
									<p>100元代金券！免费wifi!</p>
								</div>
						</a> <!-- 一些标签 -->
							<div class="item-info">
								<span class="promo promo-p">立减3元</span>
							</div>
							<div class="pinfo clearfix">
								<span class="pay"><span class="money-f">￥</span>178</span><span
									class="pay-out">价值￥<span class="out-money">268</span></span>
							</div>
							<div class="items-foot clearfix">
								<span class="pull-lift evaluate">4.5分</span><span
									class="pull-right">已售1018</span>
							</div></li>
						<li><a href="#">
								<div>
									<img src="img/index/sc1.jpg" alt="万象城专区" />
								</div>
								<div>
									<h3>【3店通用】万象城专区</h3>
									<p>100元代金券！免费wifi!</p>
								</div>
						</a> <!-- 一些标签 -->
							<div class="item-info">
								<span class="promo promo-p">立减3元</span>
							</div>
							<div class="pinfo clearfix">
								<span class="pay"><span class="money-f">￥</span>178</span><span
									class="pay-out">价值￥<span class="out-money">268</span></span>
							</div>
							<div class="items-foot clearfix">
								<span class="pull-lift evaluate">4.5分</span><span
									class="pull-right">已售1018</span>
							</div></li>

						<li class="li-hr">
							<hr>
						</li>

						<li class="fist"><a href="#">
								<div>
									<img src="img/index/sc1.jpg" alt="万象城专区" />
								</div>
								<div>
									<h3>【3店通用】万象城专区</h3>
									<p>100元代金券！免费wifi!</p>
								</div>
						</a> <!-- 一些标签 -->
							<div class="item-info">
								<span class="promo promo-p">立减3元</span>
							</div>
							<div class="pinfo clearfix">
								<span class="pay"><span class="money-f">￥</span>178</span><span
									class="pay-out">价值￥<span class="out-money">268</span></span>
							</div>
							<div class="items-foot clearfix">
								<span class="pull-lift evaluate">4.5分</span><span
									class="pull-right">已售1018</span>
							</div></li>
						<li><a href="#">
								<div>
									<img src="img/index/sc1.jpg" alt="万象城专区" />
								</div>
								<div>
									<h3>【3店通用】万象城专区</h3>
									<p>100元代金券！免费wifi!</p>
								</div>
						</a> <!-- 一些标签 -->
							<div class="item-info">
								<span class="promo promo-p">立减3元</span>
							</div>
							<div class="pinfo clearfix">
								<span class="pay"><span class="money-f">￥</span>178</span><span
									class="pay-out">价值￥<span class="out-money">268</span></span>
							</div>
							<div class="items-foot clearfix">
								<span class="pull-lift evaluate">4.5分</span><span
									class="pull-right">已售1018</span>
							</div></li>
						<li><a href="#">
								<div>
									<img src="img/index/sc1.jpg" alt="万象城专区" />
								</div>
								<div>
									<h3>【3店通用】万象城专区</h3>
									<p>100元代金券！免费wifi!</p>
								</div>
						</a> <!-- 一些标签 -->
							<div class="item-info">
								<span class="promo promo-p">立减3元</span>
							</div>
							<div class="pinfo clearfix">
								<span class="pay"><span class="money-f">￥</span>178</span><span
									class="pay-out">价值￥<span class="out-money">268</span></span>
							</div>
							<div class="items-foot clearfix">
								<span class="pull-lift evaluate">4.5分</span><span
									class="pull-right">已售1018</span>
							</div></li>
						<li><a href="#">
								<div>
									<img src="img/index/sc1.jpg" alt="万象城专区" />
								</div>
								<div>
									<h3>【3店通用】万象城专区</h3>
									<p>100元代金券！免费wifi!</p>
								</div>
						</a> <!-- 一些标签 -->
							<div class="item-info">
								<span class="promo promo-p">立减3元</span>
							</div>
							<div class="pinfo clearfix">
								<span class="pay"><span class="money-f">￥</span>178</span><span
									class="pay-out">价值￥<span class="out-money">268</span></span>
							</div>
							<div class="items-foot clearfix">
								<span class="pull-lift evaluate">4.5分</span><span
									class="pull-right">已售1018</span>
							</div></li>
						<li><a href="#">
								<div>
									<img src="img/index/sc1.jpg" alt="万象城专区" />
								</div>
								<div>
									<h3>【3店通用】万象城专区</h3>
									<p>100元代金券！免费wifi!</p>
								</div>
						</a> <!-- 一些标签 -->
							<div class="item-info">
								<span class="promo promo-p">立减3元</span>
							</div>
							<div class="pinfo clearfix">
								<span class="pay"><span class="money-f">￥</span>178</span><span
									class="pay-out">价值￥<span class="out-money">268</span></span>
							</div>
							<div class="items-foot clearfix">
								<span class="pull-lift evaluate">4.5分</span><span
									class="pull-right">已售1018</span>
							</div></li>
					</ul>
				</div>

			</section>

		
		</div>
	</div>
</div>

	<!-----------底部------------------------>
	<footer class="foot">
		<p>
			&copy; 2016 Company, YSK. &middot; <a href="#">关于我们</a> &middot; <a
				href="#">反馈意见</a>
		</p>
	</footer>


	<script src="js/jquery.min.js"></script>
	<script src="js/top-nav.js" charset="utf-8"></script>

</body>
</html>
