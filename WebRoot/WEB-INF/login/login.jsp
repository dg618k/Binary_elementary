<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"  type="text/css"  href="../style/login.css"/>
<link rel="stylesheet"  type="text/css"  href="../style/footer.css"/>
<link href="../static/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script src="../static/js/jquery-3.2.1.min.js"></script>
<script src="../static/bootstrap/js/bootstrap.min.js"></script>
<title>登陆</title>
</head>
<body>
	<div>
    	<div >
    		<div class="login_wrap" style="background:url(../img/login_bg.jpg);background-size:100% 100%;">
    			<div class="content">
			        <form action="loginCheck" onsubmit="return checkresult();" method="post" class="login_box c_fr">
			            <ul id="comm_login">
			                <li>
			                	<div style="font-size:18px;float:left">
			                		<img class="logo_img" alt="logo" src="../img/logo.png">
			                	</div>
			                	<c:if test="${message!=null }">
			                		<div style="float:left; margin-left:30px; font-size:11px; color:red; margin-top:22px;" id="message_error">
			                			<span class="glyphicon glyphicon-remove"></span>${message }
			                		</div>
			                	</c:if>
			                	<div id="pic_diff" style="display:none;float:left; margin-left:30px; font-size:11px; color:red; margin-top:22px;">
				 					<span class="glyphicon glyphicon-remove">验证码错误</span>
				 				</div>
			                	<div class="clear_both"></div>
			                </li>
			                <li>
			                    <label><span class="user_logo c_fl"></span>
			                    <input type="text" class="login_input c_fl" name="name" id="" placeholder="请输入用户名" required></label>
			               		<div class="clear_both"></div>
			                </li>
			                <li>
			                    <label><span class="pwd_logo c_fl"></span>
			                    <input type="password" class="login_input c_fl" name="password" id="" placeholder="密码" required></label>
			                    <div class="clear_both"></div>
			                </li>
			                <li>
								<label>
									<span class="v_code_font c_fl" style="margin-top:5px;">验证码：</span>
									<input type="text" class="v_code_input c_fl" onblur="check_pic()" style="margin-top:5px" id="check_img" name="captcha" placeholder="验证码">
								</label>
								<img src="../servlet/generate_pic" class="v_code_img c_fr"  id="verify" onclick="changeImg()" title="点击换一张" align="absmiddle">
								<div class="clear_both"></div>
							</li>
			                <li>
			                    <label>
			                    	<input type="checkbox" class="c_fl" name="remember" id="remember">
			                    	<span class="remember c_fl" style="margin-top:5px;">记住我</span>
			                    </label>
			                    <a href="" class="remember c_fr" style="margin-top:5px">忘记密码？</a>
			                    <div class="clear_both"></div>
			                </li>
			                <li>
			                    <input type="submit" class="btn login_btn c_fl fake_a" id="login-btn" value="登录" >
			                    <a href="register" class="btn reg_btn c_fl" id="reg-btn">快速注册</a>
			                    <div class="clear_both"></div>
			                </li>
			                <li class="c_wq_login">
			                    <span class="c_fl quick_login_desc">一键登录:</span>
			                    <span class="c_fl c_quick_login">
			                        <a href="" target="_blank"><div class="weibo_icon c_fl"></div>微博</a>
			                    </span>
			                    <span class="c_fl quick_login">
			                        <a href="" target="_blank"><div class="qq_icon c_fl"></div>QQ</a>
			                    </span>
								<span class="c_fl quick_login">
									<a href="javascript:;" class="wechat_btn"><div class="wechat_icon c_fl"></div>微信</a>
								</span>
			                    <div class="clear_both"></div>
			                </li>
			                <div class="line"></div>
			            </ul>
			        </form>
    			</div>
    			<div class="clear_both"></div>
    		</div>
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
    </div>
	<script type="text/javascript">
	var flag2 = false;
	function changeImg(){
		document.getElementById('verify').src="../servlet/generate_pic?"+Math.random();
	}
	function check_pic(){
		var contain = $("#check_img").val();
		$.ajax({
 		  		type: "POST",
 		 		url: "picCheck",
   		 		data: {"userCode":contain},
  		  		success: function(msg){
     	  			if(msg){
     	  				$("#pic_diff").css("display", "none");
     	  				flag2 = true;
     	  			}
     	  			else {
     	  				$("#pic_diff").css("display", "block");
     	  				changeImg();
   						flag2 = false;
     	  			}
   				}
   			});
	} 
	function checkresult(){
		check_pic();
		$("#message_error").css("display","none");
		return flag2;
	}
	</script>
</body>
</html>