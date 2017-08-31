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
<title>DreamHelper-学校推荐</title>
<!-- Bootstrap core CSS -->
<!--<link href="css/bootstrap.min.css" rel="stylesheet">-->
<link href="css/style.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/animate.css" rel="stylesheet">
<link href="css/lightbox.css" rel="stylesheet">
<link href="css/isotope.css" rel="stylesheet">
<link href='http://fonts.useso.com/css?family=PT+Sans+Narrow'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="css/chosen.css">
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<style>
.sco_box {
	float: left;
	height: 30px;
	line-height: 30px;
	background-color: #FFF;
	border: 1px solid #eaeaea;
	text-align: left;
	padding-right: 5px;
	font-size: 16px;
	font-weight: normal;
	position: relative;
	margin-right: 30px;
}

.w100 {
	width: 100px;
}

.input {
	border: 0;
	border: 1px solid #60badf;
	color: #999;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	margin-right: 30px;
	width: 200px;
}
table.scale-rating th, table.matrix-rating th {
	text-align: center;
	font-size: 14px;
	font-weight: normal;
	padding: 5px;
	word-break: break-all;
}

table.scale-rating {
	width: 100%;
	margin-bottom:20px;
}

.scale-div {
	width: 100%;
	background: #fff;
	padding: 0 15px;
}

table.scale-rating th {
	padding: 8px 0;
}

table.scale-rating td {
	text-align: center;
	padding: 10px 0px;
	border-top: 1px solid #A0A0A0;
	width: 32px;
}

