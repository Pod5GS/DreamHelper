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
<link href='http://fonts.useso.com/css?family=PT+Sans+Narrow'
	rel='stylesheet' type='text/css'>

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<style>
.panel{
    width:60%;
    margin:10px auto;
    height:300px;
    font-size: larger
}
</style>
<script type="text/javascript">
    function go(){
        location.href = "onloadschoolinquery?";
    }
    function previousquestion(){
        var panels = $(".panel-blue");
        for(var i = 0; i < panels.length; i++){
          if(panels.get(i).style.display == ""){
            panels.get(i-1).style.display="";
            panels.get(i).style.display="none";
            break;
          }
        }
    }
    function nextquestion(){
        var panels = $(".panel-blue");
        for(var i = 0; i < panels.length; i++){
          if(i == panels.length - 1)
            break;
          if(panels.get(i).style.display == ""){
            panels.get(i+1).style.display="";
            panels.get(i).style.display="none";
            break;
          }
        }
    }
    function test(){
        var ans1 = $("input[name='choice1']:checked").val();
        var ans2 = $("input[name='choice2']:checked").val();
        var ans3 = $("input[name='choice3']:checked").val();
        var ans4 = $("input[name='choice4']:checked").val();
        var ans5 = $("input[name='choice5']:checked").val();
        var ans6 = $("input[name='choice6']:checked").val();
        var ans7 = $("input[name='choice7']:checked").val();
        var ans8 = $("input[name='choice8']:checked").val();
        var ans9 = $("input[name='choice9']:checked").val();
        var ans10 = $("input[name='choice10']:checked").val();
        var ans11 = $("input[name='choice11']:checked").val();
        var ans12 = $("input[name='choice12']:checked").val();
        var ans13 = $("input[name='choice13']:checked").val();
        var ans14 = $("input[name='choice14']:checked").val();
        var ans15 = $("input[name='choice15']:checked").val();
        var ans16 = $("input[name='choice16']:checked").val();
        var ans17 = $("input[name='choice17']:checked").val();
        var ans18 = $("input[name='choice18']:checked").val();
        var ans19 = $("input[name='choice19']:checked").val();
        var ans20 = $("input[name='choice20']:checked").val();
        var ans21 = $("input[name='choice21']:checked").val();
        var ans22 = $("input[name='choice22']:checked").val();
        var ans23 = $("input[name='choice23']:checked").val();
        var ans24 = $("input[name='choice24']:checked").val();
        var ans25 = $("input[name='choice25']:checked").val();
        var ans26 = $("input[name='choice26']:checked").val();
        var ans27 = $("input[name='choice27']:checked").val();
        var ans28 = $("input[name='choice28']:checked").val();
        var ans29 = $("input[name='choice29']:checked").val();
        var ans30 = $("input[name='choice30']:checked").val();
        var ans31 = $("input[name='choice31']:checked").val();
        var ans32 = $("input[name='choice32']:checked").val();
        var ans33 = $("input[name='choice33']:checked").val();
        var ans34 = $("input[name='choice34']:checked").val();
        var ans35 = $("input[name='choice35']:checked").val();
        var ans36 = $("input[name='choice36']:checked").val();
        var ans37 = $("input[name='choice37']:checked").val();
        var ans38 = $("input[name='choice38']:checked").val();
        var ans39 = $("input[name='choice39']:checked").val();
        var ans40 = $("input[name='choice40']:checked").val();
        var ans41 = $("input[name='choice41']:checked").val();
        var ans42 = $("input[name='choice42']:checked").val();
        var ans43 = $("input[name='choice43']:checked").val();
        var ans44 = $("input[name='choice44']:checked").val();
        var ans45 = $("input[name='choice45']:checked").val();
        var ans46 = $("input[name='choice46']:checked").val();
        var ans47 = $("input[name='choice47']:checked").val();
        var ans48 = $("input[name='choice48']:checked").val();
        var ans49 = $("input[name='choice49']:checked").val();
        var ans50 = $("input[name='choice50']:checked").val();
        var ans51 = $("input[name='choice51']:checked").val();
        var ans52 = $("input[name='choice52']:checked").val();
        var ans53 = $("input[name='choice53']:checked").val();
        var ans54 = $("input[name='choice54']:checked").val();
        var ans55 = $("input[name='choice55']:checked").val();
        var ans56 = $("input[name='choice56']:checked").val();
        var ans57 = $("input[name='choice57']:checked").val();
        var ans58 = $("input[name='choice58']:checked").val();
        var ans59 = $("input[name='choice59']:checked").val();
        var ans60 = $("input[name='choice60']:checked").val();
        if(ans1 == null){
          alert("请答完所有题后再提交答案");
          return;
        }else{
          location.href = "test?ans1=" + ans1 + "&ans2=" + ans2 + "&ans3=" + ans3 + "&ans4=" + ans4 + "&ans5=" + ans5 + "&ans6=" + ans6 + "&ans7=" + ans7 + "&ans8=" + ans8 + "&ans9=" + ans9 + "&ans10=" + ans10 + "&ans11=" + ans11 + "&ans12=" + ans12 + "&ans13=" + ans13 + "&ans14=" + ans14 + "&ans15=" + ans15 + "&ans16=" + ans16 + "&ans17=" + ans17 + "&ans18=" + ans18 + "&ans19=" + ans19 + "&ans20=" + ans20 + "&ans21=" + ans21 + "&ans22=" + ans22 + "&ans23=" + ans23 + "&ans24=" + ans24 + "&ans25=" + ans25 + "&ans26=" + ans26 + "&ans27=" + ans27 + "&ans28=" + ans28 + "&ans29=" + ans29 + "&ans30=" + ans30 + "&ans31=" + ans31 + "&ans32=" + ans32 + "&ans33=" + ans33 + "&ans34=" + ans34 + "&ans35=" + ans35 + "&ans36=" + ans36 + "&ans37=" + ans37 + "&ans38=" + ans38 + "&ans39=" + ans39 + "&ans40=" + ans40 + "&ans41=" + ans41 + "&ans42=" + ans42 + "&ans43=" + ans43 + "&ans44=" + ans44 + "&ans45=" + ans45 + "&ans46=" + ans46 + "&ans47=" + ans47 + "&ans48=" + ans48 + "&ans49=" + ans49 + "&ans50=" + ans50 + "&ans51=" + ans51 + "&ans52=" + ans52 + "&ans53=" + ans53 + "&ans54=" + ans54 + "&ans55=" + ans55 + "&ans56=" + ans56 + "&ans57=" + ans57 + "&ans58=" + ans58 + "&ans59=" + ans59 + "&ans60=" + ans60; 
        }
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
				</div>
				<!-- / .row -->
			</div>
			<!-- / .container -->
		</div>
		<!-- / .Topic Header -->
		</div>
	<!-- / .wrapper -->
		<div class="container ">
			<div class="row">
			    <s:iterator value="questionlist" var="u">
			      <s:if test='#u.index == "1"'>
			        <div class="panel panel-blue" style="">
			          <div class="panel-heading">1/60</div>
			          <div class="panel-body">
			            <p><s:property value="question"/></p>
			            <div style="padding-top:30px;">
			            <div style="width:50%;float:left;text-align:center;">
						  <label ><input name="choice1" class="choice" type="radio" value="1" onclick="nextquestion()">是</label>
						</div>
						<div style="width:50%;float:left;text-align:center;">
						  <label><input name="choice1" class="choice" type="radio" value="0" onclick="nextquestion()">否</label>
						</div>
			            </div>
						<div style="padding-top:80px;">
						  <div style="width:50%;float:left;text-align:center;">
						  </div>
						  <div style="width:50%;float:right;text-align:center;">
						    <a class="btn-animate btn-style btn-lg btn-e btn-primary" onclick="nextquestion()">下一题</a>
						  </div>
						</div>
					  </div>
			        </div>
			      </s:if>
			      <s:else>
			        <div class="panel panel-blue" style="display:none;">
			          <div class="panel-heading"><s:property value="index"/>/60</div>
			          <div class="panel-body">
			            <p><s:property value="question"/></p>
			            <div style="padding-top:30px;">
			            <div style="width:50%;float:left;text-align:center;">
						  <label><input name="choice<s:property value="index"/>" class="choice" type="radio" value="1" onclick="nextquestion()">是</label>
						</div>
						<div style="width:50%;float:right;text-align:center;">
					      <label><input name="choice<s:property value="index"/>" class="choice" type="radio" value="0" onclick="nextquestion()">否</label>
						</div>
						</div>
						<s:if test='#u.index == "60"'>
						<div style="padding-top:80px;">
						  <div class="buttons" style="width:50%;float:left;text-align:center;">
						    <a class="btn-animate btn-style btn-lg btn-e btn-primary" onclick="previousquestion()">上一题</a>
						  </div>
						  <div class="buttons" style="width:50%;float:right;text-align:center;">
						     <a class="btn-animate btn-style btn-lg btn-e btn-primary" onclick="test()">提交 </a>
						  </div>
						</div>
						</s:if>
						<s:else>
						<div style="padding-top:80px;">
						  <div style="width:50%;float:left;text-align:center;">
						    <a class="btn-animate btn-style btn-lg btn-e btn-primary" onclick="previousquestion()">上一题</a>
						  </div>
						  <div style="width:50%;float:right;text-align:center;">
						     <a class="btn-animate btn-style btn-lg btn-e btn-primary" onclick="nextquestion()">下一题</a>
						  </div>
						  </div>
						</s:else>
					  </div>
			        </div>
			      </s:else>
			    </s:iterator>
			</div>
		</div>

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