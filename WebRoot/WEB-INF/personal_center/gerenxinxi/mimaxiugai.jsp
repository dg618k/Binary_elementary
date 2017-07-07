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
          <form class="setting-profile-form" id="profile" action="" method="POST">
           	  <div>
           	  	<label style="width:100px; margin-left:50px; margin-top:50px;">原密码：</label>
           	  	<input type="password" onblur="passCheck()" id="oldpass" name="oldpass">
              </div>
              <div>
              	<label style="width:100px; margin-left:50px; margin-top:15px;">新密码：</label>
              	<input type="password" onblur="newPassCheck()" id="newpass" name="newpass">
              </div>
              <div>
              	<label style="width:100px; margin-left:50px; margin-top:15px;">新密码确认：</label>
              	<input type="password" onblur="newPassConfirm()" id="newpassconfirm" name="newpassconfirm">
              </div>
              <input type="submit" style="margin-left:50px; margin-top:15px;" value="确认">
          </form> 
          <script type="text/javascript">
          	var flag1=flag2=flag3=false;
          	function passCheck(){
          		var pass1 = $("#oldpass").val();
				var pass2 = $("#newpass").val();
				var pass3 = $("#newpassconfirm").val();
				if(!pass1.match(/^[*#a-zA-Z0-9]{8,16}$/)){
					$("#password_error1").css("display", "block");
					$("#password_error2").css("display", "none");
					$("#password_valid").css("display", "none");
					flag1 = false;
				}
				else{
					
					$.ajax({
						type:"POST",
						url:"personal_center/nameModifyCheck",
						data:"name="+user_name,
						success: function(msg){
							if(msg){
								$("#nameerror1").css("display", "none");
		 						$("#nameerror2").css("display", "block");
		 						$("#namevalid").css("display", "none");
		 						flag1 = false;
							}
							else{
								$("#nameerror1").css("display", "none");
		 						$("#nameerror2").css("display", "none");
		 						$("#namevalid").css("display", "block");
		 						flag1 = true;
							}
						}
					});
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
          	function newPassCheck(){
          		;
          	}
          	function newPassConfirm(){
          		;
          	}
          </script>
     </body>        
</html>
