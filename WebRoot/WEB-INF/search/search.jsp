<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"  type="text/css"  href="../style/header.css"/>
<link rel="stylesheet"  type="text/css"  href="../style/footer.css"/>
<link rel="stylesheet"  type="text/css"  href="../style/list.css"/>



<style type="text/css">


</style>
<title>search</title>
</head>
<body>
<!-- header start -->
<header>
  	<nav>
        <ul>
            <li><a>喵，欢迎来到史上最好的网站</a></li>
             <li><a href="">登陆</a></li>
              <li><a href="">注册</a></li>
            <li id="top_tag1" class="history"><a href="" target="_blank" rel="nofollow">订单</a></li>
            <li id="top_tag0" class="history"><a href="" target="_blank" rel="nofollow">购物车</a></li>
            
        </ul>
	</nav>
	<div class="banner"></div>
	<div class="top2">
		<nav>
	        <ul>
	            <li><a href="">主页</a></li>
	            <li><a href="" target="_blank">视频</a></li>
	            <li><a href="" target="_blank">漫画</a></li>
	            <li><a href="" target="_blank" rel="nofollow">游戏</a></li>
	            <li><a href="" target="_blank" rel="nofollow">资讯</a></li>
	            <li><a href="" target="_blank" rel="nofollow">周边</a></li>
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
		<div class="c_sort_wrap">
			<ul>
				<li class="cyc_item first on">
					<a class="c_fake_a cyc_link  c_list_oper_sort_down" href="###" data-sort="">
						<span>综合排序</span>
					</a>
				</li>
				<li class="cyc_item ">
					<a class="c_fake_a cyc_link  " href="###" data-sort="">
						<span>最多点击</span>
					</a>
				</li>
				<li class="cyc_item ">
					<a class="" data-sort="">
						<span>最多收藏</span>
						<span class="cyc_sort_icon"></span>
					</a>
				</li>
			</ul>
		</div>
		<div class="c_list_wrap">
			<div class="cyc_list_content">
				<div class="c_normal_list_wrap">
					<a href="" target="_blank" class="c_list_item c_count_item "  data-page='list'>
							<img src="../img/search/search.jpg" data-url="" class="c_list_item_img c_scroll_load" width="250px" height="250px">
							<div class="c_list_item_intro">
								
								<p class="c_list_item_price">标题</p>
								<p class="c_list_item_name">简介</p>
							</div>
					</a>
				</div>
			</div>
		</div>
		<div class="clear"></div>  
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