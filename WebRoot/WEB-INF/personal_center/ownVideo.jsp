<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <title>个人视频</title>
    
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" type="text/css" href="../static/css/ownVideo.css">
	<link rel="stylesheet"  type="text/css"  href="../style/header(1).css"/>
	<link rel="stylesheet"  type="text/css"  href="../style/footer.css"/>
	<link rel="stylesheet"  type="text/css"  href="../style/personal_space.css"/>

  </head>
  
  <body>
  	<!-- header start -->
<header>
  	<nav>
        <ul>
             <li class="space_header"><a>喵，欢迎来到史上最好的网站</a></li>
             <li><a href="http://localhost:8080/Binary_elementary/index">主站</a></li>
            <li id="top_tag1" class="history"><a href="http://localhost:8080/Binary_elementary/login/register" target="_blank" rel="nofollow">注册</a></li>
            <li id="top_tag0" class="history"><a href="http://localhost:8080/Binary_elementary/login/login" target="_blank" rel="nofollow">登陆</a></li>
        </ul>
	</nav>
	<div class="h">
		<div class="wrapper">
			<div class="h-inner" style="background-image: url(../img/personal_space/personal_spacebg.png)">
				<div class="h-user"> 
					<div class="h-avatar"> 
						<img id="h-avatar" src="../img/login/login_logo.jpg" do-not-click-me-anymore=""> 
						<span class="user-auth-subscript avatar-x"></span> 
					</div> 
					<div class="h-info"> 
						<div class="h-basic"> 
							<span id="h-name">户用议</span>  
						</div> 
						<div title="" class="h-sign" style="display: none;"></div> 
					</div> 
				</div>
			</div>
		</div>
	</div>
	<nav class="top2">
        <ul>
             <li class="space_header"><a>个人信息</a></li>
             <li><a href="gerenxiaoxi">消息</a></li>
             <li><a href="shipinshoucang">收藏</a></li>
             <li><a href="historyview">观看历史</a></li>
             <li><a href="ownVideoview">个人视频</a></li>
            <li id="top_tag4" class="history"><a href="../trade/tradeview" target="_blank" rel="nofollow">订单</a></li>
            <li id="top_tag3" class="history"><a href="../trade/cartview" target="_blank" rel="nofollow">购物车</a></li>
        </ul>
	</nav>
</header>
  	<!-- header end -->
	
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
		<div class="c_sort_wrap">
			<ul class="sortul">
				<li class="cyc_item first on">
					<a class="c_fake_a cyc_link  c_list_oper_sort_down" href="###" >
						<span>最近播放</span>
					</a>
				</li>
				<li class="cyc_item ">
					<a class="c_fake_a cyc_link  " href="###" >
						<span>最多播放</span>
					</a>
				</li>
				<li class="cyc_item ">
					<a class="" >
						<span>最多收藏</span>
						<span class="cyc_sort_icon"></span>
					</a>
				</li>
			</ul>
		</div>
		<div class="cd_video_item">
			<ul>
				<li>
					<div class="cd_item_img">
						<img src="../img/history_pic1.png" class="img-rounded"> 
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
							<div style="width:20%; float:left">
								<span class="glyphicon glyphicon-trash"></span>
								<p><small>删除</small></p>
							</div>	
						</div>
					</div>
				</li>
				<li>
					<div class="cd_item_img">
						<img src="../img/history_pic1.png" class="img-rounded"> 
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
							<div style="width:20%; float:left">
								<span class="glyphicon glyphicon-trash"></span>
								<p><small>删除</small></p>
							</div>	
						</div>
					</div>
				</li>
				<li>
					<div class="cd_item_img">
						<img src="../img/history_pic1.png" class="img-rounded"> 
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
							<div style="width:20%; float:left">
								<span class="glyphicon glyphicon-trash"></span>
								<p><small>删除</small></p>
							</div>	
						</div>
					</div>
				</li>
				<li>
					<div class="cd_item_img">
						<img src="../img/history_pic1.png" class="img-rounded"> 
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
							<div style="width:20%; float:left">
								<span class="glyphicon glyphicon-trash"></span>
								<p><small>删除</small></p>
							</div>	
						</div>
					</div>
				</li>
			</ul>
		</div>
	<div class="clear"></div>  	
	</div>
	
	<!-- footer start -->
	<div class="footer">
		<div class="webinfo">
 			<ul>
 				<li>关于我们</li>
 				<li>联系我们</li>
 				<li>加入我们</li>
 				<li>友情链接</li>
 			</ul>
 		</div>
      	<div class="copy_right">CopyRight @第四小组</div>
	</div>
	<!-- footer end -->
  </body>
</html>
