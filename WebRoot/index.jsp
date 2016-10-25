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
<link rel="stylesheet" href="css/tipso.css" media="all" />
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/owl.carousel.min.css" />
<link rel="stylesheet" href="css/owl.theme.default.min.css" />
<link rel="stylesheet" href="css/index/index.css" media="all" />

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
			<!-- 左侧导航 -->
			<div class="left-menu clearfix pull-left">
				<s:iterator value="%{typeList}" id="type" status="count">
					<div class="men-food">
						<dl>
							<dt>
								<a href="#"><s:property value="%{#type.type_name}"/></a>
							</dt>
							<dd class="sp-sc">
								<a href="#"><s:property value="%{#type.childs[#count.getIndex()].affis[1].affi_name}"/></a>
							</dd>
							<dd class="sp-sc">
								<a href="#"><s:property value="%{#type.childs[#count.getIndex()].affis[2].affi_name}"/></a>
							</dd>
						</dl>
					</div>
				</s:iterator>
<!-- 				<div class="men-film"> -->
<!-- 					<dl> -->
<!-- 						<dt> -->
<!-- 							<a href="#">电影</a> -->
<!-- 						</dt> -->
<!-- 						<dd class="sp-sc"> -->
<!-- 							<a href="#">在线定座</a> -->
<!-- 						</dd> -->
<!-- 						<dd class="sp-sc"> -->
<!-- 							<a href="#">电影票团购</a> -->
<!-- 						</dd> -->
<!-- 					</dl> -->
<!-- 				</div> -->
<!-- 				<div class="men-entertainment"> -->
<!-- 					<dl> -->
<!-- 						<dt> -->
<!-- 							<a href="#">休闲娱乐</a> -->
<!-- 						</dt> -->
<!-- 						<dd class="sp-sc"> -->
<!-- 							<a href="#">足疗按摩</a> -->
<!-- 						</dd> -->
<!-- 					</dl> -->
<!-- 				</div> -->
<!-- 				<div class="men-life"> -->
<!-- 					<dl> -->
<!-- 						<dt> -->
<!-- 							<a href="#">生活服务</a> -->
<!-- 						</dt> -->
<!-- 						<dd class="sp-sc"> -->
<!-- 							<a href="#">配镜</a> -->
<!-- 						</dd> -->
<!-- 						<dd class="sp-sc"> -->
<!-- 							<a href="#">鲜花</a> -->
<!-- 						</dd> -->
<!-- 					</dl> -->
<!-- 				</div> -->
<!-- 				<div class="men-hotel"> -->
<!-- 					<dl> -->
<!-- 						<dt> -->
<!-- 							<a href="#">酒店</a> -->
<!-- 						</dt> -->
<!-- 						<dd class="sp-sc"> -->
<!-- 							<a href="#">赣州</a> -->
<!-- 						</dd> -->
<!-- 						<dd class="sp-sc"> -->
<!-- 							<a href="#">北京</a> -->
<!-- 						</dd> -->
<!-- 						<dd class="sp-sc"> -->
<!-- 							<a href="#">上海</a> -->
<!-- 						</dd> -->
<!-- 					</dl> -->
<!-- 				</div> -->
<!-- 				<div class="men-local-life"> -->
<!-- 					<dl> -->
<!-- 						<dt> -->
<!-- 							<a href="#">本地生活</a> -->
<!-- 						</dt> -->
<!-- 						<dd class="sp-sc"> -->
<!-- 							<a href="#">温泉洗浴</a> -->
<!-- 						</dd> -->
<!-- 					</dl> -->
<!-- 				</div> -->
<!-- 				<div class="men-goodpeople"> -->
<!-- 					<dl> -->
<!-- 						<dt> -->
<!-- 							<a href="#">丽人</a> -->
<!-- 						</dt> -->
<!-- 						<dd class="sp-sc"> -->
<!-- 							<a href="#">美发</a> -->
<!-- 						</dd> -->
<!-- 						<dd class="sp-sc"> -->
<!-- 							<a href="#">化妆</a> -->
<!-- 						</dd> -->
<!-- 						<dd class="sp-sc"> -->
<!-- 							<a href="#">美容SPA</a> -->
<!-- 						</dd> -->
<!-- 					</dl> -->
<!-- 				</div> -->
			</div>

			<!-- 分类 -->
			
			<s:iterator value="%{typeList}" id="type" status="count">
				<div class="pull-left hd-type">
					<div class="foot-item">
						<s:iterator value="%{#type.childs}" id="child">
							<ul class="clearfix">
								<h3><s:property value="%{#child.child_name}"/></h3>
								<s:iterator value="%{#child.affis}" id="affi">
									<li><a href="#"><s:property value="%{#affi.affi_name}"/></a></li>
									<li><span class="sep-lines"></span></li>
								</s:iterator>
							</ul>
							<hr />
						</s:iterator>
					</div>
				</div>
			</s:iterator>
						
