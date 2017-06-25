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
	<link href="../static/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<script src="../static/js/jquery-3.2.1.min.js"></script>
	<script src="../static/bootstrap/js/bootstrap.min.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  	<!-- 顶部内容 -->
	<div id="history_banner" style="height:100px; border:1px dashed black; text-align:center">
		<p>banner here</p>
	</div>
	<!-- 中部内容 -->
	<div id="main_container" style="width:100%; border:5px dashed black; text-align:center; float:left">
		<div style="height:30px; border:1px dashed black; margin-top:10px">
		播放历史
		</div >
		<!-- 视频内容容器 -->
		<div>
			<div style="width:60%; border:1px dashed black; float:left; margin-left:100px">
				left
			</div>
			<div style="width:25%; border:1px dashed black; float:left">
				right
			</div>
		</div>
	</div>
	<!-- 底部内容 -->
	<div id = "footer" style="width: 100%; border:5px dashed black; float:left;
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
