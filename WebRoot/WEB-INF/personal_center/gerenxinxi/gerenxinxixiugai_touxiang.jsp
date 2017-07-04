<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<link rel="stylesheet" type="text/css" href="../css/gerenxinxixiugai.css">

  
  
 
 <body id="r1">  
 
 <div id="content"> 
 <div class="mod-setting clearfix"> 
 <div class="setting-title yahei">个人设置</div>
  <div class="setting-content clearfix"> 
  <div class="setting-menu">
   <div class="menu-title menu-profile-current active"> 
   <h3>个人资料</h3>  </div> 
   <ul class="menu-list"> 
   <li class="menu-item basic-link">
   <a href="gerenxinxixiugaiview">昵称</a>
    </li>
    <li class="menu-split"> </li>
   <li class="menu-item details-link">
   <a href="gerenxinxixiugai_qianmingview">个性签名</a> </li>
   <li class="menu-split">  </li>
   
   <li class="menu-item portrait-link on">
   <a href="gerenxinxixiugai_touxiangview">头像</a> </li>
   </ul>
    <div class="menu-title menu-privacy" id="settingPrivacy"> 
    <h3>资料修改</h3> </div> 
    <ul class="menu-list"> 
    <li class="menu-item tieba-link" id="settingPrivacyTieba">
    <a href="nichengxiugaiview">昵称修改</a> </li>
    <li class="menu-split"> </li>
    <li class="menu-item zhidao-link" id="settingPrivacyZhidao">
    <a href="mimaxiugaiview">密码修改</a> </li>
    <li class="menu-split"> </li>
    <li class="menu-item wenku-link" id="settingPrivacyWenku">
    <a href="qianmingxiugaiview">签名修改</a>  </li>
    <li class="menu-split"> </li>
    <li class="menu-item baike-link" id="settingPrivacyBaike">
    <a href="touxiangxiugaiview">头像修改</a> </li>
    <li class="menu-split"> </li></ul> </div>
    
     <div class="setting-detail" id="stthld" style="display: block;"> 
     <div class="detail-bg"></div> 
     <div class="plzhld clearfix">
     
     <div class="mod-setting-profile" id="mod-portrait-avatar" style="display: block;"> 
     <div class="setting-profile-title yahei">头像</div> 
      <div class="profile-new-portrait" id="avatar"> 
      <div id="passPortraitWrapper">
      <div class="pass-portrait">
      <ul class="pass-portrait-nav" id="passPortraitNav">
      <li class="pass-portrait-current" id="portraitCustomLi">
      <span>自定义头像</span></li>
      </ul>
      <div class="pass-portrait-content pass-portrait-clearfix">
      <div class="pass-portrait-left">
      
      </div>
      
      <div class="pass-portrait-right">
      <p class="pass-portrain-commonp">头像预览</p>
      <p class="pass-portrait-previewboxbig" id="previewBoxBig">
      <img class="pass-portrait-previewbig" id="previewImgBig" src="https://ss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/item/de55736f756ce4b8b6e69081e6b58569691b57"></p>
      <p class="pass-portrain-commonp pass-portrain-previewp">
      <span>大头像100*100</span></p>
      <p class="pass-portrait-previewboxbigsmall" id="previewBoxSmall">
      <img class="pass-portrait-previewsmall" id="previewImgSmall" src="https://ss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/item/de55736f756ce4b8b6e69081e6b58569691b57"></p>
      <p class="pass-portrain-commonp pass-portrain-previewp"><span>小头像55*55</span></p>
     
      </div>
      </div></div></div></div>
       <span class="save-ok" id="tiebaSaveOkMsg"> 你的设置保存成功！ <a class="check-effect" href="https://www.baidu.com/p/soul丶搁浅ii" target="reviewPage">查看效果</a> </span>
        <span class="save-ok zhidao-save-ok" id="zhidaoSaveOkMsg"> 该头像已同步到百度知道 </span> 
         <iframe src="https://passport.baidu.com/crossdomain.xml" style="display:none;"></iframe> 
         <iframe src="https://ss1.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/crossdomain.xml" style="display:none;"></iframe>
          </div>
         </div> 
        </div> 
       </div>
      </div>
      </div> 
 
 
 </body></html>