<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  
  	<link href="../static/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="../css/gerenxinxixiugai.css">
	<script src="../static/js/jquery-3.2.1.min.js"></script>
	<script src="../static/bootstrap/js/bootstrap.min.js"></script>
 
  <head> 
   <title>密码修改</title> 
   
    <body id="r1"> 
      	<!-- 背景动图 -->
  	<div class="background_area">
  		<img src="../img/personal_space/bj.gif" style="width:100%;height:100%;">
  	</div>
    
   <div id="content">
    <div class="mod-setting clearfix"> 
    <div class="setting-title yahei">个人设置</div>
     <div class="setting-content clearfix"> 
     <div class="setting-menu"> 
     <div class="menu-title menu-profile"> 
     <h3 style="padding:10px;text-align:center">个人资料</h3> 
     </div> 
     <ul class="menu-list"> 
     <li class="menu-item basic-link">
     <a href="gerenxinxixiugai">个人信息</a> </li>
     </ul> 
    
    
    <div class="menu-title menu-privacy-current active" id="settingPrivacy">
     <h3 style="padding:10px;text-align:center">资料修改</h3> </div>
      <ul class="menu-list">
       <li class="menu-item tieba-link" id="settingPrivacyTieba">
       <a href="nichengxiugai">信息修改</a> </li>
       <li class="menu-split"> </li>
       <li class="menu-item zhidao-link on" id="settingPrivacyZhidao">
       <a href="mimaxiugai">密码修改</a> </li>
       <li class="menu-split"> </li>
       <li class="menu-item wenku-link" id="settingPrivacyWenku">
       <a href="qianmingxiugai">签名修改</a>  </li>
       <li class="menu-split"> </li>
       <li class="menu-item baike-link" id="settingPrivacyBaike">
       <a href="touxiangxiugai">头像修改</a> </li>
       <li class="menu-split"> </li></ul> </div> 
       <div class="setting-detail" id="stthld" style="display: block;">
         <div class="detail-bg"></div> 
         <div class="plzhld clearfix">
         <div class="mod-setting-profile" id="1000001" style="display: block;"> 
         <div class="setting-profile-title yahei">密码修改</div>
          <form class="setting-profile-form" id="profile" action="passModifyInsert" onsubmit="return checkall();" method="POST">
           	  <div>
           	  	<label style="width:120px; margin-left:50px; margin-top:50px; float:left">原密码：</label>
           	  	<input style="margin-top:50px; float:left" type="password" onblur="passCheck()" id="oldpass" name="oldpass">
           	  	<div id="password_error1" class="input_error" style="margin-top:55px;">
				 	<p class="glyphicon glyphicon-remove">含有非法字符或位数不在8-16之间</p>
				 </div>
				 <div id="password_error2" class="input_error" style="margin-top:55px;">
				 	<p class="glyphicon glyphicon-remove">密码不正确</p>
				 </div>
				 <div id="password_valid" class="input_valid" style="margin-top:55px;">
                	<p class="glyphicon glyphicon-ok">正确</p>
                </div>
                <div class="c_clear_both"></div>
              </div>
              <div>
              	<label style="width:120px; margin-left:50px; margin-top:15px;float:left">新密码：</label>
              	<input style="margin-top:15px; float:left" type="password" onblur="newPassCheck()" id="newpass" name="newpass">
              	<div id="newpass_error" class="input_error" style="margin-top:22px;">
				 	<p class="glyphicon glyphicon-remove">含有非法字符或位数不在8-16之间</p>
				 </div>
				 <div id="newpass_valid" class="input_valid" style="margin-top:22px;">
                	<p class="glyphicon glyphicon-ok">正确</p>
                </div>
              	<div class="c_clear_both"></div>
              </div>
              <div>
              	<label style="width:120px; margin-left:50px; margin-top:15px;float:left">新密码确认：</label>
              	<input style="margin-top:15px; float:left" type="password" onblur="newPassConfirm()" id="newpassconfirm" name="newpassconfirm">
              	<div id="newpassconfirm_error" class="input_error" style="margin-top:22px;">
				 	<p class="glyphicon glyphicon-remove">密码不一致</p>
				 </div>
				 <div id="newpassconfirm_valid" class="input_valid" style="margin-top:22px;">
                	<p class="glyphicon glyphicon-ok">一致</p>
                </div>
                <div class="c_clear_both"></div>
              </div>
              <input type="submit" style="margin-left:50px; margin-top:15px;" value="确认">
          </form> 
          <script type="text/javascript">
          	var flag1=flag2=flag3=false;
          	var pass2,pass3;
          	function passCheck(){
          		var pass1 = $("#oldpass").val();
				if(!pass1.match(/^[*#a-zA-Z0-9]{8,16}$/)){
					$("#password_error1").css("display", "block");
					$("#password_error2").css("display", "none");
					$("#password_valid").css("display", "none");
					flag1 = false;
				}
				else{
					$.ajax({
						type:"POST",
						url:"passCheck",
						data:"password="+pass1,
						success: function(msg){
							if(msg){
								$("#password_error1").css("display", "none");
		 						$("#password_error2").css("display", "none");
		 						$("#password_valid").css("display", "block");
		 						flag1 = true;
							}
							else{
								$("#password_error1").css("display", "none");
		 						$("#password_error2").css("display", "block");
		 						$("#password_valid").css("display", "none");
		 						flag1 = false;
							}
						}
					});
				}
          	}
          	function newPassCheck(){
          		pass2 = $("#newpass").val();
				if(!pass2.match(/^[*#a-zA-Z0-9]{8,16}$/)){
					$("#newpass_error").css("display", "block");
					$("#newpass_valid").css("display", "none");
					flag2 = false;
				}
				else{
					$("#newpass_error").css("display", "none");
					$("#newpass_valid").css("display", "block");
					flag2 = true;
				}
          	}
          	function newPassConfirm(){
          		pass3 = $("#newpassconfirm").val();
          		if(pass2==pass3){
          			$("#newpassconfirm_error").css("display", "none");
					$("#newpassconfirm_valid").css("display", "block");
					flag3 = true;
          		}
          		else{
          			$("#newpassconfirm_error").css("display", "block");
					$("#newpassconfirm_valid").css("display", "none");
					flag3 = false;
          		}
          	}
          	function checkall(){
          		return flag1&&flag2&&flag3;
          	}
          </script>
     </body>        
</html>
