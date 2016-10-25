<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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

<title>My JSP 'particulars.jsp' starting page</title>

<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
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
<link rel="stylesheet" href="css/top-footer.css" media="all" />
<link rel="stylesheet" href="css/particulars.css" media="all" />
</head>

<body>
	<!--[if lte IE 8]>
		<p class="browserupgrade text-center">为了获得更好的体验 请点击<a href="browsehappy.com">这里</a>更新您的浏览器</p>
	<![endif]-->

	<!-- 导航 -->
	<header class="clearfix"> <nav>
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
	</nav> </header>

	<!-----------内容------------------------>
	<!-- 导航 -->
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
		<!-- 面包屑导航 -->
		<div class="breadcrumb clearfix">
			<ul>
				<li>团购</li>
				<li><i class="icon-angle-right"></i></li>
				<li>美食</li>
				<li><i class="icon-angle-right"></i></li>
				<li>亚马逊巴西烤肉团购</li>
			</ul>
		</div>
		<!-- 主体内容 -->
		<div class="subject center-block">
			<!-- 标题 -->
			<div class="title">
				<h3>九方亚马逊烤肉自助餐餐厅</h3>
				<p>仅售64元，价值69元工作日单人自助！免费WiFi！</p>
			</div>
			<!-- 图片 and 价格 -->
			<div class="photo-and-pay clearfix">
				<div class="pull-left">
					<div class="photo">
						<img alt="photo" src="img/particulars/ph1.jpg" height="285">
					</div>
					<div class="photo-s">
						<img alt="photo" src="img/particulars/ph1.jpg" height="65">
					</div>
					<div class="photo-s">
						<img alt="photo" src="img/particulars/ph1.jpg" height="65">
					</div>
					<div class="photo-s">
						<img alt="photo" src="img/particulars/ph1.jpg" height="65">
					</div>
					<div class="photo-s">
						<img alt="photo" src="img/particulars/ph1.jpg" height="65">
					</div>
				</div>
				<!-- 价格 -->
				<div class="pull-right pay-box">
					<div class="pay-title">
						<div class="pay pull-left">
							<span>￥</span>64
						</div>
						<div class="out-pay pull-right">
							<h4>￥69</h4>
							<p>价值</p>
						</div>
					</div>
					<!-- 列表 -->
					<div class="ugc-strategy-area">
						<ul class="clearfix">
							<li>4328人已团购</li>
							<li><i class="icon-question-sign"></i>暂无评论</li>
							<li><i class="icon-heart-empty">随便退</i></li>
						</ul>
					</div>
					<!-- 有效期 选择价格 -->
					<div class="number clearfix">
						<div>数量</div>
						<div>
							<input type="button" value="-"><input type="text"
								class="text-number" value="1"><input type="button"
								value="+">
						</div>
					</div>
					<input type="button" class="num-btn" value="立即抢购">
				</div>
				<!-- 收藏 -->
				<!-- end -->
			</div>
			<div class="collect">
				<i class="icon-heart-empty"></i>&nbsp;&nbsp;收藏
			</div>
		</div>
		<!-- end suject -->
		<hr>
		<!-- 其他热门 -->
		<div class="other-hot center-block">
			<h3>九方亚马逊烤肉自助餐餐厅其他热卖套餐</h3>
			<div class="other-pay clearfix">
				<ul class="clearfix">
					<li>￥74</li>
					<li>9.4折</li>
					<li>周末单人自助！免费wifi!</li>
					<li>1622人团购</li>
				</ul>
				<ul class="clearfix">
					<li>￥74</li>
					<li>9.4折</li>
					<li>周末单人自助！免费wifi!</li>
					<li>1622人团购</li>
				</ul>
			</div>
			<!-- 详情 -->
			<div class="details clearfix">
				<ul class="clearfix">
					<li class="active"><a href="#">本单详情</a></li>
					<li><a href="#">消费提示</a></li>
					<li><a href="#">商家介绍</a></li>
					<li><a href="#">会员评价(386)</a></li>
				</ul>
			</div>
			<!-- 会员评分 -->
			<div class="vip-grade-title">
				<h3>会员评分</h3>
			</div>
			<div class="vip-grade">
				<span>4.4</span><span>共有381人评价，满意率</span><span>0%</span>
			</div>
			<div class="clearfix ditu">
				<div id="map" class="map pull-left">
					<div id="allmap"></div>
				</div>

				<div class="pull-right">
					<div>筛选：</div>
					<div>
						<a href="#">九方亚马逊烤肉自助餐餐厅</a>
					</div>
					<p>赣州市章贡区长征大道1号中航城九方购物广场中心四楼L15店</p>
					<h4>07978331777</h4>
				</div>
			</div>
			<!-- 套餐内容 -->
			<div class="package">
				<div class="">
					<h3>套餐内容</h3>
				</div>
				<div class="package-center">
					<ul class="clearfix">
						<li>团单内容</li>
						<li>数量/规格</li>
						<li>小计</li>
					</ul>
					<ul class="clearfix">
						<li>工作日单人自助</li>
						<li>1位</li>
						<li>69元</li>
					</ul>
					<ul class="clearfix">
						<li>烤肉、中餐、西式点心、中式点心、水果、酒水饮料：烤串、烤翅、烤羊腿、烤虾、烤生蚝、烤秋刀鱼、烤鱿鱼</li>
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
	<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
	<script
		src="http://api.map.baidu.com/api?v=2.0&ak=67jMQ5DmYTe1TLMBKFUTcZAR"></script>
	<script src="js/baiduditu.js"></script>
</body>
</html>
