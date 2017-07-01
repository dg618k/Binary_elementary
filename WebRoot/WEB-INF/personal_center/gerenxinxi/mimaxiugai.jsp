<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  
	<link rel="stylesheet" type="text/css" href="../css/gerenxinxixiugai.css">

 
  <head> 
   <title>mimaxiugai</title> 
   <link href="https://ss1.bdstatic.com/5KZ1bjqh_Q23odCf/static/princess/css/csssetting_53993ac3.css" rel="stylesheet" type="text/css"> </head>
    <body id="r1"> 
    
   <div id="content">
    <div class="mod-setting clearfix"> 
    <div class="setting-title yahei">个人设置</div>
     <div class="setting-content clearfix"> 
     <div class="setting-menu"> 
     <div class="menu-title menu-profile"> 
     <h3>个人资料</h3>  </div> 
     <ul class="menu-list"> 
     <li class="menu-item basic-link">
     <a href="gerenxinxixiugai">昵称</a> </li>
     <li class="menu-split"> </li>
     <li class="menu-item details-link">
     <a href="gerenxinxixiugai_qianming">个性签名</a> </li>
     <li class="menu-split">  </li>
    
     <li class="menu-item portrait-link">
     <a href="gerenxinxixiugai_touxiang">头像</a> </li>
     </ul> 
    
    
    <div class="menu-title menu-privacy-current active" id="settingPrivacy">
     <h3>资料修改</h3> </div>
      <ul class="menu-list">
       <li class="menu-item tieba-link" id="settingPrivacyTieba">
       <a href="nichengxiugai">昵称修改</a> </li>
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
       <div class="mod-setting-privacy" id="1000001" style="display: block;">
        <div class="setting-privacy-title yahei">密码修改</div> 
        <div class="show-privacy clearfix"> 
        <label class="label"> 
        <input class="checkbox" id="privacyCheckbox" type="checkbox"> 隐藏我在知道的所有动态 </label> </div> 
        <div class="privacy-console clearfix">
         <a class="button" id="privacySaveBtn" onclick="return false;" href="#" data-click="zhidao">保存</a>
          <span class="save-ok" id="privacySaveOkMsg"> 您的设置保存成功！ <a class="check-effect" href="https://www.baidu.com/p/" target="reviewPage">查看效果</a> 
          </span> 
          </div> </div></div> </div> </div> </div> </div>
   
   <script src="https://ss1.bdstatic.com/5KZ1bjqh_Q23odCf/static/princess/js/jssetting_f992972c.js"></script> <script>
          
</html>
