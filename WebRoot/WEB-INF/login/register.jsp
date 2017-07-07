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
<div class="c_reg_wrap" style="background:url()">
	<div class="c_content">
		<form action="registerAjax" onsubmit="return checkall();" method="post">
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
					<span>昵称：</span>
					<input type="text" onblur="checkname()" class="c_reg_input c_fl" name="name" id="user_name" placeholder="请输入用户名">
				</label>
				<div id="nameerror1" class="input_error">
                	<p class="glyphicon glyphicon-remove">用户名不能为空</p>
                </div>
                <div id="nameerror2" class="input_error">
                	<p class="glyphicon glyphicon-remove">该用户名已被使用</p>
                </div>
                <div id="namevalid" class="input_valid">
                	<p class="glyphicon glyphicon-ok">有效的用户名</p>
                </div>
				<div class="c_clear_both"></div>	
			</li>
			<li>
				<label class="c_fl">
					<span>密码：</span>
					<input type="password" class="c_reg_input c_fl c_reg_lock" onblur="checkpassword()" name="password" id="password1" placeholder="请输入您的密码">
				</label>
				 <div id="password_error1" class="input_error">
				 	<p class="glyphicon glyphicon-remove">含有非法字符或位数不在8-16之间</p>
				 </div>
				 <div id="password_valid" class="input_valid">
                	<p class="glyphicon glyphicon-ok">格式正确</p>
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
					<input type="text" class="c_reg_input c_reg_input_v c_fl" onblur="check_pic()" id="check_img" name="captcha" placeholder="请输入验证码">
				</label>
				<img src="../servlet/generate_pic" class="c_fl"  id="verify" onclick="changeImg()" title="点击换一张" >
				<div id="pic_diff" class="input_error">
				 	<p class="glyphicon glyphicon-remove">验证失败</p>
				 </div>
				 <div id="pic_same" class="input_valid">
				 	<p class="glyphicon glyphicon-ok">验证成功</p> 
				 </div>
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
			<li class="c_reg_check"  style="margin-left:130px;">
				<label class="c_fl">
					<input type="checkbox" name="if_agree" value="1" id="if_agree" checked>
				</label>阅读
					<a href="i.php?c=login&a=accord" target="_blank" style="padding-top:5px;">[用户协议]</a>
				<div class="c_clear_both"></div>
			</li>
			<li style="margin-left:50px;">
				<input type="submit" value="注&nbsp;&nbsp;册" class="c_btn c_btn_reg c_fl" id="reg-btn">
				<a href="login" class="c_btn c_btn_login c_fl" id="login-btn">直接登录</a>
				<div class="c_clear_both"></div>
			</li>
			<li class="c_wq_login">

				<span class="c_fl">合作账号登录：</span>
				<span class="c_fl"  title="微博">
					<a href="" target="_blank">
						<div class="c_weibo_icon c_fl"></div> 微博登录
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
	var flag1 = flag2 = flag3 = flag4 = flag5 = false;
	var email=$("#email").val();
	function changeImg(){
		document.getElementById('verify').src="../servlet/generate_pic?"+Math.random();
	}
	function checkemail(){
		email = $("#email").val();
		if(email==""){
			$("#emailerror1").css("display","block");
			$("#emailerror2").css("display","none");
			$("#emailerror3").css("display","none");
			$("#emailvalid").css("display","none");
			$("#email").focus();
			flag1 = false;
			return false;
		}
		if(!email.match(/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/)){
   			$("#emailerror2").css("display","block");
   			$("#emailerror1").css("display","none");
   			$("#emailerror3").css("display","none");
   			$("#emailvalid").css("display","none");
   			$("#email").focus();
   			flag1 = false;
  		}
  		else{
  			//传入后台判断是否存在
  			$.ajax({
 		  		type: "POST",
 		 		url: "registerCheck",
   		 		data: "email="+email,
  		  		success: function(msg){
     	  			if(msg){
     	  				$("#emailerror2").css("display","none");
   						$("#emailerror1").css("display","none");
   						$("#emailerror3").css("display","block");
   						$("#emailvalid").css("display","none");
   						flag1 = false;
     	  			}
     	  			else{
     	  				$("#emailerror2").css("display","none");
   						$("#emailerror1").css("display","none");
   						$("#emailerror3").css("display","none");
   						$("#emailvalid").css("display","block");
   						flag1 = true;
     	  			}
   				}
   			});
  			
  		}
	}
	function checkname(){
		var user_name = $("#user_name").val();
		if(user_name==""){
		 $("#nameerror1").css("display", "block");
		 $("#nameerror2").css("display", "none");
		 $("#namevalid").css("display", "none");
		 flag5 = false;
		}
		else{
			$.ajax({
				type:"POST",
				url:"nameCheck",
				data:"name="+user_name,
				success: function(msg){
					if(msg){
						$("#nameerror1").css("display", "none");
						$("#nameerror2").css("display", "block");
		 				$("#namevalid").css("display", "none");
		 				flag5 = false;
					}
					else{
						$("#nameerror1").css("display", "none");
		 				$("#nameerror2").css("display", "none");
		 				$("#namevalid").css("display", "block");
		 				flag5 = true;
					}
				}
			});
		}
	}
	function checkpassword(){
		var pass1 = $("#password1").val();
		var pass2 = $("#password2").val();
		if(!pass1.match(/^[*#a-zA-Z0-9]{8,16}$/)){
			$("#password_error1").css("display", "block");
			$("#password_valid").css("display", "none");
			flag2 = false;
		}
		else{
			$("#password_error1").css("display","none");
			$("#password_valid").css("display", "block");
			flag2 = true;
		}
		if(pass1 != pass2){
			$("#password_diff").css("display", "block");
			$("#password_same").css("display", "none");
			flag3 = false;
		}
		else{
			$("#password_same").css("display", "block");
			$("#password_diff").css("display", "none");
			flag3 = true;
		}
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
     	  				$("#pic_same").css("display", "block");
     	  				flag4 = true;
     	  			}
     	  			else{
     	  				$("#pic_diff").css("display", "block");
     	  				$("#pic_same").css("display", "none");
     	  				changeImg();
   						flag4 = false;
     	  			}
   				}
   			});
	} 
	function checkall(){
		checkemail();
		checkpassword();
		checkname();
		check_pic()
		if(flag1&&flag2&&flag3&&flag4&&flag5){
			return true;
		}
		return false;
	}
</script>
</body>
</html>