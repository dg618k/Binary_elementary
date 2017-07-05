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
						<img id="h-avatar" src="../img/login/login_logo.jpg" do-not-click-me-anymore=""> 
						<span class="user-auth-subscript avatar-x"></span> 
					</div> 
					<div class="h-info"> 
						<div class="h-basic"> 
							<c:if test="${name != null }">
								<span id="h-name"> ${name} </span> 
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
             <li class="space_header"><a href="../personal_center/gerenxinxixiugaiview">个人信息</a></li>
             <li><a href="../personal_center/gerenxiaoxiview">消息</a></li>
             <li><a href="">收藏</a></li>
             <li><a href="">观看历史</a></li>
             <li><a href="">个人视频</a></li>
            <li id="top_tag4" class="history"><a href="" target="_blank" rel="nofollow">订单</a></li>
            <li id="top_tag3" class="history"><a href="" target="_blank" rel="nofollow">购物车</a></li>
        </ul>
	</nav>
</header>
    <!-- header end -->
    <!-- middle start -->
    <div class="middle">
    	<div class="c_order_content">
    			<!-- cart head -->
    			<div class="c_thead">
                    <div class="c_th_7 c_th left c_pl">
                        <div class="c_checkbox_simulate c_get_all J_get_all" id="J_get_all">
                            <label>
                                <i><input type="checkbox"></i>
                            </label>
                        </div>
                        	全选
                    </div>
                    <div class="c_th_33 c_th left c_pl_60">商品信息</div>
                    <div class="c_th_10 c_th left c_text_c">销售价</div>
                    <div class="c_th_20 c_th c_cart_wrap_th left">数量</div>
                    <div class="c_th_10 c_th left">库存</div>
                    <div class="c_th_10 c_th left">小计</div>
                    <div class="c_th_10 c_th left">操作</div>
                </div>
                <!-- cart master -->
                <div class="c_order_wrap" data-order="2102001">
                
	                <div class="c_tr c_tr_item " data-order="2102001" data-sku-id="24449" data-product-id="7780">
	                    <div class="c_td c_th_3 left c_checkbox_simulate c_item_select_box">
	                        <label>
	                            <i class=" c_item_checkbox"><input type="checkbox" data-product-type="0"></i>
	                        </label>
	                    </div>
	                    <div class="c_td c_th_37 left">
	                        <a class="c_cart_product_img" href="index.php?a=p&amp;id=7780" target="_blank">
	                            <img width="100%" alt="商品" src="../img/goods/goods1.jpg">
	                        </a>
	                        <a class="c_cart_product_name" href="index.php?a=p&amp;id=7780" target="_blank">某商品</a>
	                    </div>
	                    <div class="c_td c_th_10 left c_data_text c_text_c">                 
	                            <p>¥19.80</p>
	                    </div>
	                    <div class="c_td c_th_20 left c_data_text">
	                        
	                        <div class="number-box c_number_box">
	                            <span class="number-box-dec c_number_box_dec">-</span><input disabled="disabled" class="number-box-num c_number_box_num" value="1"><span class="number-box-inc c_number_box_inc">+</span>
	                        </div>
	                                           
	                    </div>
	                    <div class="c_td c_th_10 left c_data_text">有货</div>
	                    <div class="c_td c_th_10 left c_data_text"><span class="c_cart_subsum">¥19.80</span></div>
	                    <div class="c_td c_th_10 left c_data_text"><span class="cart-del c_cart_del ">删除</span></div>
	                    
	                </div>
            	</div>
            	<!-- cart bottom -->
            	<div class="c_go_chkout">
                <div class="c_dtl_info_wrap right">
                  	  应付总额:  <span class="c_need_pay">¥<em class="c_pay_total">59.40</em></span>
                    <a class="c_sub_btn">结算</a>
                </div>
            </div>
           
    	</div>	
    </div>	
    <!-- middle end -->
  </body>
</html>
