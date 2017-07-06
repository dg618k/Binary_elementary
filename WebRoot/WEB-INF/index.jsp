<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"  type="text/css"  href="style/header.css"/>
<link rel="stylesheet"  type="text/css"  href="style/footer.css"/>
<link rel="stylesheet"  type="text/css"  href="style/main.css"/>
<script src="static/js/jquery-1.8.3.min.js"></script>
<title>主页</title>
</head>
<body>
<!-- header start -->
<header>
  	<nav>
        <ul>
            <li><a>喵，欢迎来到史上最好的网站</a></li>
           <c:if test="${user != null }">
    				 <li><a>${user}</a></li>
    		</c:if>
    		<c:if test="${user == null }">
    				<li><a href="login/login">登陆</a></li>
            		<li><a href="login/register">注册</a></li>
    		</c:if>
            <li id="top_tag1" class="history"><a href="" target="_blank" rel="nofollow">注销</a></li>
            <li id="top_tag0" class="history"><a href="toCart" target="_blank" rel="nofollow">购物车</a></li>
        </ul>
	</nav>
	<div class="banner"></div>
	<div class="top2">
		<nav>
	        <ul>
	            <li><a href="http://localhost:8080/Binary_elementary/index">主页</a></li>
	            <li><a href="" target="_blank">视频</a></li>
	            <li><a href="" target="_blank">漫画</a></li>
	            <li><a href="" target="_blank" rel="nofollow">游戏</a></li>
	            <li><a href="" target="_blank" rel="nofollow">资讯</a></li>
	            <li><a href="trade/tradeview" target="_blank" rel="nofollow">周边</a></li>
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
    <div class="middle">
    <!-- 轮播图 start -->
    	<div class="container-lunbo">
			<div id="slide" class="slide" >
				<!-- 轮播图片数量可自行增减 -->
				<div class="img"><img src="img/main/4.jpg"/></div>
				<div class="img"><img src="img/main/1.jpg"/></div>
				<div class="img"><img src="img/main/2.jpg"/></div>
				<div class="img"><img src="img/main/3.jpg"/></div>
				<div class="img"><img src="img/main/5.jpg"/></div>
				<div class="slide-bt"></div>
			</div>
		</div>

<script>
var autoLb = true;          //autoLb=true为开启自动轮播
var autoLbtime = 1;         //autoLbtime为轮播间隔时间（单位秒）
var touch = true;           //touch=true为开启触摸滑动
var slideBt = true;         //slideBt=true为开启滚动按钮
var slideNub;               //轮播图片数量

//窗口大小改变时改变轮播图宽高
$(window).resize(function(){
$(".slide").height($(".slide").width()*0.56);
});


$(function(){
$(".slide").height($(".slide").width()*0.56);
slideNub = $(".slide .img").size();             //获取轮播图片数量
for(i=0;i<slideNub;i++){
	$(".slide .img:eq("+i+")").attr("data-slide-imgId",i);
}

//根据轮播图片数量设定图片位置对应的class
if(slideNub==1){
	for(i=0;i<slideNub;i++){
		$(".slide .img:eq("+i+")").addClass("img3");
	}
}
if(slideNub==2){
	for(i=0;i<slideNub;i++){
		$(".slide .img:eq("+i+")").addClass("img"+(i+3));
	}
}
if(slideNub==3){
	for(i=0;i<slideNub;i++){
		$(".slide .img:eq("+i+")").addClass("img"+(i+2));
	}
}
if(slideNub>3&&slideNub<6){
	for(i=0;i<slideNub;i++){
		$(".slide .img:eq("+i+")").addClass("img"+(i+1));
	}
}
if(slideNub>=6){
	for(i=0;i<slideNub;i++){
		if(i<5){
		   $(".slide .img:eq("+i+")").addClass("img"+(i+1)); 
		}else{
			$(".slide .img:eq("+i+")").addClass("img5"); 
		}
	}
}

//根据轮播图片数量设定轮播图按钮数量
if(slideBt){
	for(i=1;i<=slideNub;i++){
		$(".slide-bt").append("<span data-slide-bt='"+i+"' onclick='tz("+i+")'></span>");
	}
	$(".slide-bt").width(slideNub*34);
	$(".slide-bt").css("margin-left","-"+slideNub*17+"px");
}

//自动轮播
if(autoLb){
	setInterval(function(){
	right();
}, autoLbtime*3000);
}


slideLi();
imgClickFy();
})