table.scale-rating a.rate-off {
	padding: 5px 10px;
	text-decoration: none;
	color: #333;
	font-weight: normal;
	font-size: 14px;
	border-radius: 18px;
	-moz-box-shadow: 0 1px 2px #606060;
	-webkit-box-shadow: 0 1px 2px #606060;
	box-shadow: 0 1px 2px #606060;
	display: inline-block;
	background: #D6D6D6;
	background-image: -moz-linear-gradient(top, #dadada, #ccc);
	background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0, #dadada),
		color-stop(1, #ccc));
	filter:
		"progid:DXImageTransform.Microsoft.gradient(startColorStr='#dadada',EndColorStr='#cccccc')";
}

table.scale-rating a.rate-on {
	color: #fff;
	background: #9DC149;
	background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0, #B8E055),
		color-stop(1, #9DC149)) !important;
	background-image: -moz-linear-gradient(top, #B8E055, #9DC149) !important;
	filter:
		"progid:DXImageTransform.Microsoft.gradient(startColorStr='#B8E055',EndColorStr='#9DC149')";
}
h3{
    color:#2BABCF;
}
table[Attributes Style] {
    width: 100%;
    border-top-width: 0px;
    border-right-width: 0px;
    border-bottom-width: 0px;
    border-left-width: 0px;
    border-spacing: 0px;
}
.colleges_list ul li {
	border-bottom: 1px solid #e4e4e4;
	padding: 20px 0;
	overflow: hidden;
}

ul, ul li {
	list-style-type: none;
	padding: 0;
	margin: 0;
}

li {
	display: list-item;
	text-align: -webkit-match-parent;
}

.colleges_pic {
	float: left;
	padding-right: 30px;
	height: 130px;
}

.colleges_msg {
	float: left;
	width:484px;
	position: relative;
}

.contrast_btns {
	float: left;
	_float: none;
	padding-top: 40px;
	position: relative;
}

h4 {
	color: #2BABCF;
}
.btns01{
    font-size:14px;
}
.btns01 a {
	text-align: center;
	float: left;
	color: #FFF;
	width: 94px;
	height: 36px;
	line-height: 36px;
	display: block;
	background-color: #2BABCF;
	-moz-border-radius: 3px;
	-webkit-border-radius: 3px;
	border-radius: 3px;
}
.project-filter .filter-selected{
    background: #2babcf;
    border: 1px solid #2babcf;
    color: #fff;
}
</style>
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
						<li class="active">学校推荐(专业不明确)</li>
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
			    <h3>
			      <span>考生信息</span>
		        </h3>
		        <hr/>
				<select data-placeholder="选择省份" name="province" id="province" class="chosen-select" style="width:100px;">
					<option value=""></option>
					<option value="北京">北京</option>
					<option value="上海">上海</option>
					<option value="天津">天津</option>
					<option value="重庆">重庆</option>
					<option value="河北">河北</option>
					<option value="山西">山西</option>
					<option value="内蒙古">内蒙古</option>
					<option value="辽宁">辽宁</option>
					<option value="吉林">吉林</option>
					<option value="黑龙江">黑龙江</option>
					<option value="江苏">江苏</option>
					<option value="浙江">浙江</option>
					<option value="安徽">安徽</option>
					<option value="福建">福建</option>
					<option value="江西">江西</option>
					<option value="山东">山东</option>
					<option value="河南">河南</option>
					<option value="湖北">湖北</option>
					<option value="湖南">湖南</option>
					<option value="广东">广东</option>
					<option value="广西">广西</option>
					<option value="海南">海南</option>
					<option value="四川">四川</option>
					<option value="贵州">贵州</option>
					<option value="云南">云南</option>
					<option value="西藏">西藏</option>
					<option value="陕西">陕西</option>
					<option value="甘肃">甘肃</option>
					<option value="青海">青海</option>
					<option value="宁夏">宁夏</option>
					<option value="新疆">新疆</option>
				</select> 
				<select data-placeholder="选择文理分科" name="type" id="type" class="chosen-select" style="width:150px;">
					<option value=""></option>
					<option value="文科">文科</option>
					<option value="理科">理科</option>
				</select> 
				<input type="text" class="input" name="usrScore" id="score" placeholder="输入您的分数"> 
				<input type="text" class="input" name="baseScore" id="basescore" placeholder="输入您所在省的一本线">
				<br/>
				<br/>
				<a href="schoolrecommendwithmajor.jsp" style="font-size:13px;">已经确定了申请的专业？点击这里</a>
			</div>
		</div>
		<!-- / .container -->
		<div class="container">
			<div class="row">
			    <h3>
			      <span>重要性指标</span>
		        </h3>
		        <hr/>
				<p>您认为学校的综合条件对您选择学校的影响</p>
				<table cellspacing='0' class='scale-rating'>
					<tbody>
						<tr>
							<th colspan='5'>
								<div style='float:left;padding-left:10px;'>非常不重要</div>
								<div style='float:right;padding-right:10px;'>非常重要</div>
								<div style='clear:both;'></div>
							</th>
						</tr>
						<tr tp='d'>
							<td style='text-align:center;'><a id='a1'
								class='rate-off ui-link' val='1' onclick='clicka1()'>1</a></td>
							<td style='text-align:center;'><a id='a2'
								class='rate-off ui-link' val='2' onclick='clicka2()'>2</a></td>
							<td style='text-align:center;'><a id='a3'
								class='rate-off ui-link' val='3' onclick='clicka3()'>3</a></td>
							<td style='text-align:center;'><a id='a4'
								class='rate-off ui-link' val='4' onclick='clicka4()'>4</a></td>
							<td style='text-align:center;'><a id='a5'
								class='rate-off ui-link' val='5' onclick='clicka5()'>5</a></td>
						</tr>
					</tbody>
				</table>
				<p>您认为学校的学习氛围对您选择学校的影响</p>
				<table cellspacing='0' class='scale-rating'>
					<tbody>
						<tr>
							<th colspan='5'>
								<div style='float:left;padding-left:10px;'>非常不重要</div>
								<div style='float:right;padding-right:10px;'>非常重要</div>
								<div style='clear:both;'></div>
							</th>
						</tr>
						<tr tp='d'>
							<td style='text-align:center;'><a id='b1'
								class='rate-off ui-link' val='1' onclick='clickb1()'>1</a></td>
							<td style='text-align:center;'><a id='b2'
								class='rate-off ui-link' val='2' onclick='clickb2()'>2</a></td>
							<td style='text-align:center;'><a id='b3'
								class='rate-off ui-link' val='3' onclick='clickb3()'>3</a></td>
							<td style='text-align:center;'><a id='b4'
								class='rate-off ui-link' val='4' onclick='clickb4()'>4</a></td>
							<td style='text-align:center;'><a id='b5'
								class='rate-off ui-link' val='5' onclick='clickb5()'>5</a></td>
						</tr>
					</tbody>
				</table>
				<p>您认为学校的生活环境对您选择学校的影响</p>
				<table cellspacing='0' class='scale-rating'>
					<tbody>
						<tr>
							<th colspan='5'>
								<div style='float:left;padding-left:10px;'>非常不重要</div>
								<div style='float:right;padding-right:10px;'>非常重要</div>
								<div style='clear:both;'></div>
							</th>
						</tr>
						<tr tp='d'>
							<td style='text-align:center;'><a id='c1'
								class='rate-off ui-link' val='1' onclick='clickc1()'>1</a></td>
							<td style='text-align:center;'><a id='c2'
								class='rate-off ui-link' val='2' onclick='clickc2()'>2</a></td>
							<td style='text-align:center;'><a id='c3'
								class='rate-off ui-link' val='3' onclick='clickc3()'>3</a></td>
							<td style='text-align:center;'><a id='c4'
								class='rate-off ui-link' val='4' onclick='clickc4()'>4</a></td>
							<td style='text-align:center;'><a id='c5'
								class='rate-off ui-link' val='5' onclick='clickc5()'>5</a></td>
						</tr>
					</tbody>
				</table>
				<p>您认为学校的职业前景对您选择学校的影响</p>
				<table cellspacing='0' class='scale-rating'>
					<tbody>
						<tr>
							<th colspan='5'>
								<div style='float:left;padding-left:10px;'>非常不重要</div>
								<div style='float:right;padding-right:10px;'>非常重要</div>
								<div style='clear:both;'></div>
							</th>
						</tr>
						<tr tp='d'>
							<td style='text-align:center;'><a id='d1'
								class='rate-off ui-link' val='1' onclick='clickd1()'>1</a></td>
							<td style='text-align:center;'><a id='d2'
								class='rate-off ui-link' val='2' onclick='clickd2()'>2</a></td>
							<td style='text-align:center;'><a id='d3'
								class='rate-off ui-link' val='3' onclick='clickd3()'>3</a></td>
							<td style='text-align:center;'><a id='d4'
								class='rate-off ui-link' val='4' onclick='clickd4()'>4</a></td>
							<td style='text-align:center;'><a id='d5'
								class='rate-off ui-link' val='5' onclick='clickd5()'>5</a></td>
						</tr>
					</tbody>
				</table>
				<div style="text-align:right;">
				  <a class="btn btn-lg btn-blue" style="width:200px;" type="submit" onclick="return recommend()">查询</a>
				</div>
			</div>
		</div>
		<hr/>
		<div class="container">
			<div class="row">
				<!-- Categories -->
				<h3>
		          <span>院校属地</span>
		        </h3>
				<ul class="project-filter" id="filters">
					<li><a data-filter="*" class="filter-selected">不限</a></li>
					<li><a data-filter=".北京">北京</a></li>
					<li><a data-filter=".上海">上海</a></li>
					<li><a data-filter=".天津">天津</a></li>
					<li><a data-filter=".重庆">重庆</a></li>
					<li><a data-filter=".河北">河北</a></li>
					<li><a data-filter=".山西">山西</a></li>
					<li><a data-filter=".内蒙古">内蒙古</a></li>
					<li><a data-filter=".辽宁">辽宁</a></li>
					<li><a data-filter=".吉林">吉林</a></li>
					<li><a data-filter=".黑龙江">黑龙江</a></li>
					<li><a data-filter=".江苏">江苏</a></li>
					<li><a data-filter=".浙江">浙江</a></li>
					<li><a data-filter=".安徽">安徽</a></li>
					<li><a data-filter=".福建">福建</a></li>
					<li><a data-filter=".江西">江西</a></li>
					<li><a data-filter=".山东">山东</a></li>
					<li><a data-filter=".河南">河南</a></li>
					<li><a data-filter=".湖北">湖北</a></li>
					<li><a data-filter=".湖南">湖南</a></li>
					<li><a data-filter=".广东">广东</a></li>
					<li><a data-filter=".广西">广西</a></li>
					<li><a data-filter=".河南">海南</a></li>
					<li><a data-filter=".四川">四川</a></li>
					<li><a data-filter=".云南">云南</a></li>
					<li><a data-filter=".西藏">西藏</a></li>
					<li><a data-filter=".山西">陕西</a></li>
					<li><a data-filter=".甘肃">甘肃</a></li>
					<li><a data-filter=".青海">青海</a></li>
					<li><a data-filter=".宁夏">宁夏</a></li>
					<li><a data-filter=".新疆">新疆</a></li>
				</ul>
			</div>
			<!-- / .row -->
		</div>
		<!-- / .container -->
		<hr id="result"/>
		<s:if test="infolist.size() == 0">
		    <div class="container">
		      <div class="row" style="text-align:center;font-size:25px;">
		        <hr/>
		        <a style="color:black;">未查询到结果！</a>
		      </div>
		    </div>
		</s:if>
		<s:else> 
		<div class="container colleges_list" id="isotope-container">
		  <ul>
		    <s:iterator value="result" status="st">
		      <li class="isotope-item <s:property value="province"/> <s:property value="tags"/> <s:property value="type"/>">
		        <div class="col-xs-12 col-sm-2">
		          <div class="colleges_pic">
		            <a target="_blank"> <img src="<s:property value="toppicurl"/>" style="height:80%;"></a>
		          </div>
		        </div>
		        <div class="col-xs-12 col-sm-10" style="display:inline-block;">
		          <div class="colleges_msg">
		            <div class="c_name">
			          <h3 style="color:black;"><s:property value="school" /></h3>
			        </div>
			        <div class="c_msgs">
			          <span>所在地：<s:property value="location" /></span> 
			          <span>隶属：<s:property value="belongto" /></span> 
			          <span>类别：<s:property value="type" /></span> 
			          <br>
			          <span>综合评价：<s:property value="comprehensive" /></span> 
			          <span>学习氛围：<s:property value="atmosphere" /></span> 
			          <span>生活环境：<s:property value="environment" /></span> 
					  <span>职业前景: <s:property value="prospect" /></span> 
			          <br> 
					  <span>重点学科: <s:property value="numoftop" /></span> 
					  <span>硕士点数: <s:property value="numofmaster" /></span> 
					  <span>博士点数: <s:property value="numofphd" /></span>
			        </div>
			        <div class="c_labels">
			          <span style="color:#2BABCF;"><s:property value="tags" /></span>
			        </div>
		          </div>
		          <div class="contrast_btns" style="margin-left:80px;">
		            <div class="btns01">
		               <a class="<s:property value="school" />" onmousedown="show_detail(event)">详情</a>
		            </div>
		          </div>
		        </div>
		      </li>
		    </s:iterator>
		  </ul>
		</div>
		</s:else>

	<!-- Footer -->
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

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="js/jquery-1.11.0.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/scrolltopcontrol.js"></script>
	<script src="js/SmoothScroll.js"></script>
	<script src="js/lightbox-2.6.min.js"></script>
	<script src="js/jquery.isotope.js"></script>
	<script src="js/custom.js"></script>
	<script src="js/portfolio.js"></script>
	<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="js/chosen.jquery.js"></script>
	<script type="text/javascript">
    function go(){
        location.href = "onloadschoolinquery?";
    }
    function GetRequest() {
       var url = location.href; //获取url中"?"符后的字串
       alert(url);
       var theRequest = new Object();
         var strs = url.split("?")[1];
         alert(strs);
         for(var i = 0; i < strs.length; i ++) {
           theRequest[strs[i].split("=")[0]]=(strs[i].split("=")[1]);
        }
       return theRequest;
     }
	function reseta() {
		var a1 = document.getElementById("a1");
		var a2 = document.getElementById("a2");
		var a3 = document.getElementById("a3");
		var a4 = document.getElementById("a4");
		var a5 = document.getElementById("a5");
		a1.setAttribute("class", "rate-off ui-link");
		a2.setAttribute("class", "rate-off ui-link");
		a3.setAttribute("class", "rate-off ui-link");
		a4.setAttribute("class", "rate-off ui-link");
		a5.setAttribute("class", "rate-off ui-link");
	}
	function resetb() {
		var b1 = document.getElementById("b1");
		var b2 = document.getElementById("b2");
		var b3 = document.getElementById("b3");
		var b4 = document.getElementById("b4");
		var b5 = document.getElementById("b5");
		b1.setAttribute("class", "rate-off ui-link");
		b2.setAttribute("class", "rate-off ui-link");
		b3.setAttribute("class", "rate-off ui-link");
		b4.setAttribute("class", "rate-off ui-link");
		b5.setAttribute("class", "rate-off ui-link");
	}
	function resetc() {
		var c1 = document.getElementById("c1");
		var c2 = document.getElementById("c2");
		var c3 = document.getElementById("c3");
		var c4 = document.getElementById("c4");
		var c5 = document.getElementById("c5");
		c1.setAttribute("class", "rate-off ui-link");
		c2.setAttribute("class", "rate-off ui-link");
		c3.setAttribute("class", "rate-off ui-link");
		c4.setAttribute("class", "rate-off ui-link");
		c5.setAttribute("class", "rate-off ui-link");
	}
	function resetd() {
		var d1 = document.getElementById("d1");
		var d2 = document.getElementById("d2");
		var d3 = document.getElementById("d3");
		var d4 = document.getElementById("d4");
		var d5 = document.getElementById("d5");
		d1.setAttribute("class", "rate-off ui-link");
		d2.setAttribute("class", "rate-off ui-link");
		d3.setAttribute("class", "rate-off ui-link");
		d4.setAttribute("class", "rate-off ui-link");
		d5.setAttribute("class", "rate-off ui-link");
	}
	function clicka1() {
		reseta();
		document.getElementById("a1").className = "rate-off ui-link rate-on";
	}
	function clicka2() {
		reseta();
		document.getElementById("a2").className = "rate-off ui-link rate-on";
	}
	function clicka3() {
		reseta();
		document.getElementById("a3").className = "rate-off ui-link rate-on";
	}
	function clicka4() {
		reseta();
		document.getElementById("a4").className = "rate-off ui-link rate-on";
	}
	function clicka5() {
		reseta();
		document.getElementById("a5").className = "rate-off ui-link rate-on";
	}
	function clickb1() {
		resetb();
		document.getElementById("b1").className = "rate-off ui-link rate-on";
	}
	function clickb2() {
		resetb();
		document.getElementById("b2").className = "rate-off ui-link rate-on";
	}
	function clickb3() {
		resetb();
		document.getElementById("b3").className = "rate-off ui-link rate-on";
	}
	function clickb4() {
		resetb();
		document.getElementById("b4").className = "rate-off ui-link rate-on";
	}
	function clickb5() {
		resetb();
		document.getElementById("b5").className = "rate-off ui-link rate-on";
	}
	function clickc1() {
		resetc();
		document.getElementById("c1").className = "rate-off ui-link rate-on";
	}
	function clickc2() {
		resetc();
		document.getElementById("c2").className = "rate-off ui-link rate-on";
	}
	function clickc3() {
		resetc();
		document.getElementById("c3").className = "rate-off ui-link rate-on";
	}
	function clickc4() {
		resetc();
		document.getElementById("c4").className = "rate-off ui-link rate-on";
	}
	function clickc5() {
		resetc();
		document.getElementById("c5").className = "rate-off ui-link rate-on";
	}
	function clickd1() {
		resetd();
		document.getElementById("d1").className = "rate-off ui-link rate-on";
	}
	function clickd2() {
		resetd();
		document.getElementById("d2").className = "rate-off ui-link rate-on";
	}
	function clickd3() {
		resetd();
		document.getElementById("d3").className = "rate-off ui-link rate-on";
	}
	function clickd4() {
		resetd();
		document.getElementById("d4").className = "rate-off ui-link rate-on";
	}
	function clickd5() {
		resetd();
		document.getElementById("d5").className = "rate-off ui-link rate-on";
	}
	function recommend(){
	    var r = /^[0-9]*[1-9][0-9]*$/;
	    var score = document.getElementById("score").value;
	    var basescore = document.getElementById("basescore").value;
	    if(score == "请输入您的高考分数" || basescore == "请输入您所在的一本线"){
	      alert("请将信息填完再提交！");
	      return false;
	    }
	    if(!r.test(score) || !r.test(basescore)){
	      alert("请输入正整数");
	      return false;
	    }
	    var usrCate = document.getElementById("type").value;
	    var province = document.getElementById("province").value;
	    var preflist = $("a.rate-on");
	    if(preflist.length == 4){
	      var comprehensive = preflist[0].getAttribute("val");
	      var atmosphere = preflist[1].getAttribute("val");
	      var environment = preflist[2].getAttribute("val");
	      var prospect = preflist[3].getAttribute("val");
	    }
	    else{
	      alert("请将信息填完再提交！");
	      return false;
	    }
	    location.href = "schoolrecommend?usrScore=" + score + "&baseScore=" + basescore + "&usrCate=" + usrCate + "&province=" + encodeURI(province) + "&comprehensive=" + comprehensive + "&atmosphere=" + atmosphere + "&environment=" + environment + "&prospect=" + prospect + "#filters";
		return false;
	}
	function show_detail(e) {
		if (!e) {
			var e = window.event;
		}
		//获取事件点击元素  
		var targ = e.target;
		//获取元素名称  
		var school_name = targ.className;
		location.href = "schooldetail?school=" + school_name;
	}
	$('#filters li a').click(function(){
	   $('#filters li a').removeClass('filter-selected');
	   $(this).addClass('filter-selected');
	})
</script>
	<script type="text/javascript">
		var config = {
			'.chosen-select' : {},
			'.chosen-select-deselect' : {
				allow_single_deselect : true
			},
			'.chosen-select-no-single' : {
				disable_search_threshold : 10
			},
			'.chosen-select-no-results' : {
				no_results_text : 'Oops, nothing found!'
			},
			'.chosen-select-width' : {
				width : "95%"
			}
		}
		for ( var selector in config) {
			$(selector).chosen(config[selector]);
		}
	</script>
</body>
</html>