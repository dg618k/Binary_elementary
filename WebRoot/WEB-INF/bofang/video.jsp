<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"  type="text/css"  href="../style/header.css"/>
<link rel="stylesheet"  type="text/css"  href="../style/footer.css"/>
<link rel="stylesheet"  type="text/css"  href="../style/cartoon.css"/>



<style type="text/css">


</style>
<title>视频</title>
</head>
<body>
<!-- header start -->
<header>
  	<nav>
        <ul>
            <li><a>喵，欢迎来到史上最好的网站</a></li>
    			<li><a>${user}</a></li>
    			<li id="top_tag2" class="history"><a href="../login/logout" rel="nofollow">注销</a></li>
           		<li id="top_tag1" class="history"><a href="../trade/cartview" rel="nofollow">购物车</a></li>
            	<li id="top_tag0" class="history"><a href="../userIndex" rel="nofollow">个人中心</a></li>
        </ul>
	</nav>
	<div class="banner"></div>
	<div class="top2">
		<nav>
	        <ul>
	            <li><a href="../index">主页</a></li>
	            <li><a href="../bofang/videoview">视频</a></li>
	            <li><a href="../cartoon/cartoonview">漫画</a></li>
	            <li><a href="../game/gameview" rel="nofollow">游戏</a></li>
	            <li><a href="../information/informationview" rel="nofollow">资讯</a></li>
	            <li><a href="../trade/tradeview" rel="nofollow">周边</a></li>
	            <li id="top_tag0" class="history">
	            </li>
	        </ul>
		</nav>
		<div class="search">
			<form id="searchform" action="" target="_blank">
				<input name="keyword" class="search-keyword" id="search-keyword" 	accesskey="s" type="text" placeholder="今天是个好日子" x-webkit-	grammar="builtin:translate" x-webkit-speech="" autocomplete="off" data-	recommend="av11595857">
				<button class="search-submit" type="submit"></button>
			</form>
		</div>
	</div>
</header>
  <!-- header end -->
   <!-- middle start -->
   <div class="middle">
		<!-- 原创  start -->
		<div class="c_floor" >
			<div id="floor1" class="c_floor_title">
				<div class="c_floor_name">
					<img alt="原创" src="../img/login/login_logo.jpg"><span>原创</span>
				</div>

				<div class="right c_floor_btn">
					<a class="c_floor_change" href="javascript:;" >换一批</a>
					<a class="c_floor_more" href="index.php?a=page&amp;chid=5" target="_blank">更多</a>
				</div>
			</div>
			<ul class="c_product_list">
			<li id="li1" class="animated fade">
				<a href="" target="_blank">
					<img class="c_lazyload" alt="某视频" src="../img/cartoon/cartoon.jpg">
					<p class="c_prduct_price">某视频</p>	
					
				</a>
			</li>
		
			<li id="li2" class="animated fade">
				<a href="" target="_blank">
					<img class="c_lazyload" alt="某视频" src="../img/cartoon/cartoon.jpg">
					<p class="c_prduct_price">某视频</p>	
					
				</a>
			</li>
		
			<li id="li3"class="animated fade">
				<a href="" target="_blank">
					<img class="c_lazyload" alt="某视频" src="../img/cartoon/cartoon.jpg">
					<p class="c_prduct_price">某视频</p>	
					
				</a>
			</li>
		
			<li id="li4"class="animated fade">
				<a href="" target="_blank">
					<img class="c_lazyload" alt="某视频" src="../img/cartoon/cartoon.jpg">
					<p class="c_prduct_price">某视频</p>	
					
				</a>
			</li>
		</ul>
		</div>
		<!-- 原创  end -->
	</div>
   <!-- middle end -->
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