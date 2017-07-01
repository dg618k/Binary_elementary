<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="../static/js/jquery-3.2.1.min.js"></script>
<script src="../static/bootstrap/js/bootstrap.min.js"></script>
<link href="../static/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet"  type="text/css"  href="../style/register.css"/>
<link rel="stylesheet"  type="text/css"  href="../style/footer.css"/>


<title>注册</title>
</head>
<body>
<!-- header start -->
<div class="c_content c_content_top">
        <a href="index.php">
			<img class="c_top_logo c_fl" src="../img/login/login_logo.jpg" alt="logo" border="0">
		</a>
        <div class="c_line c_fl"></div>
        <h1 class="c_top_txt c_fl">欢迎注册</h1>
        <div class="c_clear_both"></div>
</div>
<!-- header end -->
<div class="c_reg_wrap">
	<div class="c_content">
		<form action="registerInsert" method="post">
		<ul class="c_reg_box">
			<li>
				<label class="c_fl"><span>邮箱：</span><input type="text" class="c_reg_input c_fl c_reg_ph" id="email" name="email" onBlur="checkemail()" placeholder="请输入您的邮箱"></label>	
                <div id="emailerror1" class="input_error">
                	<p class="glyphicon glyphicon-remove">邮箱输入不能为空</p>
                </div>
                <div id="emailerror2" class="input_error">
                	<p class="glyphicon glyphicon-remove">无效的邮箱</p>
                </div>
                <div id="emailerror3" class="input_error">
                	<p class="glyphicon glyphicon-remove">该邮箱已被注册</p>
                </div>
                <div id="emailvalid" class="input_valid">
                	<p class="glyphicon glyphicon-ok">该邮箱有效</p>
                </div>
                <div class="c_clear_both"></div>	
			</li>
			<li>
				<label class="c_fl">
					<span>密码：</span>
					<input type="password" class="c_reg_input c_fl c_reg_lock" onblur="checkpassword()" name="pwd" id="password1" placeholder="请输入您的密码">
				</label>
				<div id="password_error" class="input_error">
				 	<p class="glyphicon glyphicon-remove">密码位数不足8位</p>
				 </div>
                <div class="c_clear_both"></div>	
			</li>
			<li>
				<label class="c_fl">
					<span>确认密码：</span>
					<input type="password" onblur="checkpassword()" class="c_reg_input c_fl c_reg_lock" name="repwd" id="password2" placeholder="请再次输入密码">
				</label>
				 <div id="password_diff" class="input_error">
				 	<p class="glyphicon glyphicon-remove">密码不一致</p>
				 </div>
				 <div id="password_same" class="input_valid">
				 	<p class="glyphicon glyphicon-ok">一致</p> 
				 </div>
                <div class="c_clear_both"></div>
			</li>
			<li>
				<label class="c_fl">
					<span>验证码：</span>
					<input type="text" class="c_reg_input c_reg_input_v c_fl" id="captcha" name="captcha" placeholder="请输入验证码">
				</label>
				<img src="../img/login/ver.png" class="c_fl" id="verify" title="点击换一张">
				<div class="c_clear_both"></div>
			</li>
			<li>
				<label class="c_fl">
					<span>邮箱验证：</span>
					<input type="text" class="c_reg_input c_reg_input_v c_fl" placeholder="请输入验证码"name="sms_verify" id="sms_verify">
				</label>
				<input type="button" value="获取验证码" class="c_btn c_btn_ph c_fl" id="msgcode-btn">
				<div class="c_clear_both"></div>
			</li>
			<li class="c_reg_check">
				<label class="c_fl">
					<input type="checkbox" name="if_agree" value="1" id="if_agree" checked>阅读
				</label>
					<a href="i.php?c=login&a=accord" target="_blank">[用户协议]</a>
			</li>
			<li>
				<input type="submit" value="注&nbsp;&nbsp;册" class="c_btn c_btn_reg c_fl" id="reg-btn">
				<a href="i.php?c=login" class="c_btn c_btn_login c_fl" id="login-btn">返回登录</a>
				<div class="c_clear_both"></div>
			</li>
			<li class="c_wq_login">

				<span class="c_fl">合作账号登录：</span>
				<span class="c_fl"  title="微博">
					<a href="" target="_blank">
						<div class="c_weibo_icon c_fl"></div>微博登录
					</a>
				</span>
				<span class="c_fl" title="QQ">
					<a href="" target="_blank"><div class="c_qq_icon c_fl"></div>QQ登录</a>
				</span>
				<!--TODO wechat url-->
				<span class="c_fl" title="微信">
					<a href="javascript:;" class="c_wechat_btn"><div class="c_wechat_icon c_fl"></div>微信登录</a>
				</span>
				<div class="c_clear_both"></div>

			</li>
		</ul>
		</form>
		<!--wechat login-->
        <div class="c_wechat_box">
        	<div id="wechat_login_container"></div>
        	<div class="c_wechat_back">返回注册</div>
        </div>
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
<script type="text/javascript">
	function checkemail(){
		var email=$("#email").val();
		if(email==""){
			$("#emailerror1").css("display","block");
			$("#emailerror2").css("display","none");
			$("#emailerror3").css("display","none");
			$("#emailvalid").css("display","none");
			$("#email").focus();
			return false;
		}
		if(!email.match(/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/)){
   			$("#emailerror2").css("display","block");
   			$("#emailerror1").css("display","none");
   			$("#emailerror3").css("display","none");
   			$("#emailvalid").css("display","none");
   			$("#email").focus();
  		}
  		else{
  			//传入后台判断是否存在
  			$("#emailerror2").css("display","none");
   			$("#emailerror1").css("display","none");
   			$("#emailerror3").css("display","none");
   			$("#emailvalid").css("display","block");
  		}
	}
	function checkpassword(){
		var pass1 = $("#password1").val();
		var pass2 = $("#password2").val();
		if(pass1.length < 8){
			$("#password_error").css("display", "block");
		}
		else{
			$("#password_error").css("display","none");
		}
		if(pass1 != pass2){
			$("#password_diff").css("display", "block");
			$("#password_same").css("display", "none");
		}
		else{
			$("#password_diff").css("display", "block");
			$("#password_same").css("display", "none");
		}
	}
</script>
</body>
</html>