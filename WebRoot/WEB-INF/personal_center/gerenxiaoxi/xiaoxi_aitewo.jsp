<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'xiaoxi_aitewo.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	 <link href="css/gerenxiaoxi.css" rel="stylesheet" type="text/css">

  </head>
  
  <body>
   <body id="message_center">
    		


    <div id="message_center_box"><div id="message_left">
    <div id="message_head">
        <i class="icon_plane"></i>
        消息中心
    </div>
    <ul id="message_pagination_lists">
     
        <li class="message_pagination_list">
            <a href="personal_center/gerenxiaoxi">
                
                <span class="message-type">●&nbsp;&nbsp;回复我的</span>
                
                
            </a>
        </li>
     
        <li class="message_pagination_list active ">
            <a href="personal_center/xiaoxi_aitewo">
                
                <span class="message-type">●&nbsp;&nbsp;@&nbsp;我的&nbsp;&nbsp;</span>
                
                
            </a>
        </li>
     
        <li class="message_pagination_list  ">
            <a href="personal_center/xiaoxi_dianzan">
                
                <span class="message-type">●&nbsp;&nbsp;收到的赞</span>
                
                
            </a>
        </li>
     
        <li class="message_pagination_list  ">
            <a href="personal_center/xiaoxi_xitong">
                
                <span class="message-type">●&nbsp;&nbsp;系统通知</span>
                
                
            </a>
        </li>
     
        <li class="message_pagination_list  ">
            <a href="personal_center/xiaoxi_sixin">
                
                <span class="message-type">●&nbsp;&nbsp;我的私信</span>
                
                
            </a>
        </li>
     
       
    </ul>
</div>
<div id="message_right" style="min-height: 814px;">
    <div class="message-main">
    <div class="message-title group-title-3">@&nbsp;我的&nbsp;&nbsp;</div>
    <ul class="message-main-lists"><li class="message-main-list"><span class="loading"></span></li></ul>       
</div></div></div>
  


  </body>
</html>
