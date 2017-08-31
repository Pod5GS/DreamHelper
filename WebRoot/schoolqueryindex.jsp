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
<title>DreamHelper-学校查询</title>
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
<style>
.project-filter .filter-selected{
    background: #2babcf;
    border: 1px solid #2babcf;
    color: #fff;
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
	height: 130px;
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
.col_b a, .col_s a, .col_b a:hover {
    height: 30px;
    line-height: 30px;
    margin-left: 40px;
    background-color: #fff;
    width: 92px;
    height: 34px;
    line-height: 37px;
    padding-left: 15px;
    border: 1px solid #e4e4e4;
    color: #333;
}
.col_s a {
    background-color: #F9b548;
    border: 1px solid #F9b548;
    color: #FFF;
}
.contrast_btns a {
    float: left;
}
.contrast_btns span {
    position: relative;
}
.c_select {
    width: 20px;
    height: 20px;
    position: absolute;
    left: -85px;
    top: 8px;
}
img {
    border: 0;
}
.c_div{ position:fixed;bottom:0px;}
.contrast_titles{ height:37px;}
.contrast_titles ul{}
.contrast_titles ul li{ float:left; width:102.5px; height:34px; line-height:34px; border:3px solid #35abe9; border-bottom:0; text-align:center; margin-bottom:-3px; background-color:#FFF;}
.contrast_titles ul li a{ color:#35abe9; font-weight:bold; font-size:16px; }
.contrast_titles ul li.g{ border:1px solid #ccc; border-bottom:0; position:relative; z-index:0; background-color:#FFF; }
.contrast_titles ul li.g a{ color:#999; font-weight:normal; }
.contrast_titles ul li.l{  background-color:#FFF; text-align:right; border:1px solid #fff; border-bottom:0; border-top:#ccc solid 1px; border-right:#ccc solid 1px; padding-right:17px; }
.contrast_titles ul li.l a{ color:#069; font-weight:normal; font-size:14px; letter-spacing:2px;}
.contrast_lists{ height:200px; background-color:#FFF; border:3px solid #35abe9; margin-top:-3px; padding:10px;}
.contrast_lists ul{}
.contrast_lists ul li{ float:left; border-right:1px dashed #CCC;height:180px;}
.contrast_lists ul li.pic{ text-align:center;}
.contrast_lists ul li .pic img{height:100px;}
.contrast_lists ul li .msgs{ text-align:center;}
.contrast_lists ul li .msgs a{ color:#069;}
.contrast_lists ul li .msgs a:hover{ text-decoration:underline; background-color:#FFF;}
.c_btn{ padding:60px 0 0 0;}
.c_btn a {
    width: 100px;
    height: 36px;
    line-height: 36px;
    color: #FFF;
    background-color: #f9b548;
    display: block;
    font-size: 16px;
    font-weight: bold;
    text-align: center;
    -moz-border-radius: 5px;
    -webkit-border-radius: 5px;
    border-radius: 5px;
    margin:0px auto;
}
form.blue {
	margin:2em 0 3em 0em;
	padding: 8px 0px;
    background: #fff;
}
form.blue input[type="text"]{
	background: none;
	font-style: normal;
	font-size: 15px;
	outline: none;
	padding:13px 12px;
	border: 1px solid #EFEEEE;
	color: #CBC9C9;
	width:68%;
	font-weight: 400;
	background: #fff;
	-webkit-appearance:none;
	margin: 0px 3px;
}
form.blue input[type="submit"]{
	outline: none;
	font-size: 18px;
	font-weight: 400;
	padding: 13px 12px;
	cursor: pointer;
	border: none;
	color: #fff;
	margin: 0px 4px;
	width: 18%;
	background: #2babcf;
}
form.blue input[type="submit"]:hover,a.tem-btn:hover{
background:#00C7FF; 
}
</style>
<script>
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
	<!-- Wrapper -->
	<div class="wrapper">
		<!-- Topic Header -->
		<div class="topic">
			<div class="container">
				<div class="row">
					<ol class="breadcrumb hidden-xs">
						<li><a href="index.html">主页</a></li>
						<li class="active">学校查询</li>
					</ol>
				</div>
				<!-- / .row -->
			</div>
			<!-- / .container -->
		</div>
		<!-- / .Topic Header -->
		</div>
		<div class="container">
		  <div class="row">
		    <form class="blue" action="schoolsearch" method="post">
		      <input name="school" type="text" size="30px"  value="输入您想搜索的学校" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '输入您想搜索的学校';}">
		      <input type="submit" value="搜索">
		    </form>
		  </div>
	    </div>
		<div class="container">
			<div class="row">
				<!-- Categories -->
			    <a>院校分类</a>
				<ul class="project-filter" id="special-filters">
					<li><a  data-filter="不限" class="filter-selected">不限</a></li>
					<li><a  data-filter="985">985</a></li>
					<li><a  data-filter="211">211</a></li>
					<li><a  data-filter="自">自主招生</a></li>
					<li><a  data-filter="研">研究生院</a></li>
					<li><a  data-filter="国">国防生</a>
					<li><a  data-filter="卓">卓越计划</a>
				</ul>
			</div>
			<!-- / .row -->
		</div>
		<!-- / .container -->
		<div class="container">
			<div class="row">
				<!-- Categories -->
				<h4>院校分类</h4>
				<ul class="project-filter" id="type-filters">
					<li><a  data-filter="不限" class="filter-selected">不限</a></li>
					<li><a  data-filter="综合类">综合类</a></li>
					<li><a  data-filter="语言类">语言类</a></li>
					<li><a  data-filter="理工类">理工类</a></li>
					<li><a  data-filter="财经类">财经类</a></li>
					<li><a  data-filter="农林类">农林类</a>
					<li><a  data-filter="师范类">师范类</a>
					<li><a  data-filter="林业类">林业类</a>
					<li><a  data-filter="医药类">医药类</a>
					<li><a  data-filter="政法类">政法类</a>
					<li><a  data-filter="民族类">民族类</a>
					<li><a  data-filter="艺术类">艺术类</a>
					<li><a  data-filter="体育类">体育类</a>
					<li><a  data-filter="军事类">军事类</a>
				</ul>
			</div>
			<!-- / .row -->
		</div>
		<!-- / .container -->
		<div class="container">
			<div class="row">
				<!-- Categories -->
				<h4>院校属地</h4>
				<ul class="project-filter" id="location-filters">
					<li><a  data-filter="不限" class="filter-selected">不限</a></li>
					<li><a  data-filter="上海">上海</a></li>
					<li><a  data-filter="北京">北京</a></li>
					<li><a  data-filter="辽宁">辽宁</a></li>
					<li><a  data-filter="河北">河北</a></li>
					<li><a  data-filter="吉林">吉林</a></li>
					<li><a  data-filter="江苏">江苏</a></li>
					<li><a  data-filter="山西">山西</a></li>
					<li><a  data-filter="湖南">湖南</a></li>
					<li><a  data-filter="湖北">湖北</a></li>
					<li><a  data-filter="山东">山东</a></li>
					<li><a  data-filter="安徽">安徽</a></li>
					<li><a  data-filter="广东">广东</a></li>
					<li><a  data-filter="云南">云南</a></li>
					<li><a  data-filter="甘肃">甘肃</a></li>
					<li><a  data-filter="内蒙古">内蒙古</a></li>
					<li><a  data-filter="天津">天津</a></li>
					<li><a  data-filter="江西">江西</a></li>
					<li><a  data-filter="福建">福建</a></li>
					<li><a  data-filter="黑龙江">黑龙江</a></li>
					<li><a  data-filter="四川">四川</a></li>
					<li><a  data-filter="广西">广西</a></li>
					<li><a  data-filter="新疆">新疆</a></li>
					<li><a  data-filter="浙江">浙江</a></li>
					<li><a  data-filter="海南">海南</a></li>
					<li><a  data-filter="陕西">陕西</a></li>
					<li><a  data-filter="重庆">重庆</a></li>
					<li><a  data-filter="西藏">西藏</a></li>
					<li><a  data-filter="贵州">贵州</a></li>
					<li><a  data-filter="河南">河南</a></li>
				</ul>
			</div>
			<!-- / .row -->
		</div>
		<!-- / .container -->
		<s:if test="infolist.size() == 0">
		    <div class="container">
		      <div class="row" style="text-align:center;font-size:25px;">
		        <hr/>
		        <a style="color:black;">未查询到结果！</a>
		      </div>
		    </div>
		</s:if>
		<s:else> 
		<div class="container colleges_list">
		  <ul>
		    <s:iterator value="infolist" status="st">
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
					  <span>重点学科: <s:property value="numoftop" /></span> 
					  <span>硕士点数: <s:property value="numofmaster" /></span> 
					  <span>博士点数: <s:property value="numofphd" /></span>
			        </div>
			        <div class="c_labels">
			          <span style="color:#2BABCF;"><s:property value="tags" /></span>
			        </div>
		          </div>
		          <div class="contrast_btns" style="margin-left:20px;">
		            <div class="btns01">
		               <a class="<s:property value="school" />" onmousedown="show_detail(event)">详情</a>
		               <span class="col_b">
		                 <a class="contrast" title="加入对比" data="<s:property value="#st.index + 1"/>,<s:property value="school" />,<s:property value="toppicurl"/>" id=<s:property value="#st.index + 1"/> is_selected="0">加入对比</a>
		                 <div class="c_select">
		                   <img src="img/not_selected.png" class="img" id=<s:property value="#st.index + 1"/>>
		                 </div>
		               </span>
		            </div>
		          </div>
		        </div>
		      </li>
		    </s:iterator>
		  </ul>
		</div>
		</s:else>
	<div class="c_div col-sm-10 col-sm-offset-1" style="display:none">
	  <div class="contrast_lists">
	    <ul id="duibi">
		  <li class="col-sm-2 col-md-2">
		    <div class="c_btn bbt">
		      <a onclick="contrast()">对比</a>
		    </div>
		    <div class="msgs" id="qkong">
		      <a onclick="clearcontrast()">清空对比栏</a>
		      <a onclick="hidecontrast()">隐藏对比栏</a>
		    </div>
		  </li>
	    </ul>
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
	<script src="js/jquery.cookie.js"></script>
	<script type="text/javascript" charset="utf-8">
	  var ltag = "${tag}";
	  var ltype = "${type}";
	  var llocation = "${province}";
	  if(ltag != "不限" && ltag != ""){
	    $('#special-filters li a').removeClass('filter-selected');
	    $('#special-filters li a[data-filter$='+ ltag + ']').addClass('filter-selected');
	    }
	  if(ltype != "不限" && ltype != ""){
	    $('#type-filters li a').removeClass('filter-selected');
	    $('#type-filters li a[data-filter$='+ ltype + ']').addClass('filter-selected'); 
	    }
	  if(llocation != "不限" && llocation != ""){
	    $('#location-filters li a').removeClass('filter-selected');
	    $('#location-filters li a[data-filter$='+ llocation + ']').addClass('filter-selected');
	  }
	  function filter(){
	    var tag = $('#special-filters .filter-selected').attr('data-filter');
	    var type = $('#type-filters .filter-selected').attr('data-filter');
	    var location = $('#location-filters .filter-selected').attr('data-filter');
	    window.location.href= "schoolfilter?tag=" + tag +"&type=" + type + "&province=" + location;
	  }
	  $('#special-filters li a').click(function(){
	    $('#special-filters li a').removeClass('filter-selected');
	    $(this).addClass('filter-selected');
	    filter();
	  })
	  $('#type-filters li a').click(function(){
	    $('#type-filters li a').removeClass('filter-selected');
	    $(this).addClass('filter-selected');
	    filter();
	  })
	  $('#location-filters li a').click(function(){
	    $('#location-filters li a').removeClass('filter-selected');
	    $(this).addClass('filter-selected');
	    filter();
	  })
	  $('.contrast').click(function(){
	    var is_selected = $(this).attr('is_selected');
	    var id = $(this).attr('id');
	    var array = [];
	    var school = $(this).attr('data');
	    if($.cookie('w_college')){
	      array = $.cookie('w_college').split('*');
	    }
	    $('#q').removeClass('g');
	    $('#g').addClass('g');
	    if(is_selected == 0){
	      $(this).attr('is_selected',1);
	      if(array.length < 5){
	        if(jQuery.inArray(school,array) == -1){
	          array[array.length] = school;
	        }
	        $('.img').each(function(key,val){
	          if($(val).attr('id') == id){
	            $(val).attr('src','img/selected.png');
	          }
	        });
	        $(this).parent().removeClass('col_b');
	        $(this).parent().addClass('col_s');
	      }else{
	        alert('最多允许五所院校对比');
	      }
	    }else{
	      $(this).attr('is_selected',0);
	      array = $.cookie('w_college').split('*');
	      var dlt = jQuery.inArray(school,array);
	      array.splice(dlt, 1);
	      $.cookie('w_college',array);
	      $('.img').each(function(key,val){
	        if($(val).attr('id') == id){
	          $(val).attr('src','img/not_selected.png');
	        }
	      });
	      $(this).parent().removeClass('col_s');
	      $(this).parent().addClass('col_b');
	    }
	    $("#duibi").html('<li class="col-sm-2"><div class="c_btn bbt"><a onclick="contrast()">对比</a></div> <div class="msgs" id="qkong"><a onclick="clearcontrast()">清空对比栏</a><br><a onclick="hidecontrast()">隐藏对比栏</a></div></li>');
	    $.each(array, function(key, val){
            var arr = val.split(',');
            $('#duibi').prepend("<li class='xiaoshi col-sm-2 col-md-2'>" +
            "<div class='pic' style='text-align:center;'><a href='#'><img src='" + arr[2] + "'/></a></div>" +
            "<div class='msgs'>" + arr[1] + "<br /><a class='qu' id='" + arr[0] + "' key='" + key + "'>[取消对比]</a></div>" +
            "</li>");
        });
        $('.c_div').show();
        $.cookie('w_college', array.join('*'));
	  })
	  //对比 取消对比
      $('#duibi').on('click', '.qu', function(){
        var id = $(this).attr('id');
        var key = $(this).attr('key');
        var array = $.cookie('w_college').split('*');
        $('.contrast').each(function(e, o){
            if($(o).attr('id') == id){
                $(o).parent().removeClass('col_s');
                $(o).parent().addClass('col_b');
            }
        });
        $('.img').each(function (key, val) {
            if ($(val).attr('id') == id) {
                $(val).attr('src', 'img/not_selected.png');
                $(val).parent().siblings().attr('is_selected', 0);
            }
        });
        array.splice(key,1);
        $("#duibi").html('<li class="col-sm-2"><div class="c_btn bbt"><a onclick="contrast()">对比</a></div> <div class="msgs" id="qkong"><a onclick="clearcontrast()">清空对比栏</a><br><a onclick="hidecontrast()">隐藏对比栏</a></div></li>');
        $.each(array, function(k, v){
            var arr = v.split(',');
            $('#duibi').prepend("<li class='xiaoshi col-sm-2 col-md-2'>" +
            "<div class='pic' style='text-align:center;'><a href='#'><img src='" + arr[2] + "'/></a></div>" +
            "<div class='msgs'>" + arr[1] + "<br /><a class='qu' id='" + arr[0] + "' key='" + key + "'>[取消对比]</a></div>" +
            "</li>");
        });
        $.cookie('w_college', array.join('*'));
      });
	  //对比 清空
      function clearcontrast(){
        $.cookie('w_college', "");
        $("#duibi").html('<li class="col-sm-2"><div class="c_btn bbt"><a onclick="contrast()">对比</a></div> <div class="msgs" id="qkong"><a onclick="clearcontrast()">清空对比栏</a><br><a onclick="hidecontrast()">隐藏对比栏</a></div></li>');
        $('.contrast').each(function(q, w){
            $(w).parent().removeClass('col_s');
            $(w).parent().addClass('col_b');
        });
        $('.img').each(function (key, val) {
            $(val).parent().siblings().attr('is_selected',0);
            $(val).attr('src', 'img/not_selected.png');
        });
      }
	  //对比 隐藏
	  function hidecontrast(){
	    $('.c_div').hide();
	  }
	  //开始对比
	  function contrast(){
	      var array = [];
	      var str = "";
	      array = $.cookie('w_college').split('*');
	      if(array.length <= 1){
	        alert("请您至少选择两所学校进行对比！");
	      }else{
	        for(var i = 0; i < array.length; i++){
	          if(i == array.length - 1){
	            str = str + array[i].split(',')[1];
	          }else{
	            str = str + array[i].split(',')[1]  + ',';
	          }
	        }
	        location.href = "schoolcontrast?contraststr=" + str;
	      }
	  }
	  function db(){
        if($.cookie('w_college')) {
            var aray = $.cookie('w_college').split('*');
            $('.contrast').each(function (y, l) {
                if ($.inArray($(l).attr('data'), aray) != -1) {
                    $(l).parent().removeClass('col_b');
                    $(l).parent().addClass('col_s');
                    $(l).attr('is_selected', 1);
                    var id = $(l).attr('id');
                    $('.img').each(function (key, val) {
                        if ($(val).attr('id') == id) {
                            $(val).attr('src', 'img/selected.png');
                        }
                    });
                }
            });
        }
    }
    db();
	</script>
</body>
</html>
