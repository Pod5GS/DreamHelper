<%@ page language="java" import="java.util.*" contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <!--<meta http-equiv="X-UA-Compatible" content="IE=edge">-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="ico/favicon.ico">
    <title>DreamHelper-兴趣测试</title>
    <!-- Bootstrap core CSS -->
    <!--<link href="css/bootstrap.min.css" rel="stylesheet">-->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
  </head>
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
              <li class="active">兴趣测试-结果</li>
            </ol>                      
          </div> <!-- / .row -->
        </div> <!-- / .container -->
      </div> <!-- / .Topic Header -->   
      </div> <!-- / .wrapper -->
      <div class="container">
        <div class="row">
          <div class="col-sm-12">
            <h2 class="uline-title text-center">霍兰德职业兴趣测试-结果</h2>
          </div>  
        </div>
      </div>
      <div class="container">
		  <div class="row">
            <div class="panel panel-red">
					<div class="panel-heading">您的得分</div>
					<div class="panel-body">
					  <div style="width:50%;float:left;">
			            <canvas id="points" height="50" width="50"></canvas>
		              </div>
						<p><s:property value="#request.testscore"/></p>
						<p>您的霍兰德代码：<s:property value="#request.composedtype"/></p>
					</div>
			</div>
		    <div class="panel panel-blue">
					<div class="panel-heading">适合您的职业</div>
					<div class="panel-body">
						<p><s:property value="#request.suitablejob"/></p>
					</div>
			</div>
			<div class="panel panel-red">
					<div class="panel-heading">您的测试结果分析</div>
					<div class="panel-body">
						<p><s:property value="#request.catedescription[0]"/></p>
						<p><s:property value="#request.catedescription[1]"/></p>
						<p><s:property value="#request.catedescription[2]"/></p>
					</div>
			</div>
		  </div><!-- / .row -->
       </div><!-- / .container -->
    
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
    
    <!-- Bootstrap core JavaScript -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/Chart.js"></script>
  <script>
    var pointsChartData = {
		labels: ["艺术型A", "常规型C", "现实型R", "研究型I","企业型E","社会型S"],
		datasets: [
		      {
		        label: '<s:property value="school" escape="false"/>',
		        fillColor: "rgba(220,220,220,0.2)",
				strokeColor: "#e69138",
				pointColor: "rgba(220,220,220,1)",
				pointStrokeColor: "#fff",
				pointHighlightFill: "#fff",
				pointHighlightStroke: "rgba(220,220,220,1)",
				data: [<s:property value="typeA.typevalue"/>,<s:property value="typeC.typevalue"/>,<s:property value="typeR.typevalue"/>,<s:property value="typeI.typevalue"/>,<s:property value="typeE.typevalue"/>,<s:property value="typeS.typevalue"/>]
		      },
		]
	};
	window.onload = function(){
		window.myRadar = new Chart(document.getElementById("points").getContext("2d")).Radar(pointsChartData, {
			responsive: true
		});
	}
    function go(){
        location.href = "onloadschoolinquery?";
    }
  </script>
    <script src="js/jquery-1.11.0.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/scrolltopcontrol.js"></script>
	<script src="js/SmoothScroll.js"></script>
    <script src="js/custom.js"></script>
    
  </body>
</html>