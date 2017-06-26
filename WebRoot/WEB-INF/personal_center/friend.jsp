<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'friend.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style>
		.cd_friend_banner{
			height:100px; 
			border:1px dashed black; 
			text-align:center;
		}
	</style>
  </head>
  
  <body>
    <!-- 顶部内容 -->
	<div class="cd_friend_banner">
		<p>banner here</p>
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
