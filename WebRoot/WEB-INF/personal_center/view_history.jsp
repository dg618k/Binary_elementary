<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet"  type="text/css"  href="../style/header(1).css"/>
	<link rel="stylesheet"  type="text/css"  href="../style/personal_space.css"/>
	<link rel="stylesheet"  type="text/css"  href="../style/view_history.css"/>
<script src=""></script>

<style type="text/css">


</style>
<title>观看历史</title>
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
 <!-- middle start -->
 <div class="middle">
 <div class="history">
  	<div class="newlist_info">
  		<div class="b-head">
    		<div class="b-head-c">
      			<i class="b-icon b-icon-history"></i>
      				<span class="b-head-t">播放历史</span>
    		</div>
    		<div class="history-btn">
  				<a class="btn cleanhsbtn" href="#">清空历史</a>
			</div>
  		</div>
	</div>
  	<div class="list-contain" style="position:relative">
    	<ul class="history-list" id="history_list">
    	<!-- 历史列表 -->
  			<li class="history-record todayfirst">
    			<div class="l-info">
        			<div class="lastplay-time">
          				<i class="history-red-round"></i>
          				<span class="lastplay-t">11:03</span>
        			</div>
    			</div>
    			<div class="r-info clearfix">
        			<div class="cover-contain">
          
          				<a class="preview"><img src="../img/personal_space/video.jpg"></a>
          				<div class="info"></div>
          
       				</div>       
        			<div class="r-txt">
         			 	<a class="title">标题</a>         
          				<p class="subtitle">
           				<span>集数</span>           
         				</p>        				
	          			<div class="w-info">
	              			<div class="time-wrap">
	                  			<i class="device-i pc"></i>
	                  			<span class="pro-txt">看到&nbsp;&nbsp;00:00</span>                        
	                	</div>
			            <a>
			              <i class="userpic" style='background-image: url("../img/login/login_logo.jpg");'></i>
			              <span class="username">作者名</span>
			            </a>
            			<span class="name">类型</span>
          			</div>                    
          			<i class="history-delete"></i>
        			</div>
    			</div>
			</li>
		</ul>
    	<div class="nodata-contain" style="display: none;">
  			<img class="nodata" alt="" src="//static.hdslb.com/history/img/Unknown.png">
		</div>
  	</div>
</div>
 
 </div>
 <!-- middle start -->
	
  </body>
</html>
