<%@ page language="java" import="java.util.*"
	contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<html lang="en">
<head>
<meta charset="utf-8">
<!--<meta http-equiv="X-UA-Compatible" content="IE=edge">-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" href="ico/favicon.ico">
	<link href='http://fonts.useso.com/css?family=Source+Sans+Pro:400,300,600,400italic,700' rel='stylesheet' type='text/css'>
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate1.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Simple Line Icons -->
	<link rel="stylesheet" href="css/simple-line-icons.css">
	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/magnific-popup.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/style5.css">
	<link href="css/style.css" rel="stylesheet">
<title>DreamHelper-主页</title>
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<script type="text/javascript">
    function go(){
        location.href = "onloadschoolinquery?";
    }
</script>
<body>
	<!-- Navigation -->
	<div class="navbar navbar-default navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand">DreamHelper</a>
			</div>
			<div class="collapse navbar-collapse">
				<ul class="nav navbar-nav navbar-right">
					<li class="hidden-sm"><a href="index.jsp">主页</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">学校推荐</a>
						<ul class="dropdown-menu">
							<li><a href="schoolrecommend.jsp">专业不明确</a></li>
							<li><a href="schoolrecommendwithmajor.jsp">专业明确</a></li>
						</ul>
					</li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">查询</a>
						<ul class="dropdown-menu">
							<li><a onclick="go()">高校查询</a></li>
						</ul>
					</li>
					<li class="hidden-sm"><a href="test-index.jsp">兴趣测试</a></li>
			    </ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</div>
	<!-- / .navigation -->
	<span id="header_shadow" style="width: 100%; top: 30px;"></span>
	<section id="fh5co-home" data-section="home" style="background-image: url(img/fullscreenslide.jpg);" data-stellar-background-ratio="0.5">
		<div class="gradient"></div>
		<div class="container">
			<div class="text-wrap">
				<div class="text-inner">
					<div class="row">
						<div class="col-md-8 col-md-offset-2">
						    <h1 class="to-animate">我是</h1>
							<h2 class="to-animate">一个高考志愿填报助手</h2>
							<h1 class="to-animate">如果你</h1>
							<h2 class="to-animate">不知道如何填报高考志愿？</h2>
							<h2 class="to-animate">不知道自己的性格适合什么专业？</h2>
							<h2 class="to-animate">不知道自己的分数能够去哪些大学？？</h2>
							<h2 class="to-animate">不知道......</h2>
							<h1 class="to-animate">那么我可以帮你...</h1>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="slant"></div>
	</section>
	<section id="fh5co-intro">
		<div class="container">
			<div class="row row-bottom-padded-lg">
				<div class="fh5co-block to-animate" style="background-image: url(img/service2.jpg;">
					<div class="overlay-darker"></div>
					<div class="overlay"></div>
					<div class="fh5co-text">
					    <i class="fh5co-intro-icon icon-bulb"></i>
						<h2>个性化推荐</h2>
						<p>根据您的分数，结合您的兴趣偏好，为您推荐合适的大学</p>
						<p><a href="schoolrecommend.jsp" class="btn btn-primary">开始推荐</a></p>
					</div>
				</div>
				<div class="fh5co-block to-animate" style="background-image: url(img/service1.jpg);">
					<div class="overlay-darker"></div>
					<div class="overlay"></div>
					<div class="fh5co-text">
						<i class="fh5co-intro-icon icon-university"></i>
						<h2>高校/专业查询</h2>
						<p>查询各大学的历史录取数据、专业信息</p>
						<p><a href="onloadschoolinquery?" class="btn btn-primary">开始查询</a></p>
					</div>
				</div>
				<div class="fh5co-block to-animate" style="background-image: url(img/service3.jpg);">
					<div class="overlay-darker"></div>
					<div class="overlay"></div>
					<div class="fh5co-text">
						<i class="fh5co-intro-icon icon-paint-brush"></i>
						<h2>职业兴趣测试</h2>
						<p>霍兰德职业兴趣量表，让您更加了解你自己，选择适合自己的专业</p>
						<p><a href="test-index.jsp" class="btn btn-primary">开始测试</a></p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section id="fh5co-counters" style="background-image: url(img/datapic.jpg);" data-stellar-background-ratio="0.5">
		<div class="fh5co-overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-12 section-heading text-center to-animate">
					<h2>数据支持</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3 col-sm-6 col-xs-12">
					<div class="fh5co-counter to-animate">
						<i class="fh5co-counter-icon icon-calendar to-animate-2"></i>
						<span class="fh5co-counter-number js-counter" data-from="0" data-to="4" data-speed="5000" data-refresh-interval="50">4</span>
						<span class="fh5co-counter-label">年</span>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-12">
					<div class="fh5co-counter to-animate">
						<i class="fh5co-counter-icon icon-location-arrow to-animate-2"></i>
						<span class="fh5co-counter-number js-counter" data-from="0" data-to="30" data-speed="5000" data-refresh-interval="50">30</span>
						<span class="fh5co-counter-label">个省份</span>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-12">
					<div class="fh5co-counter to-animate">
						<i class="fh5co-counter-icon icon-graduation-cap to-animate-2"></i>
						<span class="fh5co-counter-number js-counter" data-from="0" data-to="122" data-speed="5000" data-refresh-interval="50">122</span>
						<span class="fh5co-counter-label">所学校</span>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-12">
					<div class="fh5co-counter to-animate">
						<i class="fh5co-counter-icon icon-code to-animate-2"></i>
						<span class="fh5co-counter-number js-counter" data-from="0" data-to="298460" data-speed="5000" data-refresh-interval="50">298460</span>
						<span class="fh5co-counter-label">条数据</span>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section id="fh5co-about" data-section="about">
		<div class="container">
			<div class="row">
				<div class="col-md-12 section-heading text-center">
					<h2 class="to-animate">选校三步曲</h2>
					<div class="row">
						<div class="col-md-8 col-md-offset-2 subtext to-animate">
							<h3>三步确定适合你的学校：</h3>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4">
					<div class="fh5co-person text-center to-animate">
						<figure><span class="icon icon-1 icon-1c"><img src="img/test-icon.png" /></span></figure>
						<h3>职业性格测试</h3>
						<span class="fh5co-position">Step 1</span>
						<p>帮助自己更好地了解自己，明确自己的性格，选择合适的专业。</p>
					</div>
				</div>
				<div class="col-md-4">
					<div class="fh5co-person text-center to-animate">
						<figure><span class="icon icon-1 icon-1c"><img src="img/search-icon.png" /></span></figure>
						<h3>个性化推荐</h3>
						<span class="fh5co-position">Step 2</span>
						<p>输入自己的高考信息及偏好，我们将结合历史数据给您推荐适合的学校。</p>
					</div>
				</div>
				<div class="col-md-4">
					<div class="fh5co-person text-center to-animate">
						<figure><span class="icon icon-1 icon-1c"><img src="img/recommend-icon.png" /></span></figure>
						<h3>对比学校</h3>
						<span class="fh5co-position">Step 3</span>
						<p>从我们给您推荐的学校中选择您倾向的进行详细的对比，确定结果。</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section id="fh5co-services" data-section="services">
		<div class="container">
			<div class="row">
				<div class="col-md-12 section-heading text-left">
					<h2 class=" left-border to-animate">功能详情</h2>
					<div class="row">
						<div class="col-md-8 subtext to-animate">
							<h3>基于信息融合，采用个性化推荐算法，帮助你选择最适合自己的大学</h3>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-6 fh5co-service to-animate">
					<i class="icon to-animate-2 icon-bulb"></i>
					<h3>个性化推荐</h3>
					<p>结合考生的成绩与各高校的历史数据，以及考生在学校综合条件、学习氛围、生活环境、职业前景四个方面的偏好程度，推荐合适的学校。只需要简单几步，就能帮您找到心仪的学校。</p>
				</div>
				<div class="col-md-6 col-sm-6 fh5co-service to-animate">
					<i class="icon to-animate-2 icon-layers2"></i>
					<h3>高校/专业查询</h3>
					<p>DreamHelper汇集了122所985/211大学近3年的录取数据，以及各个学校的基本情况，让考生全方位地了解学校。同时还提供全面的专业信息，让考生全面地了解各个专业的学习内容以及未来对应的就业行业。</p>
				</div>

				<div class="clearfix visible-sm-block"></div>

				<div class="col-md-6 col-sm-6 fh5co-service to-animate">
					<i class="icon to-animate-2 icon-pencil"></i>
					<h3>职业兴趣测试</h3>
					<p>采用由美国著名职业指导专家国Ｊ.霍兰德所编制的霍兰德SDS职业兴趣量表，帮助被试者发现和确定自己的职业兴趣和能力专长,
						从而科学地选择自己喜欢的职业，选择与之相符的专业。</p>
				</div>
			</div>
		</div>
	</section>
	<section id="fh5co-contact" data-section="contact">
		<div class="container">
			<div class="row">
				<div class="col-md-12 section-heading text-center">
					<h2 class="to-animate">提供反馈</h2>
					<div class="row">
						<div class="col-md-8 col-md-offset-2 subtext to-animate">
							<h3>您的建议是我们前进的动力！请给我们填写反馈信息。</h3>
						</div>
					</div>
				</div>
			</div>
			<div class="row row-bottom-padded-md">
				<div class="col-md-6 to-animate">
					<h3>联系方式</h3>
					<ul class="fh5co-contact-info">
						<li class="fh5co-contact-address ">
							<i class="icon-home"></i>
							北京市海淀区 <br>西土城路10号北京邮电大学
						</li>
						<li><i class="icon-phone"></i> 8008208838</li>
						<li><i class="icon-envelope"></i>dreamhelper@bupt.edu.cn</li>
						<li><i class="icon-globe"></i> <a href="#" target="_blank">dreamhelper.cn</a></li>
					</ul>
				</div>

				<div class="col-md-6 to-animate">
					<h3>反馈表</h3>
					<div class="form-group ">
						<label for="name" class="sr-only">姓名</label>
						<input id="name" class="form-control" placeholder="姓名" type="text">
					</div>
					<div class="form-group ">
						<label for="email" class="sr-only">电子邮箱</label>
						<input id="email" class="form-control" placeholder="电子邮箱" type="email">
					</div>
					<div class="form-group ">
						<label for="phone" class="sr-only">电话</label>
						<input id="phone" class="form-control" placeholder="电话" type="text">
					</div>
					<div class="form-group ">
						<label for="message" class="sr-only">反馈</label>
						<textarea name="" id="message" cols="30" rows="5" class="form-control" placeholder="反馈"></textarea>
					</div>
					<div class="form-group ">
						<input class="btn btn-primary btn-lg" value="提交反馈" type="submit">
					</div>
					</div>
				</div>
			</div>
	</section>
	<footer>
		<div class="container">
			<div class="row">
				<!-- Contact Us -->
				<div class="col-xs-12 col-sm-3 col-md-3">
					<h4>联系我们</h4>
					<p>
						北京市海淀区 <br /> 
						西土城路10号北京邮电大学 <br /> 
						<br /> 
						电话 : 8008208838<br />
						传真 : 010-5372818 <br /> <br />
					</p>
				</div>
				<!-- / .Contact Us -->
				<!-- Two Empty PlaceHolder -->
				<div class="col-xs-12 col-sm-3 col-md-3"></div>
				<div class="col-xs-12 col-sm-3 col-md-3"></div>
				<!-- / .Two Empty PlaceHolder -->
				<!-- Useful Links -->
				<div class="col-xs-12 col-sm-3 col-md-3">
					<h4>网站地图</h4>
					<p>
						<a href="index.jsp">主页</a> <br /> 
						<a href="schoolrecommend.jsp">学校推荐</a> <br /> 
						<a onclick="go()">高校查询</a> <br /> 
						<a href="#">专业查询</a> <br /> 
						<a href="test-index.jsp">兴趣测试</a> <br />
					</p>
				</div>
				<!-- / .Useful Links -->
			</div>
			<!-- / .row -->
		</div>
		<!-- / .container -->
	</footer>
	<!-- / .Footer -->

	<!-- JavaScript -->
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Stellar Parallax -->
	<script src="js/jquery.stellar.min.js"></script>
	<!-- Counter -->
	<script src="js/jquery.countTo.js"></script>
	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/magnific-popup-options.js"></script>
	<!-- Main JS (Do not remove) -->
	<script src="js/main.js"></script>
</body>
</html>