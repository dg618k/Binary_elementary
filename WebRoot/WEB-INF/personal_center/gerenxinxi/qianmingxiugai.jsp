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
  
	<link href="static/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/gerenxinxixiugai.css">
	<script src="static/js/jquery-3.2.1.min.js"></script>
	<script src="static/bootstrap/js/bootstrap.min.js"></script>
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
       
     <li class="menu-item wenku-link" id="settingPrivacyWenku">
       <a href="personal_center/nichengxiugai">信息修改</a> </li>
       <li class="menu-split"> </li>
        <li class="menu-item tieba-link" id="settingPrivacyTieba">
       <a href="personal_center/mimaxiugai">密码修改</a> </li>
       <li class="menu-split"> </li>
       <li class="menu-item zhidao-link on" id="settingPrivacyZhidao">
       
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
         <div class="setting-profile-title yahei">签名修改</div>
          <form class="setting-profile-form" id="profile" action="https://passport.baidu.com/v2/?ucenterset" method="POST">
           <table class="setting-profile-table"> 
           <tbody> 
              <tr> 
              <th class="personal-detail-th"></th> 
              <td class="personal-detail-td">
               <textarea name="passport_userdetail" class="mod-cus-input mod-cus-input-3" id="passport_userdetail"></textarea>  
              <span class="mod-cus-input-tip"></span></td></tr></tbody></table> 
              <input type="submit" style="margin-left:100px;" value="保存">
        </form> 
 
</html>
