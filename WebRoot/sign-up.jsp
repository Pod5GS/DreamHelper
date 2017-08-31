<%@ page language="java" import="java.util.*" contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <!--<meta http-equiv="X-UA-Compatible" content="IE=edge">-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="ico/favicon.ico">

    <title>DreamHelper-注册</title>

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
			<div class="collapse navbar-collapse"></div>
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
              <li class="active">注册</li>
            </ol>                      
          </div> <!-- / .row -->
        </div> <!-- / .container -->
      </div> <!-- / .Topic Header -->      

      <div class="container">
        <div class="row">
          <div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
            <div class="sign-form">
              <div class="sign-inner">
                <h3 class="first-child">注册</h3>
                <hr>
                <s:form role="form" action="register" method="post">
                  <div class="form-group">
                    <input type="text" class="form-control" name="usrName" placeholder="用户名" data-toggle="popover" data-placement="left" data-trigger="focus" data-content="Enter your nickname here." data-original-title="Username">
                  </div>
                  <div class="form-group">
                    <input type="email" class="form-control" id="email" placeholder="电子邮件" data-toggle="popover" data-placement="left" data-trigger="focus" data-content="Enter a valid email here." data-original-title="Email">
                  </div>
                  <div class="form-group">
                    <div class="row">
                      <div class="col-sm-6">
                        <input type="password" class="form-control margin-bottom-xs" name="pwd1" placeholder="密码" data-toggle="popover" data-placement="left" data-trigger="focus" data-content="Enter a good password here." data-original-title="Password">
                      </div>
                      <div class="col-sm-6">
                        <input type="password" class="form-control" name="pwd2" placeholder="重复密码" data-toggle="popover" data-trigger="focus" data-content="Confirm your password here." data-original-title="Repeat Password">
                      </div>
                    </div>
                  </div>
                  <div class="checkbox">
                    <label>
                      <input type="checkbox"> 同意 <a href="#">用户协议</a> 以及 <a href="#">隐私协议</a>
                    </label>
                  </div>
				  <button type="submit" class="btn-lg btn-blue" style="width:30%;margin:auto;">注册</button> 
                </s:form>
                <hr>
                <div>
				      已经有账号？<a href="sign-in.jsp">登陆</a>
                </div>              
              </div>
            </div>
          </div>
        </div> <!-- / .row -->      
      </div> <!-- / .container -->
    </div> <!-- / .wrapper -->
	
	<!-- Footer -->
	<footer>
		<div class="container">
			<div class="row">
				<!-- Contact Us -->
				<div class="col-xs-12 col-sm-3 col-md-3">
					<h4>联系我们</h4>
					<p>
						051 Ave C South Saskatoon, 10 Elizabeth <br /> Street Mountain
						Road, CA United States. <br /> <br /> Phone : 92 026 365 2569<br />
						Fax : 92 026 365 2570 <br /> <br /> <a href="mailto:#">supportcenter@mail.com</a>
					</p>
				</div>
				<!-- / .Contact Us -->
				<!-- Two Empty PlaceHolder -->
				<div class="col-xs-12 col-sm-3 col-md-3"></div>
				<div class="col-xs-12 col-sm-3 col-md-3"></div>
				<!-- / .Two Empty PlaceHolder -->
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
    <script src="js/custom.js"></script>
    <script src="js/sign-up.js"></script>
  </body>
</html>