//右滑动
function right(){
var fy = new Array();
for(i=0;i<slideNub;i++){
	fy[i]=$(".slide .img[data-slide-imgId="+i+"]").attr("class");
}
for(i=0;i<slideNub;i++){
	if(i==0){
		$(".slide .img[data-slide-imgId="+i+"]").attr("class",fy[slideNub-1]);
	}else{
	   $(".slide .img[data-slide-imgId="+i+"]").attr("class",fy[i-1]); 
	}
}
imgClickFy();
slideLi();
}

//左滑动
function left(){
var fy = new Array();
for(i=0;i<slideNub;i++){
	fy[i]=$(".slide .img[data-slide-imgId="+i+"]").attr("class");
}
for(i=0;i<slideNub;i++){
	if(i==(slideNub-1)){
		$(".slide .img[data-slide-imgId="+i+"]").attr("class",fy[0]);
	}else{
	   $(".slide .img[data-slide-imgId="+i+"]").attr("class",fy[i+1]); 
	}
}
imgClickFy();
slideLi();
}

//轮播图片左右图片点击翻页
function imgClickFy(){
$(".slide .img").removeAttr("onclick");
$(".slide .img2").attr("onclick","left()");
$(".slide .img4").attr("onclick","right()");
}

//修改当前最中间图片对应按钮选中状态
function slideLi(){
var slideList = parseInt($(".slide .img3").attr("data-slide-imgId")) + 1;
$(".slide-bt span").removeClass("on");
$(".slide-bt span[data-slide-bt="+slideList+"]").addClass("on");
}

//轮播按钮点击翻页
function tz(id){
var tzcs = id - (parseInt($(".slide .img3").attr("data-slide-imgId")) + 1);
if(tzcs>0){
	for(i=0;i<tzcs;i++){
		setTimeout(function(){
		  right();  
		},1);
	}
}
if(tzcs<0){
	tzcs=(-tzcs);
	for(i=0;i<tzcs;i++){
		setTimeout(function(){
		  left();  
		},1);
	}
}
slideLi();
}




</script>
    <!-- 轮播图  end -->
    <!-- 视频  start-->
        <div class="container-row-1" id="guochan">
            <div class="section-head">
                <h2 class="color-orange">视频</h2>
                <h4 class="more"><a herf="" target="_blank">更多</a></h4>
                <div class="cut-off-line"></div>
            </div>

            <div class="section-body">
                <ul class="section-body-videolist">
               		<c:forEach items="${cartoon}" var="c">
                    	<li>
	                        <a href="">
	                            <div class="section-body-videolist-cover">
	                                <img src="img/main/middle_box.jpg"/>
	                                <div class="section-body-videolist-title">
	                                    <p class="title">${c.title}</p>
	                                    <c:forEach items="${type}" var="t">
	                                    	<c:if test="${t.entity_id == c.id }">
	                                    		<p class="genre">${t.second_type}</p>
	                                    	</c:if>
	                                    </c:forEach>
	                                </div>
	                            </div>
	                        </a>
	                    </li>
                    </c:forEach>
                    <div class="clear"></div>
                </ul>
            </div>
        </div>
