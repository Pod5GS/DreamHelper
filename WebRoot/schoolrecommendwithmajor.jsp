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
	margin-bottom: 20px;
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

h3 {
	color: #2BABCF;
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
						<li class="active">学校推荐(专业明确)</li>
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
				<select data-placeholder="选择专业" name="major" id="major" class="chosen-select" style="width:150px;">
				    <option value=""></option>
					<option value="传播学">传播学</option>
					<option value="信息安全">信息安全</option>
					<option value="公共事业管理">公共事业管理</option>
					<option value="公共管理">公共管理</option>
					<option value="化学">化学</option>
					<option value="土建">土建</option>
					<option value="工业设计">工业设计</option>
					<option value="工商管理">工商管理</option>
					<option value="建筑学">建筑学</option>
					<option value="微电子学">微电子学</option>
					<option value="德语">德语</option>
					<option value="数学与应用数学">数学与应用数学</option>
					<option value="数学基地班">数学基地班</option>
					<option value="日语">日语</option>
					<option value="机械">机械</option>
					<option value="机械工程及自动化">机械工程及自动化</option>
					<option value="材料科学与工程">材料科学与工程</option>
					<option value="汉语言文学">汉语言文学</option>
					<option value="法学">法学</option>
					<option value="海洋工程">海洋工程</option>
					<option value="物理学">物理学</option>
					<option value="环境生态">环境生态</option>
					<option value="环境科学与工程">环境科学与工程</option>
					<option value="理科试验班">理科试验班</option>
					<option value="生物医学工程">生物医学工程</option>
					<option value="生物科学">生物科学</option>
					<option value="电子信息科学">电子信息科学</option>
					<option value="电气信息">电气信息</option>
					<option value="管理科学与工程">管理科学与工程</option>
					<option value="经济学">经济学</option>
					<option value="英语">英语</option>
					<option value="药学">药学</option>
					<option value="软件工程">软件工程</option>
					<option value="生物技术">生物技术</option>
					<option value="生命科学与技术基地班">生命科学与技术基地班</option>
					<option value="临床医学">临床医学</option>
					<option value="数学">数学</option>
					<option value="医学检验">医学检验</option>
					<option value="口腔医学">口腔医学</option>
					<option value="营养学">营养学</option>
					<option value="预防医学">预防医学</option>
					<option value="护理学">护理学</option>
					<option value="会计学">会计学</option>
					<option value="俄语">俄语</option>
					<option value="信息管理与信息系统">信息管理与信息系统</option>
					<option value="公共关系学">公共关系学</option>
					<option value="国际政治">国际政治</option>
					<option value="国际经济与贸易">国际经济与贸易</option>
					<option value="对外汉语">对外汉语</option>
					<option value="希腊语">希腊语</option>
					<option value="广告学">广告学</option>
					<option value="广播电视新闻学">广播电视新闻学</option>
					<option value="意大利语">意大利语</option>
					<option value="教育技术学">教育技术学</option>
					<option value="新闻学">新闻学</option>
					<option value="朝鲜语">朝鲜语</option>
					<option value="法语">法语</option>
					<option value="瑞典语">瑞典语</option>
					<option value="翻译">翻译</option>
					<option value="荷兰语">荷兰语</option>
					<option value="葡萄牙语">葡萄牙语</option>
					<option value="西班牙语">西班牙语</option>
					<option value="金融学">金融学</option>
					<option value="阿拉伯语">阿拉伯语</option>
					<option value="波斯语">波斯语</option>
					<option value="印度尼西亚语">印度尼西亚语</option>
					<option value="泰语">泰语</option>
					<option value="土耳其语">土耳其语</option>
					<option value="人文科学试验班">人文科学试验班</option>
					<option value="信息工程">信息工程</option>
					<option value="冶金工程">冶金工程</option>
					<option value="包装工程">包装工程</option>
					<option value="化学工程与工艺">化学工程与工艺</option>
					<option value="哲学">哲学</option>
					<option value="土木工程">土木工程</option>
					<option value="广播电视编导">广播电视编导</option>
					<option value="应用化学">应用化学</option>
					<option value="影视艺术技术">影视艺术技术</option>
					<option value="无机非金属材料工程">无机非金属材料工程</option>
					<option value="机械电子工程">机械电子工程</option>
					<option value="档案学">档案学</option>
					<option value="环境工程">环境工程</option>
					<option value="生物工程">生物工程</option>
					<option value="电子信息工程">电子信息工程</option>
					<option value="电子科学与技术">电子科学与技术</option>
					<option value="电气工程及其自动化">电气工程及其自动化</option>
					<option value="美术学">美术学</option>
					<option value="自动化">自动化</option>
					<option value="行政管理">行政管理</option>
					<option value="计算机科学与技术">计算机科学与技术</option>
					<option value="通信工程">通信工程</option>
					<option value="金属材料工程">金属材料工程</option>
					<option value="高分子材料与工程">高分子材料与工程</option>
					<option value="城市规划">城市规划</option>
					<option value="交通运输">交通运输</option>
					<option value="国际商务">国际商务</option>
					<option value="学前教育">学前教育</option>
					<option value="小学教育">小学教育</option>
					<option value="应用心理学">应用心理学</option>
					<option value="旅游管理">旅游管理</option>
					<option value="机械设计制造及其自动化">机械设计制造及其自动化</option>
					<option value="汽车服务工程">汽车服务工程</option>
					<option value="物流管理">物流管理</option>
					<option value="网络工程">网络工程</option>
					<option value="财务管理">财务管理</option>
					<option value="保险">保险</option>
					<option value="信息与计算科学">信息与计算科学</option>
					<option value="信用管理">信用管理</option>
					<option value="劳动与社会保障">劳动与社会保障</option>
					<option value="房地产经营管理">房地产经营管理</option>
					<option value="投资学">投资学</option>
					<option value="电子商务">电子商务</option>
					<option value="社会学">社会学</option>
					<option value="税务">税务</option>
					<option value="统计学">统计学</option>
					<option value="财政学">财政学</option>
					<option value="金融工程">金融工程</option>
					<option value="工程管理">工程管理</option>
					<option value="人力资源管理">人力资源管理</option>
					<option value="农业建筑环境与能源工程">农业建筑环境与能源工程</option>
					<option value="农业水利工程">农业水利工程</option>
					<option value="制药工程">制药工程</option>
					<option value="动物医学">动物医学</option>
					<option value="动物生产">动物生产</option>
					<option value="园林">园林</option>
					<option value="市场营销">市场营销</option>
					<option value="生态学">生态学</option>
					<option value="种子科学与工程">种子科学与工程</option>
					<option value="车辆工程">车辆工程</option>
					<option value="食品质量与安全">食品质量与安全</option>
					<option value="农业机械化及其自动化">农业机械化及其自动化</option>
					<option value="农业电气化与自动化">农业电气化与自动化</option>
					<option value="农业资源与环境">农业资源与环境</option>
					<option value="农村区域发展">农村区域发展</option>
					<option value="农林经济管理">农林经济管理</option>
					<option value="动物科学">动物科学</option>
					<option value="动物药学">动物药学</option>
					<option value="园艺">园艺</option>
					<option value="土地资源管理">土地资源管理</option>
					<option value="工业工程">工业工程</option>
					<option value="应用生物科学">应用生物科学</option>
					<option value="植物保护">植物保护</option>
					<option value="植物生产">植物生产</option>
					<option value="水产养殖学">水产养殖学</option>
					<option value="水利水电工程">水利水电工程</option>
					<option value="环境科学">环境科学</option>
					<option value="粮食工程">粮食工程</option>
					<option value="资源环境与城乡规划管理">资源环境与城乡规划管理</option>
					<option value="食品科学与工程">食品科学与工程</option>
					<option value="水文与水资源工程">水文与水资源工程</option>
					<option value="物流工程">物流工程</option>
					<option value="农业工程">农业工程</option>
					<option value="农学">农学</option>
					<option value="社会工作">社会工作</option>
					<option value="草业科学">草业科学</option>
					<option value="设施农业科学与工程">设施农业科学与工程</option>
					<option value="工程力学">工程力学</option>
					<option value="材料成型及控制工程">材料成型及控制工程</option>
					<option value="测控技术与仪器">测控技术与仪器</option>
					<option value="安全工程">安全工程</option>
					<option value="测绘工程">测绘工程</option>
					<option value="矿物加工工程">矿物加工工程</option>
					<option value="资源勘查工程">资源勘查工程</option>
					<option value="采矿工程">采矿工程</option>
					<option value="材料物理">材料物理</option>
					<option value="热能与动力工程">热能与动力工程</option>
					<option value="过程装备与控制工程">过程装备与控制工程</option>
					<option value="思想政治教育">思想政治教育</option>
					<option value="应用物理学">应用物理学</option>
					<option value="数字媒体技术">数字媒体技术</option>
					<option value="勘查技术与工程">勘查技术与工程</option>
					<option value="历史学">历史学</option>
					<option value="地理科学">地理科学</option>
					<option value="心理学">心理学</option>
					<option value="图书馆学">图书馆学</option>
					<option value="地理信息系统">地理信息系统</option>
					<option value="教育学">教育学</option>
					<option value="电子信息科学与技术">电子信息科学与技术</option>
					<option value="政治学与行政学">政治学与行政学</option>
					<option value="木材科学与工程">木材科学与工程</option>
					<option value="材料化学">材料化学</option>
					<option value="林产化工">林产化工</option>
					<option value="林学">林学</option>
					<option value="森林资源保护与游憩">森林资源保护与游憩</option>
					<option value="野生动物与自然保护区管理">野生动物与自然保护区管理</option>
					<option value="建筑环境与设备工程">建筑环境与设备工程</option>
					<option value="森林工程">森林工程</option>
					<option value="森林资源">森林资源</option>
					<option value="轻化工程">轻化工程</option>
					<option value="会展经济与管理">会展经济与管理</option>
					<option value="光电子技术科学">光电子技术科学</option>
					<option value="服装设计与工程">服装设计与工程</option>
					<option value="材料">材料</option>
					<option value="纺织工程">纺织工程</option>
					<option value="能源与环境系统工程">能源与环境系统工程</option>
					<option value="交通工程">交通工程</option>
					<option value="化工与制药">化工与制药</option>
					<option value="电气工程与自动化">电气工程与自动化</option>
					<option value="能源动力">能源动力</option>
					<option value="临床医学与医学技术">临床医学与医学技术</option>
					<option value="景观学">景观学</option>
					<option value="测绘">测绘</option>
					<option value="科学教育">科学教育</option>
					<option value="道路桥梁与渡河工程">道路桥梁与渡河工程</option>
					<option value="给水排水工程">给水排水工程</option>
					<option value="港口航道与海岸工程">港口航道与海岸工程</option>
					<option value="中国语言文学">中国语言文学</option>
					<option value="信息物理工程">信息物理工程</option>
					<option value="地矿">地矿</option>
					<option value="城市地下空间工程">城市地下空间工程</option>
					<option value="医学信息学">医学信息学</option>
					<option value="探测制导与控制技术">探测制导与控制技术</option>
					<option value="政治学">政治学</option>
					<option value="环境与安全">环境与安全</option>
					<option value="经济管理">经济管理</option>
					<option value="地质工程">地质工程</option>
					<option value="麻醉学">麻醉学</option>
					<option value="地球信息科学与技术">地球信息科学与技术</option>
					<option value="地球物理学">地球物理学</option>
					<option value="精神医学">精神医学</option>
					<option value="新闻传播学">新闻传播学</option>
					<option value="贸易经济">贸易经济</option>
					<option value="侦查学">侦查学</option>
					<option value="劳动关系">劳动关系</option>
					<option value="城市管理">城市管理</option>
					<option value="治安学">治安学</option>
					<option value="管理科学">管理科学</option>
					<option value="边防管理">边防管理</option>
					<option value="中国革命史与中国共产党党史">中国革命史与中国共产党党史</option>
					<option value="国民经济管理">国民经济管理</option>
					<option value="农业经济管理">农业经济管理</option>
					<option value="媒体创意">媒体创意</option>
					<option value="广播电视工程">广播电视工程</option>
					<option value="文化产业管理">文化产业管理</option>
					<option value="光信息科学与技术">光信息科学与技术</option>
					<option value="戏剧影视文学">戏剧影视文学</option>
					<option value="汉语言">汉语言</option>
					<option value="编辑出版学">编辑出版学</option>
					<option value="数字媒体艺术">数字媒体艺术</option>
					<option value="水利">水利</option>
					<option value="葡萄与葡萄酒工程">葡萄与葡萄酒工程</option>
					<option value="地质学">地质学</option>
					<option value="宝石及材料工艺学">宝石及材料工艺学</option>
					<option value="大气科学">大气科学</option>
					<option value="海洋技术">海洋技术</option>
					<option value="海洋生物资源与环境">海洋生物资源与环境</option>
					<option value="海洋经济学">海洋经济学</option>
					<option value="船舶与海洋工程">船舶与海洋工程</option>
					<option value="海洋渔业科学与技术">海洋渔业科学与技术</option>
					<option value="海洋科学">海洋科学</option>
					<option value="生物化学与分子生物学">生物化学与分子生物学</option>
					<option value="消防工程">消防工程</option>
					<option value="煤及煤层气工程">煤及煤层气工程</option>
					<option value="电力工程与管理">电力工程与管理</option>
					<option value="力学">力学</option>
					<option value="材料科学">材料科学</option>
					<option value="力学基地班">力学基地班</option>
					<option value="地球化学">地球化学</option>
					<option value="中药学">中药学</option>
					<option value="中药资源与开发">中药资源与开发</option>
					<option value="海洋药学">海洋药学</option>
					<option value="药事管理">药事管理</option>
					<option value="药物制剂">药物制剂</option>
					<option value="基础药学基地班">基础药学基地班</option>
					<option value="博物馆学">博物馆学</option>
					<option value="宗教学">宗教学</option>
					<option value="民族学">民族学</option>
					<option value="韩国语">韩国语</option>
					<option value="中国少数民族语言文学">中国少数民族语言文学</option>
					<option value="历史学基地班">历史学基地班</option>
					<option value="项目管理">项目管理</option>
					<option value="体育经济">体育经济</option>
					<option value="外国语言文学">外国语言文学</option>
					<option value="康复治疗学">康复治疗学</option>
					<option value="考古学">考古学</option>
					<option value="人类学">人类学</option>
					<option value="医学影像学">医学影像学</option>
					<option value="图书档案学">图书档案学</option>
					<option value="核工程与核技术">核工程与核技术</option>
					<option value="理论与应用力学">理论与应用力学</option>
					<option value="应用气象学">应用气象学</option>
					<option value="法医学">法医学</option>
					<option value="逻辑学">逻辑学</option>
					<option value="艺术设计学">艺术设计学</option>
					<option value="光电信息工程">光电信息工程</option>
					<option value="市场营销教育">市场营销教育</option>
					<option value="数理基础科学">数理基础科学</option>
					<option value="景观建筑设计">景观建筑设计</option>
					<option value="生物学基地班">生物学基地班</option>
					<option value="禁毒学">禁毒学</option>
					<option value="财务会计教育">财务会计教育</option>
					<option value="地理学基地班">地理学基地班</option>
					<option value="核技术">核技术</option>
					<option value="辐射防护与环境工程">辐射防护与环境工程</option>
					<option value="物理学基地班">物理学基地班</option>
					<option value="中国语言文学基地班">中国语言文学基地班</option>
					<option value="动画">动画</option>
					<option value="中医学">中医学</option>
					<option value="针灸推拿学">针灸推拿学</option>
					<option value="体育产业管理">体育产业管理</option>
					<option value="运动人体科学">运动人体科学</option>
					<option value="运动康复与健康">运动康复与健康</option>
					<option value="体育教育">体育教育</option>
					<option value="生物功能材料">生物功能材料</option>
					<option value="外交学">外交学</option>
					<option value="波兰语">波兰语</option>
					<option value="捷克语-斯洛伐克语">捷克语-斯洛伐克语</option>
					<option value="罗马尼亚语">罗马尼亚语</option>
					<option value="马来语">马来语</option>
					<option value="匈牙利语">匈牙利语</option>
					<option value="缅甸语">缅甸语</option>
					<option value="老挝语">老挝语</option>
					<option value="保加利亚语">保加利亚语</option>
					<option value="僧加罗语">僧加罗语</option>
					<option value="芬兰语">芬兰语</option>
					<option value="地质学基地班">地质学基地班</option>
					<option value="文科试验班">文科试验班</option>
					<option value="地球与空间科学">地球与空间科学</option>
					<option value="天文学">天文学</option>
					<option value="印地语">印地语</option>
					<option value="乌尔都语">乌尔都语</option>
					<option value="越南语">越南语</option>
					<option value="菲律宾语">菲律宾语</option>
					<option value="基础医学">基础医学</option>
					<option value="医学实验学">医学实验学</option>
					<option value="水务工程">水务工程</option>
					<option value="特殊教育">特殊教育</option>
					<option value="信息科学技术">信息科学技术</option>
					<option value="生物科学与生物技术">生物科学与生物技术</option>
					<option value="资源环境科学">资源环境科学</option>
					<option value="资源科学与工程">资源科学与工程</option>
					<option value="水土保持与荒漠化防治">水土保持与荒漠化防治</option>
					<option value="物业管理">物业管理</option>
					<option value="信息对抗技术">信息对抗技术</option>
					<option value="地面武器机动工程">地面武器机动工程</option>
					<option value="弹药工程与爆炸技术">弹药工程与爆炸技术</option>
					<option value="武器系统与发射工程">武器系统与发射工程</option>
					<option value="特种能源工程与烟火技术">特种能源工程与烟火技术</option>
					<option value="航天运输与控制">航天运输与控制</option>
					<option value="飞行器设计与工程">飞行器设计与工程</option>
					<option value="武器">武器</option>
					<option value="飞行器动力工程">飞行器动力工程</option>
					<option value="矿物资源工程">矿物资源工程</option>
					<option value="智能科学与技术">智能科学与技术</option>
					<option value="社会科学试验班">社会科学试验班</option>
					<option value="质量与可靠性工程">质量与可靠性工程</option>
					<option value="遥感科学与技术">遥感科学与技术</option>
					<option value="飞行器制造工程">飞行器制造工程</option>
					<option value="飞行技术">飞行技术</option>
					<option value="电磁学与无线技术">电磁学与无线技术</option>
					<option value="电信工程及管理">电信工程及管理</option>
					<option value="电子商务及法律">电子商务及法律</option>
					<option value="电气信息工程">电气信息工程</option>
					<option value="言语听觉科学">言语听觉科学</option>
					<option value="信息显示与光电技术">信息显示与光电技术</option>
					<option value="复合材料与工程">复合材料与工程</option>
					<option value="油气储运工程">油气储运工程</option>
					<option value="植物科学与技术">植物科学与技术</option>
					<option value="水族科学与技术">水族科学与技术</option>
					<option value="生物信息学">生物信息学</option>
					<option value="动植物检疫">动植物检疫</option>
					<option value="茶学">茶学</option>
					<option value="生物信息技术">生物信息技术</option>
					<option value="轮机工程">轮机工程</option>
					<option value="给排水科学与工程">给排水科学与工程</option>
					<option value="中西医临床医学">中西医临床医学</option>
					<option value="集成电路设计与集成系统">集成电路设计与集成系统</option>
					<option value="能源工程及自动化">能源工程及自动化</option>
					<option value="风能与动力工程">风能与动力工程</option>
					<option value="工程造价">工程造价</option>
					<option value="知识产权">知识产权</option>
					<option value="能源动力系统及自动化">能源动力系统及自动化</option>
					<option value="古典文献">古典文献</option>
					<option value="真空电子技术">真空电子技术</option>
					<option value="飞行器环境与生命保障工程">飞行器环境与生命保障工程</option>
					<option value="空间科学与技术">空间科学与技术</option>
					<option value="世界历史">世界历史</option>
					<option value="化学生物学">化学生物学</option>
					<option value="分子科学与工程">分子科学与工程</option>
					<option value="知识产权法">知识产权法</option>
					<option value="国防教育与管理">国防教育与管理</option>
					<option value="仪器仪表">仪器仪表</option>
					<option value="航空航天">航空航天</option>
					<option value="粉体材料科学与工程">粉体材料科学与工程</option>
					<option value="医学试验班">医学试验班</option>
					<option value="放射医学">放射医学</option>
					<option value="历史建筑保护工程">历史建筑保护工程</option>
					<option value="建筑设施智能技术">建筑设施智能技术</option>
					<option value="焊接技术与工程">焊接技术与工程</option>
					<option value="中草药栽培与鉴定">中草药栽培与鉴定</option>
					<option value="烟草">烟草</option>
					<option value="信息资源管理">信息资源管理</option>
					<option value="高分子材料加工工程">高分子材料加工工程</option>
					<option value="化学基地班">化学基地班</option>
					<option value="医学信息工程">医学信息工程</option>
					<option value="医学技术">医学技术</option>
					<option value="卫生检验">卫生检验</option>
					<option value="轻工生物技术">轻工生物技术</option>
					<option value="基础医学基地班">基础医学基地班</option>
					<option value="仿真工程">仿真工程</option>
					<option value="军用光电工程">军用光电工程</option>
					<option value="导弹工程">导弹工程</option>
					<option value="工程兵指挥">工程兵指挥</option>
					<option value="应用数学">应用数学</option>
					<option value="指挥自动化工程">指挥自动化工程</option>
					<option value="电子工程">电子工程</option>
					<option value="空间工程">空间工程</option>
					<option value="管理工程">管理工程</option>
					<option value="飞行器系统与工程">飞行器系统与工程</option>
					<option value="海事管理">海事管理</option>
					<option value="航海技术">航海技术</option>
					<option value="航运管理">航运管理</option>
					<option value="眼视光学">眼视光学</option>
					<option value="艺术设计">艺术设计</option>
					<option value="印刷工程">印刷工程</option>
					<option value="哲学基地班">哲学基地班</option>
					<option value="空间信息与数字技术">空间信息与数字技术</option>
					<option value="水质科学与技术">水质科学与技术</option>
					<option value="导航工程">导航工程</option>
					<option value="经济学基地班">经济学基地班</option>
					<option value="工程结构分析">工程结构分析</option>
					<option value="电子信息技术及仪器">电子信息技术及仪器</option>
					<option value="农产品质量与安全">农产品质量与安全</option>
					<option value="制造自动化与测控技术">制造自动化与测控技术</option>
					<option value="化学工程与工业生物工程">化学工程与工业生物工程</option>
					<option value="工程力学与航天航空工程">工程力学与航天航空工程</option>
					<option value="工程物理">工程物理</option>
					<option value="审计学">审计学</option>
					<option value="轻工纺织食品">轻工纺织食品</option>
					<option value="再生资源科学与技术">再生资源科学与技术</option>
					<option value="非织造材料与工程">非织造材料与工程</option>
					<option value="文物保护技术">文物保护技术</option>
					<option value="交通设备信息工程">交通设备信息工程</option>
					<option value="制造工程">制造工程</option>
					<option value="生物安全">生物安全</option>
					<option value="蚕学">蚕学</option>
					<option value="音乐学">音乐学</option>
					<option value="音乐表演">音乐表演</option>
					<option value="系统工程">系统工程</option>
					<option value="应用电子技术教育">应用电子技术教育</option>
					<option value="文秘教育">文秘教育</option>
					<option value="藏医学">藏医学</option>
				</select> <input type="text" class="input" name="usrScore" id="score"
					placeholder="输入您的分数"> <input type="text" class="input"
					name="baseScore" id="basescore" placeholder="输入您所在省的一本线">
			</div>
		</div>
		<!-- / .container -->
		<div class="container">
			<div class="row">
			    <h3>
			      <span>重要性指标</span>
		        </h3>
		        <hr />
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
					<a class="btn btn-lg btn-blue" style="width:200px;" type="submit"
						onclick="return recommend()">查询</a>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
			    <h3>
			      <span>院校属地</span>
		        </h3>
		        <hr/>
				<!-- Categories -->
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
		<hr id="result" />
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
		for (var i = 0; i < strs.length; i++) {
			theRequest[strs[i].split("=")[0]] = (strs[i].split("=")[1]);
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
	function recommend() {
		var r = /^[0-9]*[1-9][0-9]*$/;
		var score = document.getElementById("score").value;
		var basescore = document.getElementById("basescore").value;
		if (score == "请输入您的高考分数" || basescore == "请输入您所在的一本线") {
			alert("请将信息填完再提交！");
			return false;
		}
		if (!r.test(score) || !r.test(basescore)) {
			alert("请输入正整数");
			return false;
		}
		var usrCate = document.getElementById("type").value;
		var province = document.getElementById("province").value;
		var major = document.getElementById("major").value;
		var preflist = $("a.rate-on");
		if (preflist.length == 4) {
			var comprehensive = preflist[0].getAttribute("val");
			var atmosphere = preflist[1].getAttribute("val");
			var environment = preflist[2].getAttribute("val");
			var prospect = preflist[3].getAttribute("val");
		} else {
			alert("请将信息填完再提交！");
			return false;
		}
		location.href = "schoolrecommendwithmajor?usrScore=" + score + "&baseScore="
				+ basescore + "&usrCate=" + usrCate + "&province="
				+ province + "&major=" + major + "&comprehensive=" + comprehensive
				+ "&atmosphere=" + atmosphere + "&environment=" + environment
				+ "&prospect=" + prospect + "#filters";
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