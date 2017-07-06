<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
	
	<link rel="stylesheet" type="text/css" href="css/gerenxinxixiugai.css">
	

  </head>
   
   <body id="r1"> 
  <div id="content" > 
 
  <div class="mod-setting clearfix">
   <div class="setting-title yahei">个人设置</div> 
   <div class="setting-content clearfix"> 
   <div class="setting-menu"> 
   <div class="menu-title menu-profile-current active"> 
   <h3>个人资料</h3>
     </div> 
     <ul class="menu-list">
      <li class="menu-item basic-link on">
      <a href="personal_center/gerenxinxixiugai" >昵称</a></li>
       <li class="menu-split"> </li>
       <li class="menu-item details-link">
       <a href="personal_center/gerenxinxixiugai_qianming" >个性签名</a> </li>
       <li class="menu-split">  </li>
      
       <li class="menu-item portrait-link">
       <a href="personal_center/gerenxinxixiugai_touxiang">头像</a> </li>
       </ul> 
       <div class="menu-title menu-privacy" id="settingPrivacy"> 
       <h3>资料修改</h3> </div> 
       <ul class="menu-list"> 
       <li class="menu-item tieba-link" id="settingPrivacyTieba">
       <a href="personal_center/nichengxiugai">昵称修改</a> </li>
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
         <div class="setting-profile-title yahei">昵称</div>
          <form class="setting-profile-form" id="profile" action="https://passport.baidu.com/v2/?ucenterset" method="POST">
           <table class="setting-profile-table"> 
           <tbody> 
              <tr> 
              <th class="personal-detail-th"></th> 
              <td class="personal-detail-td">
               <textarea name="passport_userdetail" class="mod-cus-input mod-cus-input-4" id="passport_userdetail">
               	 ${user_name} 
                </textarea>  
              <span class="mod-cus-input-tip"></span>
              </td>
              </tr>
            </tbody>
            </table>  
            <iframe width="0" height="0" class="setting-proxy" id="proxy" src="login/gerenxinxixiugai_qianming"></iframe></div></div> </div> </div> </div> </div>
      
    <script src="https://ss1.bdstatic.com/5KZ1bjqh_Q23odCf/static/princess/js/setting_basic_f2b6cf89.js"></script>
   	<script>
    	App.onPageletArrive({"targetId":"stthld", "viewType": "SettingProfile", 
        	"tplContent":"<div class=mod-setting-profile> <div class=\x22setting-profile-title yahei\x22>基本资料<\/div> <form id=profile class=setting-profile-form method=POST action=\x22https:\/\/passport.baidu.com\/v2\/?ucenterset\x22> <table class=setting-profile-table> <tbody> <tr> <th>性别:<\/th> <td class=line30> <input name=passport_sex id=passport-sex-1 type=radio value=1 > <label class=profile-gender for=passport-sex-1>男<\/label> <input name=passport_sex id=passport-sex-2 type=radio value=2  checked > <label for=passport-sex-2 class=profile-gender>女<\/label>   <tr> <th>生日:<\/th> <td> <select id=passport_birthday_year name=passport_birthday_year><option value=none>请选择<\/select>   <tr> <th>血型:<\/th> <td> <select id=passport_blood name=passport_blood><option value=none>请选择<\/select>   <tr> <th>出生地:<\/th> <td> <select id=passport_hometown_province name=passport_hometown_province><option value=none>请选择<\/select>   <tr> <th>居住地:<\/th> <td> <select id=passport_reside_province name=passport_hometown_province><option value=none>请选择<\/select>   <tr> <th class=personal-detail-th>个人简介:<\/th> <td class=personal-detail-td> <textarea name=\x22passport_userdetail\x22 id=\x22passport_userdetail\x22 class=\x22mod-cus-input mod-cus-input-4\x22><\/textarea>    <\/table> <input type=submit class=\x22setting-submit-btn setting-submit-ml100\x22 value=\x22保存\x22><span class=save-ok id=tiebaSaveOkMsg> 你的设置保存成功！ <a href=\x22https:\/\/www.baidu.com\/p\/soul丶搁浅ii\/detail\x22 target=reviewPage class=check-effect>查看效果<\/a> <\/span> <\/form> <iframe id=proxy class=setting-proxy width=0 height=0 src=\/p\/setting\/profile\/proxy><\/iframe><\/div> "
    	}); 
	</script>
</body>
</html>
