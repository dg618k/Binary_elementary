<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

   <html lang="zh-CN"><head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link href="../css/gerenxiaoxi.css" rel="stylesheet" type="text/css">
   
<body id="message_center">
    <div id="message_center_box"><div id="message_left">
    <div id="message_head">
        <i class="icon_plane"></i>
        消息中心
    </div>
    <ul id="message_pagination_lists">
        <li class="message_pagination_list active ">
            <a href="#reply">         
                <span class="message-type">●&nbsp;&nbsp;回复我的</span>           
            </a>
        </li>
        <li class="message_pagination_list  ">
            <a href="#at">        
                <span class="message-type">●&nbsp;&nbsp;@&nbsp;我的&nbsp;&nbsp;</span>       
            </a>
        </li>
        <li class="message_pagination_list  ">
            <a href="#love">          
                <span class="message-type">●&nbsp;&nbsp;收到的赞</span>
            </a>
        </li>
     
        <li class="message_pagination_list  ">
            <a href="#system">                
                <span class="message-type">●&nbsp;&nbsp;系统通知</span>          
            </a>
        </li>
     
        <li class="message_pagination_list">
            <a href="#whisper">             
                <span class="message-type">●&nbsp;&nbsp;我的私信</span>             
            </a>
        </li> 
        <li class="message_pagination_list  config-me">
            <a href="#config">       
                <span class="message-type"><span class="new-flag"></span><i class="icon-config"></i>消息设置</span>
            </a>
        </li>
    </ul>
</div>
<div id="message_right" style="min-height: 314px;">
    <div class="message-main">
    <div class="message-title group-title-3">回复我的</div>
    <ul class="message-main-lists"><li class="message-main-list"><div class="no-data"></div></li></ul>       
</div></div></div>
    <script src="//www.bilibili.com/plus/widget/ajaxGetCaptchaKey.php?js" type="text/javascript"></script>
    <script src="//static.hdslb.com/message/index.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        seajs.use('main', function(app) {
            app.run();
        });
    </script>
    <script src="//static.hdslb.com/js/core-v5/base.core.js" type="text/javascript"></script>
    <script src="//data.bilibili.com/rec.js" type="text/javascript"></script>
    <script type="text/javascript">
        loadLoginStatus();
    </script>
<ul class="bilibili-suggest" style="left: 937px; top: 42px; display: none; min-width: 188px; max-width: 360px;"></ul></body></html>
  </body>
  </head>
  </html>

