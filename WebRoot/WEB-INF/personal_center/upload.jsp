<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'upload.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="static/css/upload.css">

  </head>
  
  <body>
    <!-- 顶部内容 -->
	<div class="cd_upload_banner">
		<p>banner here</p>
	</div>
	
	<!-- 中部内容 -->
	<div class="cd_upload_main">
		<div class="cd_upload_head">
			<span>视频</span>
			<span>原创漫画</span>
		</div>
		<div class="cd_upload_container">
			<input style="display:none;opacity:0;" accept=".flv, .mp4" type="file">
		</div>
		<div class="cd_upload_tab">
			<span>游戏视频</span>
			<span>吐槽视频</span>
			<span>个人视频</span>
			<span>评论视频</span>
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
