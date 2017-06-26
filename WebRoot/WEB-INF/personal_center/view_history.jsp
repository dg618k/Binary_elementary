<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'view_history.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="static/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<script src="static/js/jquery-3.2.1.min.js"></script>
	<script src="static/bootstrap/js/bootstrap.min.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="static/css/view_history.css">
	<style>
		
	</style>

  </head>
  
  <body>
  	<!-- 顶部内容 -->
	<div class="cd_history_banner">
		<p>banner here</p>
	</div>
	<!-- 中部内容 -->
	<div class="cd_history_main_container">
		<!-- 首部 -->
		<div class="cd_main_head">
			<div style="float:left">
				<图标>
				播放历史
			</div>
			<div class="cd_clear_history">
				清空历史
			</div>
		</div >

		<!-- 视频内容容器 -->
		<div style="border:2px solid red; float:left; width:100%">
			<!-- 时间导航 -->
			<div style="width:60%; margin-left:300px:; border:1px dashed black; margin-top:10px; float:left">
				<div style="float:left; width:25%">今天</div>
				<div style="float:left; width:25%">本周内</div>
				<div style="float:left; width:25%">本月内</div>
				<div style="float:left; width:25%">全部</div>
			</div>
			<div style="width:40%; border:1px dashed black; float:left; margin-left:60px">
				<ul>
					<li>
						<div style="width:40%; height:80%; float:left">
							<a href="#">
							<img src="img/history_pic1.png" style="width:100%; height: 100%" />
							</a>
						</div>
						<div style="width:40%; height:80%; float:left">
							<a href="#">
								<p style="margin-top:40px;margin-left:50px; padding:10px;font-size:12px;font-family:'Helvetica Neue',Helvetica,Arial,'Microsoft Yahei','Hiragino Sans GB','Heiti SC','WenQuanYi Micro Hei';">【催泪向】总有一天会再次相遇，在此之前只是短暂的离别 </p>
							</a>
						</div>
						<!-- 删除记录 -->
						<div style="float:right;width:5%;padding-top:60px">
							<p style="background-color:red">删除</p>
						</div>
						<div style="width:40%;height:13%;border:1px solid black;float:left;">
							<span style="float:left; width:20%; font-size:10px">tab1</span>
							<span style="float:left; width:20%; font-size:10px">tab2</span>
							<span style="float:left; width:20%; font-size:10px">tab2</span>
							<span style="float:left; width:20%; font-size:10px">tab2</span>
							<span style="float:left; width:20%; font-size:10px">tab2</span>
						</div>
					</li>
					<li>
						<div style="width:40%; height:80%; float:left">
							<a href="#">
							<img src="img/history_pic1.png" style="width:100%; height: 100%" />
							</a>
						</div>
						<div style="width:40%; height:80%; float:left">
							<a href="#">
								<p style="margin-top:40px;margin-left:50px; padding:10px;font-size:12px;font-family:'Helvetica Neue',Helvetica,Arial,'Microsoft Yahei','Hiragino Sans GB','Heiti SC','WenQuanYi Micro Hei';">【催泪向】总有一天会再次相遇，在此之前只是短暂的离别 </p>
							</a>
						</div>
						<!-- 删除记录 -->
						<div style="float:right;width:5%;padding-top:60px">
							<p style="background-color:red">删除</p>
						</div>
						<div style="width:40%;height:13%;border:1px solid black;float:left;">
							<span style="float:left; width:20%; font-size:10px">tab1</span>
							<span style="float:left; width:20%; font-size:10px">tab2</span>
							<span style="float:left; width:20%; font-size:10px">tab2</span>
							<span style="float:left; width:20%; font-size:10px">tab2</span>
							<span style="float:left; width:20%; font-size:10px">tab2</span>
						</div>
					</li>
					<li>
						<div style="width:40%; height:80%; float:left">
							<a href="#">
							<img src="img/history_pic1.png" style="width:100%; height: 100%" />
							</a>
						</div>
						<div style="width:40%; height:80%; float:left">
							<a href="#">
								<p style="margin-top:40px;margin-left:50px; padding:10px;font-size:12px;font-family:'Helvetica Neue',Helvetica,Arial,'Microsoft Yahei','Hiragino Sans GB','Heiti SC','WenQuanYi Micro Hei';">【催泪向】总有一天会再次相遇，在此之前只是短暂的离别 </p>
							</a>
						</div>
						<!-- 删除记录 -->
						<div style="float:right;width:5%;padding-top:60px">
							<p style="background-color:red">删除</p>
						</div>
						<div style="width:40%;height:13%;border:1px solid black;float:left;">
							<span style="float:left; width:20%; font-size:10px">tab1</span>
							<span style="float:left; width:20%; font-size:10px">tab2</span>
							<span style="float:left; width:20%; font-size:10px">tab2</span>
							<span style="float:left; width:20%; font-size:10px">tab2</span>
							<span style="float:left; width:20%; font-size:10px">tab2</span>
						</div>
					</li>
					<li>
						<div style="width:40%; height:80%; float:left">
							<a href="#">
							<img src="img/history_pic1.png" style="width:100%; height: 100%" />
							</a>
						</div>
						<div style="width:40%; height:80%; float:left">
							<a href="#">
								<p style="margin-top:40px;margin-left:50px; padding:10px;font-size:12px;font-family:'Helvetica Neue',Helvetica,Arial,'Microsoft Yahei','Hiragino Sans GB','Heiti SC','WenQuanYi Micro Hei';">【催泪向】总有一天会再次相遇，在此之前只是短暂的离别 </p>
							</a>
						</div>
						<!-- 删除记录 -->
						<div style="float:right;width:5%;padding-top:60px">
							<p style="background-color:red">删除</p>
						</div>
						<div style="width:40%;height:13%;border:1px solid black;float:left;">
							<span style="float:left; width:20%; font-size:10px">tab1</span>
							<span style="float:left; width:20%; font-size:10px">tab2</span>
							<span style="float:left; width:20%; font-size:10px">tab2</span>
							<span style="float:left; width:20%; font-size:10px">tab2</span>
							<span style="float:left; width:20%; font-size:10px">tab2</span>
						</div>
					</li>
				</ul>
			</div>
			<!-- 时间线 -->
			<div style="width:10%; border:1px dashed black; height:140%; float:left;margin-left:4px">
				时间线
			</div>
			<div style="width:40%; border:1px dashed black; float:right; margin-right:60px">
				<ul>
					<li>
						<div style="width:40%; height:80%; float:left">
							<a href="#">
							<img src="img/history_pic1.png" style="width:100%; height: 100%" />
							</a>
						</div>
						<div style="width:40%; height:80%; float:left">
							<a href="#">
								<p style="margin-top:40px;margin-left:50px; padding:10px;font-size:12px;font-family:'Helvetica Neue',Helvetica,Arial,'Microsoft Yahei','Hiragino Sans GB','Heiti SC','WenQuanYi Micro Hei';">【催泪向】总有一天会再次相遇，在此之前只是短暂的离别 </p>
							</a>
						</div>
						<!-- 删除记录 -->
						<div style="float:right;width:5%;padding-top:60px">
							<p style="background-color:red">删除</p>
						</div>
						<div style="width:40%;height:13%;border:1px solid black;float:left;">
							<span style="float:left; width:20%; font-size:10px">tab1</span>
							<span style="float:left; width:20%; font-size:10px">tab2</span>
							<span style="float:left; width:20%; font-size:10px">tab2</span>
							<span style="float:left; width:20%; font-size:10px">tab2</span>
							<span style="float:left; width:20%; font-size:10px">tab2</span>
						</div>
					</li>
					<li>
						<div style="width:40%; height:80%; float:left">
							<a href="#">
							<img src="img/history_pic1.png" style="width:100%; height: 100%" />
							</a>
						</div>
						<div style="width:40%; height:80%; float:left">
							<a href="#">
								<p style="margin-top:40px;margin-left:50px; padding:10px;font-size:12px;font-family:'Helvetica Neue',Helvetica,Arial,'Microsoft Yahei','Hiragino Sans GB','Heiti SC','WenQuanYi Micro Hei';">【催泪向】总有一天会再次相遇，在此之前只是短暂的离别 </p>
							</a>
						</div>
						<!-- 删除记录 -->
						<div style="float:right;width:5%;padding-top:60px">
							<p style="background-color:red">删除</p>
						</div>
						<div style="width:40%;height:13%;border:1px solid black;float:left;">
							<span style="float:left; width:20%; font-size:10px">tab1</span>
							<span style="float:left; width:20%; font-size:10px">tab2</span>
							<span style="float:left; width:20%; font-size:10px">tab2</span>
							<span style="float:left; width:20%; font-size:10px">tab2</span>
							<span style="float:left; width:20%; font-size:10px">tab2</span>
						</div>
					</li>
					<li>
						<div style="width:40%; height:80%; float:left">
							<a href="#">
							<img src="img/history_pic1.png" style="width:100%; height: 100%" />
							</a>
						</div>
						<div style="width:40%; height:80%; float:left">
							<a href="#">
								<p style="margin-top:40px;margin-left:50px; padding:10px;font-size:12px;font-family:'Helvetica Neue',Helvetica,Arial,'Microsoft Yahei','Hiragino Sans GB','Heiti SC','WenQuanYi Micro Hei';">【催泪向】总有一天会再次相遇，在此之前只是短暂的离别 </p>
							</a>
						</div>
						<!-- 删除记录 -->
						<div style="float:right;width:5%;padding-top:60px">
							<p style="background-color:red">删除</p>
						</div>
						<div style="width:40%;height:13%;border:1px solid black;float:left;">
							<span style="float:left; width:20%; font-size:10px">tab1</span>
							<span style="float:left; width:20%; font-size:10px">tab2</span>
							<span style="float:left; width:20%; font-size:10px">tab2</span>
							<span style="float:left; width:20%; font-size:10px">tab2</span>
							<span style="float:left; width:20%; font-size:10px">tab2</span>
						</div>
					</li>
					<li>
						<div style="width:40%; height:80%; float:left">
							<a href="#">
							<img src="img/history_pic1.png" style="width:100%; height: 100%" />
							</a>
						</div>
						<div style="width:40%; height:80%; float:left">
							<a href="#">
								<p style="margin-top:40px;margin-left:50px; padding:10px;font-size:12px;font-family:'Helvetica Neue',Helvetica,Arial,'Microsoft Yahei','Hiragino Sans GB','Heiti SC','WenQuanYi Micro Hei';">【催泪向】总有一天会再次相遇，在此之前只是短暂的离别 </p>
							</a>
						</div>
						<!-- 删除记录 -->
						<div style="float:right;width:5%;padding-top:60px">
							<p style="background-color:red">删除</p>
						</div>
						<div style="width:40%;height:13%;border:1px solid black;float:left;">
							<span style="float:left; width:20%; font-size:10px">tab1</span>
							<span style="float:left; width:20%; font-size:10px">tab2</span>
							<span style="float:left; width:20%; font-size:10px">tab2</span>
							<span style="float:left; width:20%; font-size:10px">tab2</span>
							<span style="float:left; width:20%; font-size:10px">tab2</span>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- 底部内容 -->
	<div style="width: 100%; border:5px dashed black; float:left;
		margin-top:30px; text-align:center">
		<div style="width:60%; border:1px dashed black; float:left; margin-left:100px">
			left
		</div>
		<div style="width:25%; border:1px dashed black; float:left">
			right
		</div>
	</div>
	
  </body>
</html>
