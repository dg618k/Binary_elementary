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
            <a href="gerenxiaoxi">
                
                <span class="message-type">●&nbsp;&nbsp;回复我的</span>
                
                
            </a>
        </li>
     
        <li class="message_pagination_list  ">
            <a href="xiaoxi_aitewo">
                
                <span class="message-type">●&nbsp;&nbsp;@&nbsp;我的&nbsp;&nbsp;</span>
                
                
            </a>
        </li>
     
        <li class="message_pagination_list  ">
            <a href="xiaoxi_dianzan">
                
                <span class="message-type">●&nbsp;&nbsp;收到的赞</span>
                
                
            </a>
        </li>
     
        <li class="message_pagination_list  ">
            <a href="xiaoxi_xitong">
                
                <span class="message-type">●&nbsp;&nbsp;系统通知</span>
                
                
            </a>
        </li>
     
        <li class="message_pagination_list  ">
            <a href="xiaoxi_sixin">
                
                <span class="message-type">●&nbsp;&nbsp;我的私信</span>
                
                
            </a>
        </li>
     
    </ul>
</div>
<div id="message_right" style="min-height: 814px;">
    <div class="message-main">
    <div class="message-title group-title-3">回复我的</div>
    <ul class="message-main-lists"><li class="message-main-list">
    <div class="no-data">
    </div>
    </li>
    </ul>       
</div>
</div>
</div>
   
  </body>
  </head>
  </html>

