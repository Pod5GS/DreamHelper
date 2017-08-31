<%@ page language="java" import="java.util.*"
	contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<!--<meta http-equiv="X-UA-Compatible" content="IE=edge">-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" href="ico/favicon.ico">

<title>DreamHelper-学校查询-详情</title>

<!-- Bootstrap core CSS -->
<!--<link href="css/bootstrap.min.css" rel="stylesheet">-->
<link href="css/style.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/animate.css" rel="stylesheet">
<link href="css/lightbox.css" rel="stylesheet">
<link href='http://fonts.useso.com/css?family=PT+Sans+Narrow'
	rel='stylesheet' type='text/css'>

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<script type="text/javascript">
	function go() {
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

	<!-- Wrapper -->
	<div class="wrapper">

		<!-- Topic Header -->
		<div class="topic">
			<div class="container">
				<div class="row">
					<ol class="breadcrumb hidden-xs">
						<li><a href="index.jsp">主页</a></li>
						<li class="active">学校查询-详情</li>
					</ol>
				</div>
				<!-- / .row -->
			</div>
			<!-- / .container -->
		</div>
		<!-- / .Topic Header -->
		</div>
	<!-- / .wrapper -->
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div class="col-sm-6" style="text-align:center;">
							<img src="<s:property value="toppicurl"/>" class="img-responsive"
								style="width:80%;">
					</div>
					<div class="col-sm-6">
						<h3 class="second-child">
							<span><s:property value="school" /></span>
						</h3>
						<br />
						<h4>
							<span>学校信息</span>
						</h4>
						<table class="table">
							<tbody>
								<tr>
									<td>所在地
									<td>
									<td><s:property value="location" /></td>
								</tr>
								<tr>
									<td>隶属
									<td>
									<td><s:property value="belongto" /></td>
								</tr>
								<tr>
									<td>类别
									<td>
									<td><s:property value="type" /></td>
								</tr>
								<tr>
									<td>重点学科
									<td>
									<td><s:property value="numoftop" /></td>
								</tr>
								<tr>
									<td>硕士点数
									<td>
									<td><s:property value="numofmaster" /></td>
								</tr>
								<tr>
									<td>博士点数
									<td>
									<td><s:property value="numofphd" /></td>
								</tr>
								<tr>
									<td style="color:#2BABCF;"><s:property value="tags" /></td>
									<td>
									<td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<s:iterator value="paragraphs" status="st">
					<p style="text-indent:2em;">
						<s:property value="paragraphs[#st.index]" />
					</p>
				</s:iterator>
				<div></div>
			</div>
			<!-- / .row -->
			<br /> <br />
		</div>
		<!-- / .container -->

	

	<!-- Footer -->
	<footer>
		<div class="container">
			<div class="row">
				<!-- Contact Us -->
				<div class="col-xs-12 col-sm-3 col-md-3">
					<h4>联系我们</h4>
					<p>
						北京市海淀区 <br /> 西土城路10号北京邮电大学 <br /> <br /> 电话 : 8008208838<br />
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
						<a href="index.jsp">主页</a> <br /> <a href="schoolrecommend.jsp">学校推荐</a>
						<br /> <a onclick="go()">高校查询</a> <br /> <a href="#">专业查询</a> <br />
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
	<!-- Bootstrap core JavaScript
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="js/jquery-1.11.0.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/scrolltopcontrol.js"></script>
	<script src="js/SmoothScroll.js"></script>
	<script src="js/lightbox-2.6.min.js"></script>
	<script src="js/custom.js"></script>
</body>
</html>