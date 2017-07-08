<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"  type="text/css"  href="../style/cart.css"/>
<link rel="stylesheet"  type="text/css"  href="../style/header(1).css"/>
<link rel="stylesheet"  type="text/css"  href="../style/personal_space.css"/>
<link rel="stylesheet"  type="text/css"  href="../style/footer.css"/>
<script src="../static/js/jquery-3.2.1.min.js"></script>
<script src="../static/bootstrap/js/bootstrap.min.js"></script>
<script src=""></script>

<style type="text/css">

</style>
<title>主页</title>
</head>
  
  <body>
    <!-- header start -->
    <header>
  	<nav>
        <ul>
             <li class="space_header"><a>喵，欢迎来到史上最好的网站</a></li>
             <li><a href="../index">主站</a></li>
            <li id="top_tag1" class="history"><a href="../login/login" target="_blank" rel="nofollow">注销</a></li>
        </ul>
	</nav>
	<div class="h">
		<div class="wrapper">
			<div class="h-inner" style="background-image: url(../img/personal_space/personal_spacebg.png)">
				<div class="h-user"> 
					<div class="h-avatar">
						<c:if test="${user_url != null}">
							<img id="h-avatar" src="${user_url}" do-not-click-me-anymore=""> 
						</c:if>
						<span class="user-auth-subscript avatar-x"></span> 
					</div> 
					<div class="h-info"> 
						<div class="h-basic"> 
							<c:if test="${user_name != null }">
								<span id="h-name"> ${user_name} </span> 
							</c:if>
						</div> 
						<div title="" class="h-sign" style="display: none;"></div> 
					</div> 
				</div>
			</div>
		</div>
	</div>
	<nav class="top2">
        <ul>
             <li class="space_header"><a href="toPersonalInfo">个人信息</a></li>
             <li><a href="../personal_center/gerenxiaoxi">消息</a></li>
             <li><a href="../personal_center/shipinshoucang">收藏</a></li>
             <li><a href="../personal_center/historyview">观看历史</a></li>
             <li><a href="../personal_center/ownVideoview">个人视频</a></li>
            <li id="top_tag3" class="history"><a href="" rel="nofollow">购物车</a></li>
        </ul> 
	</nav>
