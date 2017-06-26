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
	<link href="static/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<script src="static/js/jquery-3.2.1.min.js"></script>
	<script src="static/bootstrap/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="static/css/friend.css">

  </head>
  
  <body>
    <!-- 顶部内容 -->
	<div class="cd_friend_banner">
		<p>banner here</p>
	</div>
	
	<!-- 中部内容 -->
	<div class="cd_friend_main">
		<div class="cd_friend_head">
			<span>好友</span>
			<span>黑名单</span>
		</div>
		<div class="cd_friend_left">
			<ul>
				<li>
					<div class="cd_item_left">
						<img src="img/friend_pic1.png">
					</div>
					<div class="cd_item_mid">
						<p class="title"> <a href="#">好友昵称（张三）</a></p><!-- 昵称（备注） -->
						<p style="color:#6d757a;font-size:12px">这里是个性签名</p><!-- 个性签名 -->
					</div>
					<div class="cd_item_right">
						<span class="glyphicon glyphicon-trash"></span>
					</div>
				</li>
				<li>
					<div class="cd_item_left">
						<img src="img/friend_pic1.png">
					</div>
					<div class="cd_item_mid">
						<p class="title"> <a href="#">好友昵称（张三）</a></p><!-- 昵称（备注） -->
						<p style="color:#6d757a;font-size:12px">这里是个性签名</p><!-- 个性签名 -->
					</div>
					<div class="cd_item_right">
						<span class="glyphicon glyphicon-trash"></span>
					</div>
				</li>
				<li>
					<div class="cd_item_left">
						<img src="img/friend_pic1.png">
					</div>
					<div class="cd_item_mid">
						<p class="title"> <a href="#">好友昵称（张三）</a></p><!-- 昵称（备注） -->
						<p style="color:#6d757a;font-size:12px">这里是个性签名</p><!-- 个性签名 -->
					</div>
					<div class="cd_item_right">
						<span class="glyphicon glyphicon-trash"></span>
					</div>
				</li>
				<li>
					<div class="cd_item_left">
						<img src="img/friend_pic1.png">
					</div>
					<div class="cd_item_mid">
						<p class="title"> <a href="#">好友昵称（张三）</a></p><!-- 昵称（备注） -->
						<p style="color:#6d757a;font-size:12px">这里是个性签名</p><!-- 个性签名 -->
					</div>
					<div class="cd_item_right">
						<span class="glyphicon glyphicon-trash"></span>
					</div>
				</li>
			</ul>
		</div>
		<div class="cd_friend_right">
			<ul>
				<li>
					<div class="cd_item_left">
						<img src="img/friend_pic1.png">
					</div>
					<div class="cd_item_mid">
						<p class="title"> <a href="#">好友昵称（张三）</a></p><!-- 昵称（备注） -->
						<p style="color:#6d757a;font-size:12px">这里是个性签名</p><!-- 个性签名 -->
					</div>
					<div class="cd_item_right">
						<span class="glyphicon glyphicon-trash"></span>
					</div>
				</li>
				<li>
					<div class="cd_item_left">
						<img src="img/friend_pic1.png">
					</div>
					<div class="cd_item_mid">
						<p class="title"> <a href="#">好友昵称（张三）</a></p><!-- 昵称（备注） -->
						<p style="color:#6d757a;font-size:12px">这里是个性签名</p><!-- 个性签名 -->
					</div>
					<div class="cd_item_right">
						<span class="glyphicon glyphicon-trash"></span>
					</div>
				</li>
				<li>
					<div class="cd_item_left">
						<img src="img/friend_pic1.png">
					</div>
					<div class="cd_item_mid">
						<p class="title"> <a href="#">好友昵称（张三）</a></p><!-- 昵称（备注） -->
						<p style="color:#6d757a;font-size:12px">这里是个性签名</p><!-- 个性签名 -->
					</div>
					<div class="cd_item_right">
						<span class="glyphicon glyphicon-trash"></span>
					</div>
				</li>
				<li>
					<div class="cd_item_left">
						<img src="img/friend_pic1.png">
					</div>
					<div class="cd_item_mid">
						<p class="title"> <a href="#">好友昵称（张三）</a></p><!-- 昵称（备注） -->
						<p style="color:#6d757a;font-size:12px">这里是个性签名</p><!-- 个性签名 -->
					</div>
					<div class="cd_item_right">
						<span class="glyphicon glyphicon-trash"></span>
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
