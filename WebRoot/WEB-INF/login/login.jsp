<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"  type="text/css"  href="../style/login.css"/>
<link rel="stylesheet"  type="text/css"  href="../style/footer.css"/>
<title>登陆</title>
</head>
<body>
	<div>
   		<!-- header start -->
    	<!-- header end -->
    	<div>
    		<div class="content content_top">
    			<a class="top_logo c_fl" href="index.php">
    				<img class="logo_img" alt="logo" src="../img/login/login_logo.jpg">
    			</a>
    			<p class="top_txt c_fr">欢迎登陆</p>
    			<div class="clear_both"></div>
    		</div>
    		<div class="login_wrap">
    			<div class="content">
			        <form action="" method="post" class="login_box c_fr">
			            <ul id="comm_login">
			                <li><p>用户登录</p></li>
			                <li>
			                    <label><span class="user_logo c_fl"></span><input type="text" class="login_input c_fl" name="" id="" placeholder="请输入邮箱" required></label>
			                </li>
			                <div class="clear_both"></div>
			                <li>
			                    <label><span class="pwd_logo c_fl"></span><input type="password" class="login_input c_fl" name="" id="" placeholder="密码" required></label>
			                    <div class="clear_both"></div>
			                </li>
			                <li>
			                    <label><span class="v_code_font c_fl">验证码:</span><input type="text" class="v_code_input c_fl" name="" id="" placeholder="验证码" required></label>
			                    <img src="../img/login/ver.png" class="v_code_img c_fl" id="" title="点击换一张" align="absmiddle">
			                    <div class="clear_both"></div>
			                </li>
			                <li>
			                    <label><input type="checkbox" class="c_fl" name="remember" id="remember"><span class="remember c_fl" >记住我</span></label>
			                    <a href="" class="remember c_fr">忘记密码？</a>
			                    <div class="clear_both"></div>
			                </li>
			                <li>
			                    <a href="###" class="btn login_btn c_fl fake_a" id="login-btn">登录</a>
			                    <a href="" class="btn reg_btn c_fl" id="reg-btn" href="">快速注册</a>
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

</body>
</html>