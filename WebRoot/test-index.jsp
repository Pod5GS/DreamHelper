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
    <title>DreamHelper-兴趣测试</title>
    <!-- Bootstrap core CSS -->
    <!--<link href="css/bootstrap.min.css" rel="stylesheet">-->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href='http://fonts.useso.com/css?family=PT+Sans+Narrow' rel='stylesheet' type='text/css'>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <script>
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

    <!-- Wrapper -->
    <div class="wrapper">
	  <!-- Topic Header -->
      <div class="topic">
        <div class="container">
          <div class="row">            
            <ol class="breadcrumb hidden-xs">
              <li><a href="index.jsp">主页</a></li>
              <li class="active">兴趣测试</li>
            </ol>                      
          </div> <!-- / .row -->
        </div> <!-- / .container -->
      </div> <!-- / .Topic Header -->     
       </div> <!-- / .wrapper -->
      <div class="container">
		  <div class="row">
            <div class="col-sm-12">
              <h2 class="uline-title text-center">霍兰德职业兴趣测试</h2>
            </div>
          </div> <!-- / .row -->
		  <div class="row">
		    <div>
		      <p style="text-indent:2em;">霍兰德职业兴趣测试完整版测试由美国著名职业指导专家霍兰德编制，主要用于确定被测试者的职业兴趣倾向,进而用于指导被测试者选择适合自身职业兴趣的专业发展方向和职业发展方向。霍兰德提出的6种基本职业类型为：实用型R、研究型I、艺术型A、社会型S、企业型E、常规型C。</p>
		    </div>
		    <br/>
		    <div class="text-center">
		      <img src="img/holland-test.jpg"/>
		    </div>
		    <br/>
		    <div>
		      <p style="text-indent:2em;">人们通常倾向选择与自我兴趣类型匹配的职业环境，如具有现实型兴趣的人希望在现实型的职业环境中工作，这样可以最好地发挥个人的潜能。但在具体职业选择中，个体并非一定要选择与自己兴趣完全对应的职业环境，这主要是因为个体本身通常是多种兴趣类型的综合体，出现单一类型显著突出的情况不多，因此评价个体的兴趣类型时也时常以其在六大类型中得分居前三位的类型组合而成，组合时根据每个类型得分高低依次排列字母，构成其兴趣组型，如EIS、AIS等。</p>
		    </div>
		    <div>
		      <p>测试前需知：</p>
		      <p style="text-indent:2em;">霍兰德职业兴趣测试完整版测试题量比较大，测量内容包括职业兴趣类型、职业能力倾向。答案没有好坏、对错之分，不必仔细推敲，结合自己的情况，根据第一印象回答每一题“是”或“否”。</p>
		    </div>
		    <div class="text-center">
		      <a class="btn-animate btn-style btn-lg btn-e btn-primary" href="inittest?">开始测试</a>
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
    <script src="js/jquery-1.11.0.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/scrolltopcontrol.js"></script>
	<script src="js/SmoothScroll.js"></script>
    <script src="js/custom.js"></script>
  </body>
</html>