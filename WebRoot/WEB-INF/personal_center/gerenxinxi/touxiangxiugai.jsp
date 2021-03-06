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
    <nav style="background-color:rgba(0,0,0,.2);width:100%;height:30px;">
        <ul>
            <li><a style="margin-left:30px;float:left">喵，欢迎来到史上最好的网站</a></li>
    			<li><a style="float:left">${user_name}</a></li>
    			<li id="top_tag2" class="history"><a style="float:right;margin-right:30px;" href="login/logout" rel="nofollow">注销</a></li>
           		<li id="top_tag1" class="history"><a style="float:right" href="trade/cartview" rel="nofollow">购物车</a></li>
            	<li id="top_tag0" class="history"><a style="float:right" href="userIndex" rel="nofollow">个人中心</a></li>
        </ul>
	</nav>
   <div id="content" style="margin-top:30px">
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
      
     <li class="menu-item baike-link" id="settingPrivacyBaike">
       <a href="personal_center/nichengxiugai">信息修改</a> </li>
       <li class="menu-split"> </li>
        <li class="menu-item tieba-link" id="settingPrivacyTieba">
       <a href="personal_center/mimaxiugai">密码修改</a> </li>
       <li class="menu-split"> </li>
       <li class="menu-item wenku-link" id="settingPrivacyWenku">
       <a href="personal_center/qianmingxiugai">签名修改</a>  </li>
       <li class="menu-split"> </li>
        <li class="menu-item zhidao-link on" id="settingPrivacyZhidao">
       
       <a href="personal_center/touxiangxiugai">头像修改</a> </li>
       <li class="menu-split"> </li></ul> 
       </div> 
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
      <div class="pass-portrait-tabcontent" id="portraitCustom">
      <div class="pass-portrait-crop pass-portrait-hide" id="passPortraitCrop">
      <span id="loadingSpan">
      <img class="loadingImg" src="https://passport.baidu.com/passApi/img/loadingPortrait.gif?v=98728170.gif"></span>
      <img id="cropImg" src="https://passport.baidu.com/passApi/img/small_blank.gif?v=98728170.gif"></div>
      <p class="pass-portrain-commonp">方法一：选择本地照片，上传编辑自己的头像</p>
      <div class="pass-portrait-openimg">
      <input name="openImgBtn" class="pass-portrait-filebtn" id="openImgBtn" type="button" value="选择图片">
      <input name="file" class="pass-portrait-file" id="fileImg" type="file">
      <span class="pass-portrait-msg">支持jpg、jpeg、gif、png、bmp格式的图片</span></div>
      <p class="pass-portrain-commonp">方法二：选择百度推荐头像，快速上传优质头像</p>
      <ul class="pass-portrait-recommend pass-portrait-clearfix" id="passPortraitRecommend" data-hotpor="undefined">
      <li id="recom-wildkid-1">
      <img src="https://ss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/hotitem/wildkid/1" data-num="1" data-serie="wildkid">
      <span class="recommendSpan"></span></li>
      <li id="recom-wildkid-2">
      <img src="https://ss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/hotitem/wildkid/2" data-num="2" data-serie="wildkid">
      <span class="recommendSpan"></span></li>
      <li id="recom-wildkid-3">
      <img src="https://ss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/hotitem/wildkid/3" data-num="3" data-serie="wildkid">
      <span class="recommendSpan"></span></li>
      <li id="recom-wildkid-4">
      <img src="https://ss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/hotitem/wildkid/4" data-num="4" data-serie="wildkid">
      <span class="recommendSpan"></span></li>
      <li id="recom-wildkid-5">
      <img src="https://ss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/hotitem/wildkid/5" data-num="5" data-serie="wildkid">
      <span class="recommendSpan"></span></li>
      <li class="pass-portrait-more" id="passPortraitMore">更多&gt;</li></ul></div>
      <div class="pass-portrait-tabcontent pass-portrait-hide" id="portraitHotrecom">
      <ul class="pass-portrait-hotrecommend" id="passPortraitHotrecommend" data-hotpor="undefined">
      <li id="hot-wildkid-1">
      <img src="https://ss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/hotitem/wildkid/1" data-num="1" data-serie="wildkid">
      <span class="recommendSpan"></span></li>
      <li id="hot-wildkid-2">
      <img src="https://ss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/hotitem/wildkid/2" data-num="2" data-serie="wildkid">
      <span class="recommendSpan"></span></li>
      <li id="hot-wildkid-3">
      <img src="https://ss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/hotitem/wildkid/3" data-num="3" data-serie="wildkid">
      <span class="recommendSpan"></span></li>
      <li id="hot-wildkid-4">
      <img src="https://ss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/hotitem/wildkid/4" data-num="4" data-serie="wildkid">
      <span class="recommendSpan"></span></li>
      <li id="hot-wildkid-5">
      <img src="https://ss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/hotitem/wildkid/5" data-num="5" data-serie="wildkid">
      <span class="recommendSpan"></span></li>
      <li id="hot-wildkid-6">
      <img src="https://ss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/hotitem/wildkid/6" data-num="6" data-serie="wildkid">
      <span class="recommendSpan"></span></li>
      <li class="pass-portrait-clearmr " id="hot-wildkid-7">
      <img src="https://ss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/hotitem/wildkid/7" data-num="7" data-serie="wildkid">
      <span class="recommendSpan"></span></li>
      <li id="hot-wildkid-8">
      <img src="https://ss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/hotitem/wildkid/8" data-num="8" data-serie="wildkid">
      <span class="recommendSpan"></span></li>
      <li id="hot-wildkid-9">
      <img src="https://ss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/hotitem/wildkid/9" data-num="9" data-serie="wildkid">
      <span class="recommendSpan"></span></li><li id="hot-wildkid-10"><img src="https://ss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/hotitem/wildkid/10" data-num="10" data-serie="wildkid"><span class="recommendSpan"></span></li>
      <li id="hot-wildkid-11">
      <img src="https://ss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/hotitem/wildkid/11" data-num="11" data-serie="wildkid"><span class="recommendSpan"></span></li><li id="hot-wildkid-12"><img src="https://ss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/hotitem/wildkid/12" data-num="12" data-serie="wildkid"><span class="recommendSpan"></span></li><li id="hot-wildkid-13"><img src="https://ss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/hotitem/wildkid/13" data-num="13" data-serie="wildkid"><span class="recommendSpan"></span></li><li class="pass-portrait-clearmr " id="hot-wildkid-14"><img src="https://ss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/hotitem/wildkid/14" data-num="14" data-serie="wildkid"><span class="recommendSpan"></span></li><li id="hot-wildkid-15"><img src="https://ss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/hotitem/wildkid/15" data-num="15" data-serie="wildkid"><span class="recommendSpan"></span></li><li id="hot-wildkid-16"><img src="https://ss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/hotitem/wildkid/16" data-num="16" data-serie="wildkid"><span class="recommendSpan"></span></li><li id="hot-wildkid-17"><img src="https://ss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/hotitem/wildkid/17" data-num="17" data-serie="wildkid"><span class="recommendSpan"></span></li><li id="hot-wildkid-18"><img src="https://ss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/hotitem/wildkid/18" data-num="18" data-serie="wildkid"><span class="recommendSpan"></span></li><li id="hot-wildkid-19"><img src="https://ss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/hotitem/wildkid/19" data-num="19" data-serie="wildkid"><span class="recommendSpan"></span></li><li id="hot-wildkid-20"><img src="https://ss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/hotitem/wildkid/20" data-num="20" data-serie="wildkid"><span class="recommendSpan"></span></li><li class="pass-portrait-clearmr " id="hot-wildkid-21"><img src="https://ss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/hotitem/wildkid/21" data-num="21" data-serie="wildkid"><span class="recommendSpan"></span></li><li id="hot-wildkid-22"><img src="https://ss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/hotitem/wildkid/22" data-num="22" data-serie="wildkid"><span class="recommendSpan"></span></li><li id="hot-wildkid-23"><img src="https://ss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/hotitem/wildkid/23" data-num="23" data-serie="wildkid"><span class="recommendSpan"></span></li><li id="hot-wildkid-24"><img src="https://ss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/hotitem/wildkid/24" data-num="24" data-serie="wildkid"><span class="recommendSpan"></span></li><li id="hot-wildkid-25"><img src="https://ss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/hotitem/wildkid/25" data-num="25" data-serie="wildkid"><span class="recommendSpan"></span></li></ul></div>
      <div class="pass-form-hidden">
      <input name="isCrop" id="isCrop" type="hidden">
      <input name="serie" id="serie" type="hidden">
      <input name="num" id="num" type="hidden">
      <input name="picId" id="picId" type="hidden">
      <input name="isHistory" id="isHistory" type="hidden">
      <input name="historyId" id="historyId" type="hidden"></div>
      <div class="pass-portrait-save ">
      <input disabled="true" class="setting-submit-btn setting-submit-ml100" id="savePortrait" type="button" value="保存头像">&nbsp;<input class="pass-portrait-cancelbtn pass-portrait-hide" id="passPortraitRechoicebtn" type="button" value="重新选择">
      <input name="file" class="pass-portrait-refile pass-portrait-hide" id="fileReImg" type="file">
      <span class="pass-portrait-status pass-portrait-hide" id="passPortraitPrompt">成功更新头像</span>
      </div>
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
          
</html>
