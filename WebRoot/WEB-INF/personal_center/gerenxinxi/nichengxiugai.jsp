<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'nichengxiugai.jsp' starting page</title>
    <script src="static/js/jquery-3.2.1.min.js"></script>
	<script src="static/bootstrap/js/bootstrap.min.js"></script>
    <link href="static/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/gerenxinxixiugai.css">
  
  </head>
    <body id="r1"> 
          	<!-- 背景动图 -->
  	<div class="background_area">
  		<img src="img/personal_space/bj.gif" style="width:100%;height:100%;">
  	</div>
    
   <div id="content">
    <div class="mod-setting clearfix"> 
    <div class="setting-title yahei">个人设置</div>
     <div class="setting-content clearfix"> 
     <div class="setting-menu"> 
     <div class="menu-title menu-profile"> 
     <h3 style="padding:10px;text-align:center">个人资料</h3>  </div> 
     <ul class="menu-list"> 
     <li class="menu-item basic-link">
     <a href="personal_center/gerenxinxixiugai">个人信息</a> </li>
     </ul> 
    
    
    <div class="menu-title menu-privacy-current active" id="settingPrivacy">
     <h3 style="padding:10px;text-align:center">资料修改</h3> </div>
      <ul class="menu-list">
       <li class="menu-item zhidao-link on" id="settingPrivacyZhidao">
     
       <a href="personal_center/nichengxiugai">信息修改</a> </li>
       <li class="menu-split"> </li>
        <li class="menu-item tieba-link" id="settingPrivacyTieba">
       <a href="personal_center/mimaxiugai">密码修改</a> </li>
       <li class="menu-split"> </li>
       <li class="menu-item wenku-link" id="settingPrivacyWenku">
       <a href="personal_center/qianmingxiugai">签名修改</a>  </li>
       <li class="menu-split"> </li>
       <li class="menu-item baike-link" id="settingPrivacyBaike">
       <a href="personal_center/touxiangxiugai">头像修改</a> </li>
       <li class="menu-split"> </li></ul> 
       </div> 
       <div class="setting-detail" id="stthld" style="display: block;">
         <div class="detail-bg"></div> 
         <div class="plzhld clearfix">
         <div class="mod-setting-profile" id="1000001" style="display: block;"> 
         <div class="setting-profile-title yahei">信息修改</div>
          <form class="setting-profile-form" onsubmit="return checkall();" id="profile" action="personal_center/nameModifyInsert" method="POST">
          	<div style="margin-left:50px;margin-top:50px">
          		<label style="font-size:14px; float:left; margin-top:5px;">昵称：</label>
          		<input style="float:left" type="text" id="user_name" name="user_name" onblur="checkname()" required>
          		<label id="nameerror1" class="input_error">
                	<p class="glyphicon glyphicon-remove"> 用户名不能为空</p>
                </label>
                <label id="nameerror2" class="input_error">
                	<p class="glyphicon glyphicon-remove">该用户名已被注册</p>
                </label>
                <label id="namevalid" class="input_valid">
                	<p class="glyphicon glyphicon-ok">用户名有效</p>
                </label>
                <div class="c_clear_both"></div>
          	</div>
          	<div>
          		<label class="dropdown" style="margin-left:50px;margin-top:15px">
					<span class="dropdown-toggle" data-toggle="dropdown" style="font-size:14px;">
						性别</span> <span class="caret"></span>
						<ul class="dropdown-menu">
							<li><a onclick="getSex(this)" id="man">男</a></li>
							<li><a onclick="getSex(this)" id="woman">女</a></li>
						</ul>
          		</label>
          		<input style="font-size:14px; margin-left:12px;border:none;background-color:white; readonly:expression(this.readOnly=true);" id="sex" name="sex" value="男">
          	</div>
          	<div style="margin-left:50px;margin-top:15px">
          		<label style="font-size:14px;float:left;margin-top:5px;">电话：</label>
          		<input style="float:left;" type="text" onblur="teleCheck()" id="tele" name="tele" required>
          		<label id="teleerror" class="input_error">
                	<p class="glyphicon glyphicon-remove">电话格式错误</p>
                </label>
                <label id="televalid" class="input_valid">
                	<p class="glyphicon glyphicon-ok">有效</p>
                </label>
                <div class="c_clear_both"></div>
          	</div>
            <input type="submit" style="margin-top:15px;margin-left:50px;" value="保存">
           </form> 
      <script type="text/javascript">
      		var flag1 = flag2 = false;
      		function getSex(obj){
      			var sex = $(obj).text();
      			$("#sex").val(sex);
      		}
      		function teleCheck(){
				var tele = $("#tele").val();
				if(!(/^1[34578]\d{9}$/.test(tele))){ 
					$("#teleerror").css("display", "block");
					$("#televalid").css("display", "none");
					flag2 = false;
				}
				else{
					$("#teleerror").css("display", "none");
					$("#televalid").css("display", "block");
					flag2 = true;
				}
			}
      		function checkname(){
				var user_name = $("#user_name").val();
				if(user_name==""){
		 			$("#nameerror1").css("display", "block");
		 			$("#nameerror2").css("display", "none");
		 			$("#namevalid").css("display", "none");
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
			}
			function checkall(){
				checkname();
				teleCheck();
				if(flag1&&flag2)
					return true;
				return false;
			}
      </script>
      </body>
</html>
