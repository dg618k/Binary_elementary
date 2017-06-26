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
	
	<div class="cd_view_method">
		<p>
			<a href="#"><span class="glyphicon glyphicon-th"></span></a>
		</p>
		<p>
			<a href="#"><span class="glyphicon glyphicon-th-list"></span></a>
		</p>
	</div>
	<!-- 中部内容 -->
	<div class="cd_video_main">
		111
		<div class="cd_video_head">
		</div>
		<div class="cd_video_type_filter">
		</div>
		<div class="cd_video_item">
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