</header>
    <!-- header end -->
    <!-- middle start -->
    <div class="middle">
    	<div class="c_order_content">
    		<div class="address">
	    		
	    		<div>
	    		<span style="margin-right: 10px">配送至：</span>
				<input type="text" id="city" />
				</div>
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
			</div>
    			<!-- cart head -->
    			<div class="c_thead">
                    
                    <div class="c_th_33 c_th left c_pl_60" style="margin-left:30px;text-align:center">商品信息</div>
                    <div class="c_th_10 c_th left c_text_c" style="margin-left:42px;text-align:center">销售价</div>
                    <div class="c_th_20 c_th c_cart_wrap_th left" style="text-align:center">数量</div>
                    <div class="c_th_10 c_th left">库存</div>
                    <div class="c_th_10 c_th left">小计</div>
                    <div class="c_th_10 c_th left">操作</div>
                </div>
                <!-- cart master -->
                <div class="c_order_wrap" data-order="2102001">
                
	                <div class="c_tr c_tr_item " data-order="2102001" data-sku-id="24449" data-product-id="7780">
	                	<c:set value="0" var="sum" />
	                	<c:set var="index" value="0" />
	                	<c:forEach items="${items}" var="item">
	                	<span style="display:none" id="goods_id${index}"> ${item.id}</span>
	                    <div class="c_td c_th_3 left c_checkbox_simulate c_item_select_box">
	                        <label>
	                            <i class=" c_item_checkbox"><input type="checkbox" checked="checked" name="ttttt"  /></i>
	                        </label>
	                    </div>
	                    <div class="c_td c_th_37 left">
	                        <a class="c_cart_product_img" href="index.php?a=p&amp;id=7780" target="_blank">

	                            <img width="100%" alt="商品" src="../img/goods/${item.url}">
	                        </a>
	                        <a class="c_cart_product_name" onclick="toItem(${item.id})" href="productview">${item.name}</a>
	                    </div>
	                    <div class="c_td c_th_10 left c_data_text c_text_c">                 
	                            <p>¥ ${item.price}</p>
	                    </div>
	                    <div class="c_td c_th_20 left c_data_text">
	                        <div class="number-box c_number_box">
	                            <span class="number-box-dec c_number_box_dec" onclick="minusNum(${index},${item.price})" id="minus${index}">-</span>
	                            <input disabled="disabled" class="number-box-num c_number_box_num" id="num${index}" value="${item.consume_number }">
	                            <span class="number-box-inc c_number_box_inc" onclick="plusNum(${index}, ${item.number},${item.price})" id="plus${index}">+</span>
	                        </div>                                         
	                    </div>
	                    <div class="c_td c_th_10 left c_data_text"> ${item.number} </div>
	                    <div class="c_td c_th_10 left c_data_text"><span class="c_cart_subsum" id="singlePrice${index}">${item.price * item.consume_number}</span></div>
	                    <div class="c_td c_th_10 left c_data_text"><span onclick="deleteItem(${index})" class="cart-del c_cart_del">删除</span></div>
	                    <c:set value="${sum + item.price * item.consume_number}" var="sum" />
	                    <c:set var="index" value="${index+1}" /> 
	                    </c:forEach>
	                </div>
            	</div>
            	<!-- cart bottom -->
            	<div class="c_go_chkout">
                <div class="c_dtl_info_wrap right">
                  	  应付总额:  <span class="c_need_pay">¥<em class="c_pay_total" id="sumPrice">${sum}</em></span>
                    <a class="c_sub_btn" onclick="clickTest()">结算</a>
                </div>
            </div>
    	</div>	
    </div>
    
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
    <script src="../static/js/jquery-3.2.1.min.js"></script>
    <div id="alipay" class="pay" style="display:none">
  			<div class="payHead">
  			<h2>扫码支付</h2>
  			</div>
  			<div class="payCodediv"style="">
  				<div class="payCode">
  					<img width="100%"src="../img/trade/mypay.jpg" >
  				</div>
  			</div>
  			<div class="payBottom">
  				<div id="closediv">确定</div>
  			</div>
  		</div>
    <script type="text/javascript">
  		function clickTest(){
      	$("#alipay").css({"display":"block"});
  		}
 	 	$(function(){
      		$("#closediv").click(function(){
      		$("#alipay").css({"display":"none"});
      	});
  		});
 	 
  	</script>
    <!-- middle end -->
    <script type="text/javascript">
    	function minusNum(index, price){
    		var num = $("#num"+index).val();
    		if(num!="0"){
    			num = parseInt(num);
    			num--;
    		}
    		$("#num"+index).attr("value", num);
    		var price1 = $("#singlePrice"+index).text();
    		var sumPrice = $("#sumPrice").text();
    		sumPrice = parseFloat(sumPrice);
    		price1 = parseFloat(price1);
    		price = parseFloat(price);
    		if(price1 >= price){
    			$("#singlePrice"+index).text(price1-price);
    			$("#sumPrice").text(sumPrice-price);
    		}
    	}
    	function plusNum(index, maxnum, price){
    		var num = $("#num"+index).val()
    		if(num!=maxnum){
    			num = parseInt(num);
    			num++;
    		}
    		$("#num"+index).attr("value", num);
    		var price1 = $("#singlePrice"+index).text();
    		var sumPrice = $("#sumPrice").text();
    		sumPrice = parseFloat(sumPrice);
    		price1 = parseFloat(price1);
    		price = parseFloat(price);
    		if(num!=maxnum){
    			$("#singlePrice"+index).text(price1+price);
    			$("#sumPrice").text(sumPrice+price);
    		}
    	}
    	function deleteItem(index){
    		var obj = $("#goods_id"+index).text();
    		$.ajax({
 		  		type: "POST",
 		 		url: "deleteRecord",
   		 		data: {"goods_id":obj},
  		  		success: function(msg){
  		  			window.location.reload();
   				}
   			});
    	}
    	function toItem(goods_id){
    		$.ajax({
 		  		type: "POST",
 		 		url: "selectItem",
   		 		data: {"goods_id":goods_id},
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
  </body>
</html>