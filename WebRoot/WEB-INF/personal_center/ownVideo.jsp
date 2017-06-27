<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ownVideo.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="static/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<script src="static/js/jquery-3.2.1.min.js"></script>
	<script src="static/bootstrap/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="static/css/ownVideo.css">

  </head>
  
  <body>
  	<!-- 顶部内容 -->
	<div class="cd_ownvideo_banner">
		<p>banner here</p>
	</div>
	
	<!-- 右侧固定栏 -->
	<div class="cd_view_method">
		<p>
			<a href="#"><span class="glyphicon glyphicon-th"></span></a>
		</p>
		<p>
			<a href="#"><span class="glyphicon glyphicon-th-list"></span></a>
		</p>
	</div>
	<div class="cd_video_type_filter">
			<div>
				<span class="glyphicon glyphicon-home"></span><a href="#">全部</a>
			</div>
			<div>
				<span class="glyphicon glyphicon-phone"></span><a href="#">游戏</a>
			</div>
			<div>
				<span class="glyphicon glyphicon-film"></span><a href="#">漫评</a>
			</div>
			<div>
				<span class="glyphicon glyphicon-briefcase"></span><a href="#">资讯</a>
			</div>
			
			<span></span>
			<span></span>
	</div>
	<!-- 中部内容 -->
	<div class="cd_video_main">
		<div class="cd_video_head">
			<div class="cd_video_head_title">用户昵称</div>
			<div class="cd_video_head_sort">
				<a href="#">最多播放</a> 
				<a href="#">最近时间</a>
			</div>
		</div>
		<div class="cd_video_item">
			<ul>
				<li>
					<div class="cd_item_img">
						<img src="img/history_pic1.png" class="img-rounded"> 
					</div>
					<div class="cd_item_container">
						<div class="cd_item_title">资源名称</div>
						<div class="cd_item_intro">简介</div>
						<div class="cd_item_tab">
							<div style="width:20%; float:left">
								<span class="glyphicon glyphicon-play-circle"></span>
								<p><small>播放量</small></p>
							</div>
							<div style="width:20%; float:left">
								<span class="glyphicon glyphicon-list-alt"></span>
								<p><small>收藏数</small></p>
							</div>
							<div style="width:20%; float:left">
								<span class="glyphicon glyphicon-calendar"></span>
								<p><small>已过时间</small></p>
							</div>	
						</div>
					</div>
				</li>
				<li>
					<div class="cd_item_img">
						<img src="img/history_pic1.png" class="img-rounded"> 
					</div>
					<div class="cd_item_container">
						<div class="cd_item_title">资源名称</div>
						<div class="cd_item_intro">简介</div>
						<div class="cd_item_tab">
							<div style="width:20%; float:left">
								<span class="glyphicon glyphicon-play-circle"></span>
								<p><small>播放量</small></p>
							</div>
							<div style="width:20%; float:left">
								<span class="glyphicon glyphicon-list-alt"></span>
								<p><small>收藏数</small></p>
							</div>
							<div style="width:20%; float:left">
								<span class="glyphicon glyphicon-calendar"></span>
								<p><small>已过时间</small></p>
							</div>	
						</div>
					</div>
				</li>
				<li>
					<div class="cd_item_img">
						<img src="img/history_pic1.png" class="img-rounded"> 
					</div>
					<div class="cd_item_container">
						<div class="cd_item_title">资源名称</div>
						<div class="cd_item_intro">简介</div>
						<div class="cd_item_tab">
							<div style="width:20%; float:left">
								<span class="glyphicon glyphicon-play-circle"></span>
								<p><small>播放量</small></p>
							</div>
							<div style="width:20%; float:left">
								<span class="glyphicon glyphicon-list-alt"></span>
								<p><small>收藏数</small></p>
							</div>
							<div style="width:20%; float:left">
								<span class="glyphicon glyphicon-calendar"></span>
								<p><small>已过时间</small></p>
							</div>	
						</div>
					</div>
				</li>
				<li>
					<div class="cd_item_img">
						<img src="img/history_pic1.png" class="img-rounded"> 
					</div>
					<div class="cd_item_container">
						<div class="cd_item_title">资源名称</div>
						<div class="cd_item_intro">简介</div>
						<div class="cd_item_tab">
							<div style="width:20%; float:left">
								<span class="glyphicon glyphicon-play-circle"></span>
								<p><small>播放量</small></p>
							</div>
							<div style="width:20%; float:left">
								<span class="glyphicon glyphicon-list-alt"></span>
								<p><small>收藏数</small></p>
							</div>
							<div style="width:20%; float:left">
								<span class="glyphicon glyphicon-calendar"></span>
								<p><small>已过时间</small></p>
							</div>	
						</div>
					</div>
				</li>
			</ul>
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