<!-- 						<li><a href="#">小吃快餐</a></li> -->
<!-- 						<li><span class="sep-lines"></span></li> -->
<!-- 						<li><a href="#">自助餐</a></li> -->
<!-- 						<li><span class="sep-lines"></span></li> -->
<!-- 						<li><a href="#">海鲜</a></li> -->
<!-- 						<li><span class="sep-lines"></span></li> -->
<!-- 						<li><a href="#">烧烤/烤肉</a></li> -->
<!-- 						<li><span class="sep-lines"></span></li> -->
<!-- 						<li><a href="#">甜品</a></li> -->
<!-- 						<li><span class="sep-lines"></span></li> -->
<!-- 						<li><a href="#">蛋糕</a></li> -->
<!-- 						<li><span class="sep-lines"></span></li> -->
<!-- 						<li><a href="#">咖啡</a></li> -->
<!-- 						<li><span class="sep-lines"></span></li> -->
<!-- 						<li><a href="#">夏日饮品</a></li> -->
<!-- 						<li><span class="sep-lines"></span></li> -->
<!-- 						<li><a href="#">小龙虾</a></li> -->
<!-- 						<li><span class="sep-lines"></span></li> -->
<!-- 						<li><a href="#">酒吧</a></li> -->
<!-- 						<li><span class="sep-lines"></span></li> -->
<!-- 						<li><a href="#">粥店</a></li> -->
					
