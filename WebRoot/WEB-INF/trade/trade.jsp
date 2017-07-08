<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"  type="text/css"  href="../style/header.css"/>
<link rel="stylesheet"  type="text/css"  href="../style/footer.css"/>
<link rel="stylesheet"  type="text/css"  href="../style/trade.css"/>
<script src="../static/js/jquery-3.2.1.min.js"></script>
<script src="../static/bootstrap/js/bootstrap.min.js"></script>
<style type="text/css">
</style>
<title>周边</title>
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
				<input name="keyword" class="search-keyword" id="search-keyword" accesskey="s" type="text" placeholder="今天是个好日子" x-webkit-	grammar="builtin:translate" x-webkit-speech="" autocomplete="off" data-	recommend="av11595857">
				<button class="search-submit" type="submit"></button>
			</form>
		</div>
	</div>
</header>
  <!-- header end -->
   <!-- middle start -->
   <div class="middle" style="background-color:white;">
   <!--分类&slider start-->
		<div class="c_slider" style="background-color:#99a2aa ">
			<div class="c_slider_inner">
				<ul class="c_cat_nav">
					<h1  style="text-align:center;">商品分类</h1>
					<li>
						<p class="c_cat_item_list" style="text-align:center;">
							<a href="#floor1">上装、下装</a>
						</p>
					</li>
					<li>
						<p class="c_cat_item_list" style="text-align:center;">
							<a href="#floor3">小裙子、外套</a>
						</p>
					</li>
					<li>
						<p class="c_cat_item_list" style="text-align:center;">
							<a href="#floor5">装扮</a>
						</p>
					</li>
					<li>
						<p class="c_cat_item_list" style="text-align:center;">
							<a href="#floor6">周边</a>
						</p>
					</li>						
				</ul>
			</div>
		</div>
		<!--分类&slider end-->
		<!-- 上衣  start -->
			<div class="c_floor" >
			<div id="floor1" class="c_floor_title">
				<div class="c_floor_name">
					<img alt="上衣" src="../img/logo.png"><span>上衣</span>
				</div>
				<div class="right c_floor_btn">
					<a class="c_floor_change" href="javascript:;">换一批</a>
					<a class="c_floor_more" href="" target="_blank">更多</a>
				</div>
			</div>
			<ul class="c_product_list">
				<c:forEach items="${map1}" var="map">
				<li class="animated fade">
					<a onclick="toItem(${map.id})">
						<img class="c_lazyload" alt="${map.name }" src="../img/goods/${map.url}">
						<p class="c_product_name"> ${map.name}</p>
						<p class="c_prduct_price">¥ ${map.price }</p>
					</a>
				</li>
				</c:forEach>
			</ul>
		</div>
		<!-- 上衣  end -->
		
		<!-- 下装  start -->
			<div class="c_floor" >
			<div id="floor2" class="c_floor_title">
				<div class="c_floor_name">
					<img alt="下装" src="../img/logo.png"><span>下装</span>
				</div>
				<div class="right c_floor_btn">
					<a class="c_floor_change" href="javascript:;">换一批</a>
					<a class="c_floor_more" href="" target="_blank">更多</a>
				</div>
			</div>
			<ul class="c_product_list">
				<c:forEach items="${map2}" var="map">
				<li class="animated fade">
					<a onclick="toItem(${map.id})">
						<img class="c_lazyload" alt="${map.name }" src="../img/goods/${map.url}">
						<p class="c_product_name"> ${map.name}</p>
						<p class="c_prduct_price">¥ ${map.price }</p>
					</a>
				</li>
				</c:forEach>
			</ul>
		</div>
		<!-- 下装  end -->
		
		<!-- 小裙子  start -->
			<div class="c_floor" >
			<div id="floor3" class="c_floor_title">
				<div class="c_floor_name">
					<img alt="小裙子" src="../img/logo.png"><span>小裙子</span>
				</div>
				<div class="right c_floor_btn">
					<a class="c_floor_change" href="javascript:;">换一批</a>
					<a class="c_floor_more" href="" target="_blank">更多</a>
				</div>
			</div>
			<ul class="c_product_list">
				<c:forEach items="${map3}" var="map">
				<li class="animated fade">
					<a onclick="toItem(${map.id})">
						<img class="c_lazyload" alt="${map.name }" src="../img/goods/${map.url}">
						<p class="c_product_name"> ${map.name}</p>
						<p class="c_prduct_price">¥ ${map.price }</p>
					</a>
				</li>
				</c:forEach>
			</ul>
		</div>
		<!-- 小裙子  end -->
		
		<!-- 外套  start -->
			<div class="c_floor" >
			<div id="floor4" class="c_floor_title">
				<div class="c_floor_name">
					<img alt="外套" src="../img/logo.png"><span>外套</span>
				</div>
				<div class="right c_floor_btn">
					<a class="c_floor_change" href="javascript:;">换一批</a>
					<a class="c_floor_more" href="" target="_blank">更多</a>
				</div>
			</div>
			<ul class="c_product_list">
				<c:forEach items="${map4}" var="map">
				<li class="animated fade">
					<a onclick="toItem(${map.id})">
						<img class="c_lazyload" alt="${map.name }" src="../img/goods/${map.url}">
						<p class="c_product_name"> ${map.name}</p>
						<p class="c_prduct_price">¥ ${map.price }</p>
					</a>
				</li>
				</c:forEach>
			</ul>
		</div>
		<!-- 外套 end -->
		
		<!-- 装扮  start -->
			<div class="c_floor" >
			<div id="floor5" class="c_floor_title">
				<div class="c_floor_name">
					<img alt="装扮" src="../img/logo.png"><span>装扮</span>
				</div>
				<div class="right c_floor_btn">
					<a class="c_floor_change" href="javascript:;">换一批</a>
					<a class="c_floor_more" href="" target="_blank">更多</a>
				</div>
			</div>
			<ul class="c_product_list">
				<c:forEach items="${map5}" var="map">
				<li class="animated fade">
					<a onclick="toItem(${map.id})">
						<img class="c_lazyload" alt="${map.name }" src="../img/goods/${map.url}">
						<p class="c_product_name"> ${map.name}</p>
						<p class="c_prduct_price">¥ ${map.price }</p>
					</a>
				</li>
				</c:forEach>
			</ul>
		</div>
		<!-- 装扮 end -->
		
		<!-- 周边  start -->
			<div class="c_floor" >
			<div id="floor6" class="c_floor_title">
				<div class="c_floor_name">
					<img alt="周边" src="../img/logo.png"><span>周边</span>
				</div>
				<div class="right c_floor_btn">
					<a class="c_floor_change" href="javascript:;">换一批</a>
					<a class="c_floor_more" href="" target="_blank">更多</a>
				</div>
			</div>
			<ul class="c_product_list">
				<c:forEach items="${map6}" var="map">
				<li class="animated fade">
					<a onclick="toItem(${map.id})">
						<img class="c_lazyload" alt="${map.name }" src="../img/goods/${map.url}">
						<p class="c_product_name"> ${map.name}</p>
						<p class="c_prduct_price">¥ ${map.price }</p>
					</a>
				</li>
				</c:forEach>
			</ul>
		</div>
		<!-- 周边 end -->
   </div>

   <!-- middle end -->
	<!-- footer start -->
	<div class="footer" style="float:left">
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
	<script type="text/javascript">
		function toItem(goods_id){
			$.ajax({
 		  		type: "POST",
 		 		url: "selectItem",
   		 		data: {"goods_id":goods_id},
  		  		success: function(msg){
   				}
   			});
   			self.location="productview"; 
		}
	</script>
	
</body>
</html>