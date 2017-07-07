<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>个人信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link href="static/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/gerenxinxixiugai.css">
	<script src="static/js/jquery-3.2.1.min.js"></script>
	<script src="static/bootstrap/js/bootstrap.min.js"></script>
	

  </head>
   
   <body id="r1"> 
   
  	<!-- 头像显示区域 -->
  	<div class="head_area">
  		<img src="img/login/${user_url}" class="img-circle">
  	</div>
  	      	<!-- 背景动图 -->
  	<div class="background_area">
  		<img src="img/personal_space/bj.gif" style="width:100%;height:100%;">
  	</div>
  	
  <div id="content" > 
 
  <div class="mod-setting clearfix">
   <div class="setting-title yahei">个人设置</div> 
   <div class="setting-content clearfix"> 
   <div class="setting-menu"> 
   <div class="menu-title menu-profile-current active"> 
   <h3 style="padding:10px;text-align:center">个人资料</h3>
     </div> 
     <ul class="menu-list">
      <li class="menu-item basic-link on">
      	<a href="personal_center/gerenxinxixiugai" >个人信息</a>
      </li>
     </ul> 
       <div class="menu-title menu-privacy" id="settingPrivacy"> 
       <h3 style="padding:10px;text-align:center">资料修改</h3> </div> 
       <ul class="menu-list"> 
       <li class="menu-item tieba-link" id="settingPrivacyTieba">
       <a href="personal_center/nichengxiugai">信息修改</a> </li>
       <li class="menu-split"> </li>
       <li class="menu-item zhidao-link" id="settingPrivacyZhidao">
       <a href="personal_center/mimaxiugai">密码修改</a> </li>
       <li class="menu-split"> </li>
       <li class="menu-item wenku-link" id="settingPrivacyWenku">
       <a href="personal_center/qianmingxiugai">签名修改</a>  </li>
       <li class="menu-split"> </li>
       <li class="menu-item baike-link" id="settingPrivacyBaike">
       <a href="personal_center/touxiangxiugai">头像修改</a> </li>
       <li class="menu-split"> </li>
       </ul> </div>
        <div class="setting-detail" id="stthld" style="display: block;">
         <div class="detail-bg"></div> 
         <div class="plzhld clearfix">
         <div class="mod-setting-profile" id="1000001" style="display: block;">
         <div class="setting-profile-title yahei">用户信息</div>
         
           <table class="setting-profile-table setting-profile-form"> 
           <tbody> 
              <tr> 
              <th class="personal-detail-th"></th> 
              <td style="font-weight:bold">用户昵称：</td>
              <td class="personal-detail-td" style="padding-left:50px;">
                	 ${user_name} 
              <span class="mod-cus-input-tip"></span>
              </td>
              </tr>
              <tr>
              	<th class="personal-detail-th"></th> 
              	<td style="font-weight:bold">个性签名：</td>
              	<td class="personal-detail-td" style="padding-left:50px;">
                	 ${user_signal} 
              	<span class="mod-cus-input-tip"></span>
              </td>
              </tr>
              <tr>
              	<th class="personal-detail-th"></th> 
              	<td style="font-weight:bold">性别：</td>
              	<td class="personal-detail-td" style="padding-left:50px;">
                	 <c:if test="${user_sex == 0 }"> 男</c:if>
                	 <c:if test="${user_sex == 1 }"> 女</c:if>
              		 <span class="mod-cus-input-tip"></span>
              </td>
              </tr>
              <tr>
              	<th class="personal-detail-th"></th> 
              	<td style="font-weight:bold">电话：</td>
              	<td class="personal-detail-td" style="padding-left:50px;">
                	 ${user_tele} 
              		<span class="mod-cus-input-tip"></span>
              </td>
              </tr>
              <tr>
              	<th class="personal-detail-th"></th> 
              	<td style="font-weight:bold">邮箱：</td>
              	<td class="personal-detail-td" style="padding-left:50px;">
                	 ${user_email} 
              		<span class="mod-cus-input-tip"></span>
              </td>
              </tr>
              <tr>
              	<th class="personal-detail-th"></th> 
              	<td style="font-weight:bold">账户余额：</td>
              	<td class="personal-detail-td" style="padding-left:50px;">
                	 ${user_money} 
              		<span class="mod-cus-input-tip"></span>
              	</td>
              </tr>
            </tbody>
            </table>  
</body>
</html>