<!-- 					<h3>中国菜</h3> -->
<!-- 					<ul class="clearfix"> -->
<!-- 						<li><a href="#">粤菜</a></li> -->
<!-- 						<li><span class="sep-lines"></span></li> -->
<!-- 						<li><a href="#">江浙菜</a></li> -->
<!-- 						<li><span class="sep-lines"></span></li> -->
<!-- 						<li><a href="#">北京菜</a></li> -->
<!-- 						<li><span class="sep-lines"></span></li> -->
<!-- 						<li><a href="#">东北菜</a></li> -->
<!-- 						<li><span class="sep-lines"></span></li> -->
<!-- 						<li><a href="#">云贵菜</a></li> -->
<!-- 						<li><span class="sep-lines"></span></li> -->
<!-- 						<li><a href="#">素食</a></li> -->
<!-- 						<li><span class="sep-lines"></span></li> -->
<!-- 						<li><a href="#">创意菜/私房菜</a></li> -->
<!-- 						<li><span class="sep-lines"></span></li> -->
<!-- 						<li><a href="#">烤鱼</a></li> -->
<!-- 						<li><span class="sep-lines"></span></li> -->
<!-- 						<li><a href="#">烤鸭</a></li> -->
<!-- 						<li><span class="sep-lines"></span></li> -->
<!-- 						<li><a href="#">麻辣烫</a></li> -->
<!-- 					</ul> -->
<!-- 					<hr /> -->
<!-- 					<h3>外国菜</h3> -->
<!-- 					<ul class="clearfix"> -->
<!-- 						<li><a href="#">日韩料理</a></li> -->
<!-- 						<li><span class="sep-lines"></span></li> -->
<!-- 						<li><a href="#">西餐</a></li> -->
<!-- 					</ul> -->
			
			<!-- 轮播广告 -->
			<div class="ad">
				<div class="owl-carousel owl-theme">
					<div class="item">
						<picture> <!-- <source srcset="img/index/001.jpg" media="(min-width:50em)">
						<source srcset="img/index/001.jpg" media="(min-width:30em)"> --> <img
							src="img/index/003.jpg" alt="003" /> </picture>
					</div>
					<div class="item">
						<picture> <!-- <source srcset="img/index/002.jpg" media="(min-width:50em)">
						<source srcset="img/index/002.jpg" media="(min-width:30em)"> --> <img
							src="img/index/002.jpg" alt="002" /> </picture>
					</div>
					<div class="item">
						<picture> <!--<source srcset="img/index/003.jpg" media="(min-width:50em)">
						<source srcset="img/index/003.jpg" media="(min-width:30em)"> --> <img
							src="img/index/003.jpg" alt="003" /> </picture>
					</div>
				</div>
			</div>
		</div>

		<!-- dg -->
		<section class="center-block clearfix dg">
			<img src="img/index/recommend.png" class="timg center-block" />
			<!--------------------------------------------------------------------------------------------------------------------------------->
			<div class="Areafirstly">
				<div class="Areaopen">
					<!--第一块-->
					<div class="i1">
						<img src="img/index/nav3.jpg" />
					</div>
					<div class="i2 abi">
						<img src="img/index/nav3.jpg" />
					</div>
				</div>
				<!--第2块-->
				<div class="Area">
					<div class="i3">
						<img src="img/index/nav3.jpg" />
					</div>
					<div class="i3 abi">
						<img src="img/index/nav3.jpg" />
					</div>
				</div>
				<!--第3块-->
				<div>
					<div class="i1">
						<img src="img/index/nav3.jpg" />
					</div>
					<div class="i2 abi">
						<img src="img/index/nav3.jpg" />
					</div>
				</div>
				<!--第4块-->
				<div>
					<div class="i4">
						<img src="img/index/nav3.jpg" />
					</div>
					<div class="i5 abi">
						<img src="img/index/nav3.jpg" />
					</div>
				</div>
				<!--第5块-->
				<div class="Areaend pull-right">
					<div>
						<a>
							<h3 class="ng-binding">一段描述</h3>
							<p class="ng-binding">一段描述</p>
						</a>
					</div>
					<div>
						<a>
							<h3 class="ng-binding">一段描述</h3>
							<p class="ng-binding">一段描述</p>
						</a>
					</div>
					<div>
						<a>
							<h3 class="ng-binding">一段描述</h3>
							<p class="ng-binding">一段描述</p>
						</a>
					</div>
					<div class="Areaend-end">
						<a>
							<h3 class="ng-binding">一段描述</h3>
							<p class="ng-binding">一段描述</p>
						</a>
					</div>
				</div>
			</div>
		</section>

		<!-- >800显示 -->
		<section class="nav-l clearfix ">
			<div class="food-l">
				<div>
					<i class="icon-food icon-2x"></i>
					<div>美食</div>
				</div>
			</div>
			<div class="live-l">
				<div>
					<i class="icon-beer icon-2x"></i>
					<div class="">生活</div>
				</div>
			</div>
			<div class="movie-l">
				<div>
					<i class="icon-facetime-video icon-2x"></i>
					<div class="">电影</div>
				</div>
			</div>
			<div class="recreation-l">
				<div>
					<i class="icon-coffee icon-2x"></i>
					<div class="">娱乐</div>
				</div>
			</div>
			<div class="grogshop-l">
				<div>
					<i class="icon-home icon-2x"></i>
					<div class="">酒店</div>
				</div>
			</div>
		</section>


		<!-- 内容 -->
		<section class="center clearfix">

			<!--美食 -->
			<section class="cen-food clearfix">

				<div class="clearfix">
					<div class="title pull-left">
						<i class="icon-food icon-2x"></i><span class="pull-right">美食</span>
					</div>
					<ul class="pull-right">
						<li><a href="#">精选品牌</a></li>
						<li><span class="sep-lines"></span></li>
						<li><a href="#">小吃快餐</a></li>
						<li><span class="sep-lines"></span></li>
						<li><a href="#">蛋糕</a></li>
						<li><span class="sep-lines"></span></li>
						<li><a href="#">其它美食</a></li>
						<li><span class="sep-lines"></span></li>
						<li><a href="#">全部</a> <i class=" icon-angle-right"></i></li>
					</ul>
				</div>

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

			<!-- 电影 -->
			<section class="clearfix">
				<div>
					<div class="title pull-left">
						<i class="icon-facetime-video icon-2x"></i><span
							class="pull-right">电影</span>
					</div>
					<ul class="pull-right">
						<li><a href="#">在线订座</a></li>
						<li><span class="sep-lines"></span></li>
						<li><a href="#">电影票团购</a></li>
						<li><span class="sep-lines"></span></li>
						<li><a href="#">湄公河行动</a></li>
						<li><span class="sep-lines"></span></li>
						<li><a href="#">幽灵医院</a></li>
						<li><span class="sep-lines"></span></li>
						<li><a href="#">全部</a> <i class=" icon-angle-right"></i></li>
					</ul>

				</div>
			</section>

			<!-- 娱乐 -->
			<section>
				<div class="clearfix">
					<div class="title pull-left">
						<i class="icon-coffee icon-2x"></i><span class="pull-right">娱乐</span>
					</div>
					<ul class="pull-right">
						<li><a href="#">密室逃脱</a></li>
						<li><span class="sep-lines"></span></li>
						<li><a href="#">KTV</a></li>
						<li><span class="sep-lines"></span></li>
						<li><a href="#">温泉洗浴</a></li>
						<li><span class="sep-lines"></span></li>
						<li><a href="#">足疗按摩</a></li>
						<li><span class="sep-lines"></span></li>
						<li><a href="#">全部</a> <i class=" icon-angle-right"></i></li>
					</ul>

				</div>
			</section>

			<!-- 生活 -->
			<section>
				<div class="clearfix">
					<div class="title pull-left">
						<i class="icon-beer icon-2x"></i><span class="pull-right">生活</span>
					</div>
					<ul class="pull-right">
						<li><a href="#">配镜</a></li>
						<li><span class="sep-lines"></span></li>
						<li><a href="#">鲜花</a></li>
						<li><span class="sep-lines"></span></li>
						<li><a href="#">照片冲印</a></li>
						<li><span class="sep-lines"></span></li>
						<li><a href="#">宠物服务</a></li>
						<li><span class="sep-lines"></span></li>
						<li><a href="#">全部</a> <i class=" icon-angle-right"></i></li>
					</ul>

				</div>
			</section>

			<!-- 酒店 -->
			<section>
				<div class="clearfix">
					<div class="title pull-left">
						<i class="icon-home icon-2x"></i><span class="pull-right">酒店</span>
					</div>
					<ul class="pull-right">
						<li><a href="#">配镜</a></li>
						<li><span class="sep-lines"></span></li>
						<li><a href="#">鲜花</a></li>
						<li><span class="sep-lines"></span></li>
						<li><a href="#">照片冲印</a></li>
						<li><span class="sep-lines"></span></li>
						<li><a href="#">宠物服务</a></li>
						<li><span class="sep-lines"></span></li>
						<li><a href="#">全部</a> <i class=" icon-angle-right"></i></li>
					</ul>

				</div>
			</section>

		</section>

		<!-- 底部社区 -->
		<div class="community">
			<div class="ysq">
				<img src="img/index/ysq.png" class="center-block" />
			</div>

			<div class="clearfix">
				<div>
					<ul class="footcommunity">
						<li><img src="img/index/fot4.jpg" /><img
							src="img/index/fot4-l.jpg" /></li>
						<li><img src="img/index/fot2.jpg" /><img
							src="img/index/fot2-l.jpg" /></li>
						<li><img src="img/index/fot3.jpg" /><img
							src="img/index/fot3-l.jpg" /></li>
						<li><img src="img/index/fot1.jpg" /><img
							src="img/index/fot1-l.jpg" /></li>
					</ul>
				</div>
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
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/tipso.min.js"></script>
	<script src="js/index.js" charset="utf-8"></script>

</body>
</html>
