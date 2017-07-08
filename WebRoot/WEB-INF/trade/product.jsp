<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"  type="text/css"  href="../style/header.css"/>
<link rel="stylesheet"  type="text/css"  href="../style/footer.css"/>
<link rel="stylesheet"  type="text/css"  href="../style/product.css"/>
<link rel="stylesheet"  type="text/css"  href="../style/cart.css"/>



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
           <c:if test="${user != null }">
    				 <li><a>${user}</a></li>
    				 <li id="top_tag2" class="history"><a href="../login/logout" rel="nofollow">注销</a></li>
           			 <li id="top_tag1" class="history"><a href="../trade/cartview" rel="nofollow">购物车</a></li>
            		<li id="top_tag0" class="history"><a href="../userIndex" rel="nofollow">个人中心</a></li>
    		</c:if>
    		<c:if test="${user == null }">
    				<li><a href="login/login">登陆</a></li>
            		<li><a href="login/register">注册</a></li>
    		</c:if>
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
	<div class="cyc_dtl_wrap">
        <div class="cyc_dtl_left left">
            <!-- 相册 -->
            <div class="sp-wrap sp-non-touch">
                <div class="sp-large">
                    <a class="sp-current-big fakeA" href="../img/goods/${goods_url }">
                        <img alt="${goods_name}" src="../img/goods/${goods_url }" data-origin-figure="http://f.p.cycangcdn.com/1498813806595.jpg">
                    </a>
                </div>
                <div class="sp-thumbs-wrap" style="padding: 0px; display: block;">
                    <div class="sp-small-pics">
                        <div class="sp-thumbs sp-tb-active"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="cyc_dtl_right left" style="margin-top:10px;">
            ﻿<!-- 普通商品 s -->
    		<p class="cyc_product_name"> ${goods_name} </p> 
    		<h5 class="cyc_sub_brief"></h5>
        	<div class="cyc_price_wrap">
        	<div class="cyc_dtl_p">
 				价&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;格：
            <div class="c_price_block">
            	<span class="cyc_price_num">￥</span>
                  <span class="cyc_price_num"  id="goods_price">${goods_price} </span>
                  <div class="c_price_benefit"> </div>
            </div>
        </div>
                

        
        <p class="cyc_service cyc_dtl_p">服&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;务：
	        <a href=""> 由<span class="c_red"> 某店 </span>发货。 </a>
	        <a class="c_service_wrap" href="https://static.meiqia.com/dist/standalone.html?eid=17853&amp;metadata=%7B%22%5Cu5546%5Cu54c1%5Cu94fe%5Cu63a5%22%3A%22http%3A%5C%2F%5C%2Fcycang.com%5C%2Findex.php%3Fa%3Dp%26id%3D15933%22%7D" target="_blank">
	            <img class="c_service_icon" src="//www.cycang.com/Public/build/img/service_icon.png">
	            <span class="c_service_title">联系客服</span>
	        </a>
        </p>
                <div class="cyc_dtl_p c_address_wrap" style="padding-right: 0px;">
            		配 送 至：
            		<input type="text" id="city" />
					<script src="../static/js/jquery-1.11.3.min.js"></script>
					<script src="../static/js/Popt.js"></script>
					<script src="../static/js/cityJson.js"></script>
					<script src="../static/js/citySet.js"></script>
					<script type="text/javascript">
					$(function(){
						$("#city").click(function (e) {
							SelCity(this,e);
						});
					})
					</script>
	                <div class="c_addr_postage_wrap" style="margin-left: 3px;">
	                                需邮费
	                        <span class="c_addr_postage">12</span>元
                 	</div>
                </div>
    </div>
        <!--sku-->

    <div class="cyc_add_min_wrap" style="margin-top:30px;">
            <span class="cyc_dtl_tlt left">数&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;量：  </span>
            <div class="cyc_size_content left " id="cyc_add_min">
                <span class="cyc_size_min cyc_math_item left" onclick="minusNum( ${goods_price})" id="minus">-</span>
                <input class="cyc_num_ipt cyc_size_ipt left" id="num" readonly="readonly" value="1">
                <span class="cyc_size_add cyc_math_item left" onclick="plusNum( ${goods_num}, ${goods_price})" id="plus">+</span>
            </div>
            <div class="c_stock_num" style="display: none;"></div>
    </div>


        <div class="cyc_add_cart_wrap" style="margin-top:30px;">
				<a href="cartview">
              		<button class="cyc_dtl_btn  " id="c_add_to_cart" onclick="insertToCart(${goods_id})"> 加入购物车</button>
				</a>	
              <button class="cyc_fav_btn" id="J_fav" >收藏</button>
       </div>
    <!-- 普通商品 e -->
</div>
</div>
    <div class="cyc_item_dtl_wrap">
        <div class="cyc_item_dtl_tlt">
            <span class="cyc_item_dtl_text left">商品详情</span>
        </div>
        <div class="cyc_dtl_intro">
            <img alt="" src="../img/goods/${goods_url }">
            <img alt="" src="../img/goods/${goods_url }">
            <img alt="" src="../img/goods/${goods_url }">
            <img alt="" src="../img/goods/${goods_url }">
            <img alt="" src="../img/goods/${goods_url }">
            <img alt="" src="../img/goods/${goods_url }">
            <img alt="" src="../img/goods/${goods_url }">
            <img alt="" src="../img/goods/${goods_url }">
            <img alt="" src="../img/goods/${goods_url }">
            <img alt="" src="../img/goods/${goods_url }">
            <img alt="" src="../img/goods/${goods_url }">
        </div>
    </div>    
</div>
<!-- middle end -->
<script src="../static/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
	$(".cyc_style_wrap li").click(function(){
	$(this).css({border: "1px solid #ed3f3f"});
	$(this).siblings().css({border: "1px solid #e0e0e0"});
  });
	
</script>
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
  <script type="text/javascript">
  	function minusNum(price){
    		var num = $("#num").val();
    		if(num!="0"){
    			num = parseInt(num);
    			num--;
    		}
    		$("#num").attr("value", num);
    		var price1 = $("#goods_price").text();
    		price1 = parseFloat(price1);
 		    price = parseFloat(price);
    		if(price1 >= price){
    			$("#goods_price").text(price1-price);
    		}
    	}
    	function plusNum(maxnum, price){
    		var num = $("#num").val()
    		if(num!=maxnum){
    			num = parseInt(num);
    			num++;
    		}
    		$("#num").attr("value", num);
    		var price1 = $("#goods_price").text();
    		price1 = parseFloat(price1);
    		price = parseFloat(price);
    		if(num!=maxnum){
    			$("#goods_price").text(price1+price);
    		}
    	}
    	function insertToCart(goods_id){
    		var num = $("#num").val()
    		$.ajax({
 		  		type: "POST",
 		 		url: "insertToCart",
   		 		data: {"goods_num":num, "goods_id":goods_id},
  		  		success: function(msg){
   				}
   			});
    	}
    	window.onload=function(){
  			if (location.href.indexOf("?xyz=")<0){
 				location.href=location.href+"?xyz="+Math.random();
 			}
		}
  </script>
  
</html>