<!--视频 end -->
 <!-- 漫画  start-->
        <div class="container-row-1" id="guochan">
            <div class="section-head">
                <h2 class="color-orange">漫画</h2>
                <h4 class="more"><a herf="" target="_blank">更多</a></h4>
                <div class="cut-off-line"></div>
            </div>

            <div class="section-body">
                <ul class="section-body-videolist">
                    <li style="margin-left:30px">
                        <a href="">
                            <div class="section-body-videolist-cover">
                                <img src="img/main/middle_box.jpg"/>
                                <div class="section-body-videolist-title">
                                    <p class="title">某节目</p>
                                    <p class="genre">类型1|类型2</p>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="section-body-videolist-cover">
                                <img src="img/main/middle_box.jpg"/>
                                <div class="section-body-videolist-title">
                                    <p class="title">某节目</p>
                                    <p class="genre">类型1|类型2</p>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="/anime/swglxhdsj/">
                            <div class="section-body-videolist-cover">
                                <img src="img/main/middle_box.jpg"/>
                                <div class="section-body-videolist-title">
                                    <p class="title">某节目</p>
                                    <p class="genre">类型1|类型2</p>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="/anime/duannao/">
                            <div class="section-body-videolist-cover">
                                <img src="img/main/middle_box.jpg"/>
                                <div class="section-body-videolist-title">
                                    <p class="title">某节目</p>
                                    <p class="genre">类型1|类型2</p>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="section-body-videolist-cover">
                                <img src="img/main/middle_box.jpg"/>
                                <div class="section-body-videolist-title">
                                    <p class="title">某节目</p>
                                    <p class="genre">类型1|类型2</p>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="section-body-videolist-cover">
                                <img src="img/main/middle_box.jpg"/>
                                <div class="section-body-videolist-title">
                                    <p class="title">某节目</p>
                                    <p class="genre">类型1|类型2</p>
                                </div>
                            </div>
                        </a>
                    </li>
                    <div class="clear"></div>
                </ul>
            </div>
        </div>
<!--漫画 end -->
<!-- 游戏  start-->
        <div class="container-row-1" id="guochan">
            <div class="section-head">
                <h2 class="color-orange">游戏</h2>
                 <h4 class="more"><a herf="" target="_blank">更多</a></h4>
                <div class="cut-off-line"></div>
            </div>

            <div class="section-body">
                <ul class="section-body-videolist">
                    <li style="margin-left:30px">
                        <a href="">
                            <div class="section-body-videolist-cover">
                                <img src="img/main/middle_box.jpg"/>
                                <div class="section-body-videolist-title">
                                    <p class="title">某节目</p>
                                    <p class="genre">类型1|类型2</p>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="section-body-videolist-cover">
                                <img src="img/main/middle_box.jpg"/>
                                <div class="section-body-videolist-title">
                                    <p class="title">某节目</p>
                                    <p class="genre">类型1|类型2</p>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="/anime/swglxhdsj/">
                            <div class="section-body-videolist-cover">
                                <img src="img/main/middle_box.jpg"/>
                                <div class="section-body-videolist-title">
                                    <p class="title">某节目</p>
                                    <p class="genre">类型1|类型2</p>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="/anime/duannao/">
                            <div class="section-body-videolist-cover">
                                <img src="img/main/middle_box.jpg"/>
                                <div class="section-body-videolist-title">
                                    <p class="title">某节目</p>
                                    <p class="genre">类型1|类型2</p>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="section-body-videolist-cover">
                                <img src="img/main/middle_box.jpg"/>
                                <div class="section-body-videolist-title">
                                    <p class="title">某节目</p>
                                    <p class="genre">类型1|类型2</p>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="section-body-videolist-cover">
                                <img src="img/main/middle_box.jpg"/>
                                <div class="section-body-videolist-title">
                                    <p class="title">某节目</p>
                                    <p class="genre">类型1|类型2</p>
                                </div>
                            </div>
                        </a>
                    </li>
                    <div class="clear"></div>
                </ul>
            </div>
        </div>
