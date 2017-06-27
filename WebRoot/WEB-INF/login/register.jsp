<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
		<ul class="c_reg_box">
			<li>
				<label><input type="text" class="c_reg_input c_fr c_reg_ph" id="phone" name="phone" placeholder="请输入您的邮箱"><span>邮箱：</span></label>	
                <div class="c_clear_both"></div>	
			</li>
			<li>
				<label><input type="password" class="c_reg_input c_fr c_reg_lock" name="pwd" id="pwd" placeholder="请输入您的密码"><span>密码：</span></label>
                <div class="c_clear_both"></div>	
			</li>
			<li>
				<label><input type="password" class="c_reg_input c_fr c_reg_lock" name="repwd" id="repwd" placeholder="请再次输入密码"><span>确认密码：</span></label>
                <div class="c_clear_both"></div>
			</li>
			<li>
				<img src="../img/login/ver.png" class="c_fr" id="verify" title="点击换一张"><label><input type="text" class="c_reg_input c_reg_input_v c_fr" id="captcha" name="captcha" placeholder="请输入验证码"><span>验证码：</span></label>
				<div class="c_clear_both"></div>
			</li>
			<li>
				<input type="button" value="获取验证码" class="c_btn c_btn_ph c_fr" id="msgcode-btn"><label><input type="text" class="c_reg_input c_reg_input_v c_fr" placeholder="请输入验证码"name="sms_verify" id="sms_verify"><span>手机验证：</span></label>
				<div class="c_clear_both"></div>
			</li>
			<li class="c_reg_check">
				<label><input type="checkbox" name="if_agree" value="1" id="if_agree" checked>阅读</label><a href="i.php?c=login&a=accord" target="_blank">[用户协议]</a>
			</li>
			<li>
				<input type="submit" value="注&nbsp;&nbsp;册" class="c_btn c_btn_reg c_fl" id="reg-btn">
				<a href="i.php?c=login" class="c_btn c_btn_login c_fl" id="login-btn">返回登录</a>
				<div class="c_clear_both"></div>
			</li>
			<li class="c_wq_login">

				<span class="c_fl">合作账号登录：</span>
				<span class="c_fl"  title="微博">
					<a href="" target="_blank"><div class="c_weibo_icon c_fl"></div>微博登录</a>
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
</body>
</html>