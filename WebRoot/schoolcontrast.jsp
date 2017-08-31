<%@ page language="java" import="java.util.*" contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <!--<meta http-equiv="X-UA-Compatible" content="IE=edge">-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="ico/favicon.ico">
    <title>DreamHelper-学校对比</title>
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
  <script src="js/Chart.js"></script>
  <script>
    var color = ["#ff0000","#e69138","#f4d3b1","#fbfb2b","#25f0f0"]
    var pointsChartData = {
		labels: ["综合评价", "学习氛围", "生活环境", "职业前景"],
		datasets: [
		    <s:iterator value="infolist" var="u" status="st">
		      <s:if test='#u.school != "添加院校"'>
		      {
		        label: '<s:property value="school" escape="false"/>',
		        fillColor: "rgba(220,220,220,0.2)",
				strokeColor: color[<s:property value='#st.index'/>],
				pointColor: "rgba(220,220,220,1)",
				pointStrokeColor: "#fff",
				pointHighlightFill: "#fff",
				pointHighlightStroke: "rgba(220,220,220,1)",
				<s:if test='#u.comprehensive != "----"'>
				  data: [<s:property value="comprehensive" escape="false"/>,<s:property value="atmosphere" escape="false"/>,<s:property value="environment" escape="false"/>,<s:property value="prospect" escape="false"/>]
				</s:if>
				<s:else>
				  data: [0,0,0,0]
				</s:else>
		      },
		      </s:if> 
		    </s:iterator>
		]
	};
	var barChartData = {
		labels : ["重点学科","硕士点数","博士点数"],
		datasets : [
		    <s:iterator value="infolist" var="u" status="st">
		      <s:if test='#u.school != "添加院校"'>
		      {
		        label: '<s:property value="school" escape="false"/>',
		        fillColor: color[<s:property value='#st.index'/>],
				strokeColor: color[<s:property value='#st.index'/>],
				data: [<s:property value="numoftop" escape="false"/>,<s:property value="numofmaster" escape="false"/>,<s:property value="numofphd" escape="false"/>]
		      },
		      </s:if> 
		    </s:iterator>
		]
	}
	window.onload = function(){
		window.myRadar = new Chart(document.getElementById("points").getContext("2d")).Radar(pointsChartData, {
			responsive: true
		});
		var ctx = document.getElementById("other").getContext("2d");
		window.myBar = new Chart(ctx).Bar(barChartData, {
			responsive : true
		});
	}
    function go(){
        location.href = "onloadschoolinquery?";
    }
  </script>
  <style>
  .box-table {
    font: normal 12px/150% Arial, Helvetica, sans-serif;
    overflow: hidden;
    margin: 0 auto;
    display: block;
    width: 95%;
    border-spacing: 2px;
    border-color: grey;
  }
  .thead {
    background-color: #2babcf;
    color: white;
    text-align: center;
    font-family: 'Vollkorn', serif;
    font-weight: bold;
    vertical-align: middle;
    border-left: 0.25em double #95a5a6;
  }
  td,tr {
    font-family: 'Vollkorn', serif;
    font-size: large;
    text-align:center;
    vertical-align: middle;
    border-bottom: #eaeaea 1px solid;
    border-right: #eaeaea 1px solid;
    padding: 1em;
  }
  tr:hover{
    background-color:#A2DBEA;
  }
  .school-tumb {
    width: 6em;
    height: 6em;
    padding: 0;
    display: table-cell;
    text-align: center;
    margin: 0 auto;
    -webkit-border-radius: 100%;
    -moz-border-radius: 100%;
    border-radius: 100%;
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
              <li class="active">学校查询-学校对比</li>
            </ol>                      
          </div> <!-- / .row -->
        </div> <!-- / .container -->
        </div> <!-- / .Topic Header --> 
        </div> <!-- / .wrapper -->
        <div class="container">
        <div class="col-md-10 col-md-offset-1">
          <ul class="nav nav-tabs nav-justified">
            <li class="active"><a href="#radar" data-toggle="tab">图形</a></li>
            <li><a href="#table" data-toggle="tab">表格</a></li>
          </ul>
          <div class="row">
            <div class="tab-content">
              <div class="tab-pane fade in active" id="radar">
                <div style="width:50%;float:left;">
			      <canvas id="points" height="200" width="200"></canvas>
		        </div>
		        <div style="width:50%;float:right;">
			      <canvas id="other" height="450" width="450"></canvas>
		        </div>
              </div>
              <div class="tab-pane fade" id="table">
                <table class="box-table">
            <tr>
             <td class="thead">学校</td>
             <s:iterator value="infolist" status="st" var="u">
               <s:if test='#u.school == "添加院校"'>
                 <td>
                   <a onclick="javascript:history.go(-1)" class="btn btn-blue">添加院校</a>
                 </td>
               </s:if>
               <s:else>
                 <td>
                   <img src="<s:property value="toppicurl"/>" class="school-tumb">
                   <span><s:property value="school"/></span>
                 </td>
               </s:else>
             </s:iterator>
            </tr>
            <tr>
             <td class="thead">所在地</td>
             <s:iterator value="infolist" status="st">
               <td><s:property value="location"/></td>
             </s:iterator>
            </tr>
            <tr>
             <td class="thead">隶属于</td>
             <s:iterator value="infolist" status="st">
               <td><s:property value="belongto"/></td>
             </s:iterator>
            </tr>
            <tr>
             <td class="thead">类型</td>
             <s:iterator value="infolist" status="st">
               <td><s:property value="type"/></td>
             </s:iterator>
            </tr>
            <tr>
             <td class="thead">重点学科</td>
             <s:iterator value="infolist" status="st">
               <td><s:property value="numoftop"/></td>
             </s:iterator>
            </tr>
            <tr>
             <td class="thead">博士点</td>
             <s:iterator value="infolist" status="st">
               <td><s:property value="numofphd"/></td>
             </s:iterator>
            </tr>
            <tr>
             <td class="thead">硕士点</td>
             <s:iterator value="infolist" status="st">
               <td><s:property value="numofmaster"/></td>
             </s:iterator>
            </tr>
            <tr>
             <td class="thead">学校特色</td>
             <s:iterator value="infolist" status="st">
               <td><s:property value="tags"/></td>
             </s:iterator>
            </tr>
            <tr>
             <td class="thead">综合评价</td>
             <s:iterator value="infolist" status="st">
               <td><s:property value="comprehensive"/></td>
             </s:iterator>
            </tr>
            <tr>
             <td class="thead">学习氛围</td>
             <s:iterator value="infolist" status="st">
               <td><s:property value="atmosphere"/></td>
             </s:iterator>
            </tr>
            <tr>
             <td class="thead">学校环境</td>
             <s:iterator value="infolist" status="st">
               <td><s:property value="environment"/></td>
             </s:iterator>
            </tr>
            <tr>
             <td class="thead">职业前景</td>
             <s:iterator value="infolist" status="st">
               <td><s:property value="prospect"/></td>
             </s:iterator>
            </tr>
          </table>
              </div>
            </div>
          </div>
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