<!--游戏  end-->
<!-- 资讯 start-->
        <div class="container-row-1" id="guochan">
            <div class="section-head">
                <h2 class="color-orange">资讯</h2>
                 <h4 class="more"><a herf="" target="_blank">更多</a></h4>
                <div class="cut-off-line"></div>
            </div>

            <div class="section-body">
                <ul class="section-body-videolist">
                    <li style="margin-left:30px">
                        <a href="">
                            <div class="section-body-videolist-cover">
                                <img src="img/main/middle_box.jpg"/>
                                <div class="section-body-videolist-title">
                                    <p class="title">某节目</p>
                                    <p class="genre">类型1|类型2</p>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="section-body-videolist-cover">
                                <img src="img/main/middle_box.jpg"/>
                                <div class="section-body-videolist-title">
                                    <p class="title">某节目</p>
                                    <p class="genre">类型1|类型2</p>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="/anime/swglxhdsj/">
                            <div class="section-body-videolist-cover">
                                <img src="img/main/middle_box.jpg"/>
                                <div class="section-body-videolist-title">
                                    <p class="title">某节目</p>
                                    <p class="genre">类型1|类型2</p>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="/anime/duannao/">
                            <div class="section-body-videolist-cover">
                                <img src="img/main/middle_box.jpg"/>
                                <div class="section-body-videolist-title">
                                    <p class="title">某节目</p>
                                    <p class="genre">类型1|类型2</p>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="section-body-videolist-cover">
                                <img src="img/main/middle_box.jpg"/>
                                <div class="section-body-videolist-title">
                                    <p class="title">某节目</p>
                                    <p class="genre">类型1|类型2</p>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="section-body-videolist-cover">
                                <img src="img/main/middle_box.jpg"/>
                                <div class="section-body-videolist-title">
                                    <p class="title">某节目</p>
                                    <p class="genre">类型1|类型2</p>
                                </div>
                            </div>
                        </a>
                    </li>
                    <div class="clear"></div>
                </ul>
            </div>
        </div>
<!--资讯 end-->
<!-- 周边 start-->
        <div class="container-row-1" id="guochan">
            <div class="section-head">
                <h2 class="color-orange">周边</h2>
                 <h4 class="more"><a herf="" target="_blank">更多</a></h4>
                <div class="cut-off-line"></div>
            </div>

            <div class="section-body">
                <ul class="section-body-videolist">
                    <li style="margin-left:30px">
                        <a href="">
                            <div class="section-body-videolist-cover">
                                <img src="img/main/middle_box.jpg"/>
                                <div class="section-body-videolist-title">
                                    <p class="title">某节目</p>
                                    <p class="genre">类型1|类型2</p>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="section-body-videolist-cover">
                                <img src="img/main/middle_box.jpg"/>
                                <div class="section-body-videolist-title">
                                    <p class="title">某节目</p>
                                    <p class="genre">类型1|类型2</p>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="/anime/swglxhdsj/">
                            <div class="section-body-videolist-cover">
                                <img src="img/main/middle_box.jpg"/>
                                <div class="section-body-videolist-title">
                                    <p class="title">某节目</p>
                                    <p class="genre">类型1|类型2</p>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="/anime/duannao/">
                            <div class="section-body-videolist-cover">
                                <img src="img/main/middle_box.jpg"/>
                                <div class="section-body-videolist-title">
                                    <p class="title">某节目</p>
                                    <p class="genre">类型1|类型2</p>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="section-body-videolist-cover">
                                <img src="img/main/middle_box.jpg"/>
                                <div class="section-body-videolist-title">
                                    <p class="title">某节目</p>
                                    <p class="genre">类型1|类型2</p>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="section-body-videolist-cover">
                                <img src="img/main/middle_box.jpg"/>
                                <div class="section-body-videolist-title">
                                    <p class="title">某节目</p>
                                    <p class="genre">类型1|类型2</p>
                                </div>
                            </div>
                        </a>
                    </li>
                    <div class="clear"></div>
                </ul>
            </div>
        </div>
<!-- 周边 end-->
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