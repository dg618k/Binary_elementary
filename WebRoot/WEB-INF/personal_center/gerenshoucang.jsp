<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'gerenshoucang.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="../css/gerenshoucang.css">
	
<html><head>
  <meta charset="UTF-8">
  <meta name="renderer" content="webkit|ie-comp|ie-stand">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>猜猜我是谁ai的个人空间 - 哔哩哔哩 ( ゜- ゜)つロ 乾杯~ Bilibili</title>
  <meta name="description" content="bilibili是国内知名的视频弹幕网站，这里有最及时的动漫新番，最棒的ACG氛围，最有创意的Up主。大家可以在这里找到许多欢乐。">
  <meta name="keywords" content="B站,弹幕,字幕,AMV,MAD,MTV,ANIME,动漫,动漫音乐,游戏,游戏解说,ACG,galgame,动画,番组,新番,初音,洛天依,vocaloid">
  <link href="//static.hdslb.com/css/core-v5/base.css" rel="stylesheet">
  <style type="text/css">
  .wrapper {
    width: 1100px;
    margin: 0 auto;
    position: relative;
  }
  
  #browser-version-tip {
    position: absolute;
    display: none;
    top: 42px;
    left: 0;
    z-index: 100;
    width: 100%;
    height: 40px;
    line-height: 40px;
    background-color: #e40c0c;
    text-align: center;
    font-size: 14px;
    color: #fff;
  }
  
  #browser-version-tip a {
    margin: 0 2px;
    text-decoration: underline;
    color: #0077ff;
  }
  
  #browser-version-tip #close-browser-tip {
    position: absolute;
    right: 0;
    top: 10px;
    display: inline-block;
    margin-left: 15px;
    width: 20px;
    height: 20px;
    background-image: url(//space.bilibili.com/icons5.png);
    background-position: -1368px -278px;
    vertical-align: middle;
  }
  </style>
  
<link href="//s1.hdslb.com/bfs/static/space/app_34d1ed1f.css" rel="stylesheet">




<script src="//s1.hdslb.com/bfs/static/space/4_00ad19a1.js" type="text/javascript" charset="utf-8" async=""></script><style type="text/css">#page-fav{padding:0}#page-fav.loading{background-image:url(data:image/gif;base64,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);background-position:50%;background-repeat:no-repeat;text-indent:-9999px;height:270px}#page-fav.loading>*{display:none}#page-fav.full-fav-empty:before{background-image:url(//s1.hdslb.com/bfs/static/space/nodata02.png);background-position:50%;background-repeat:no-repeat;border-radius:4px;color:#6d757a;content:"\7A7A\95F4\4E3B\4EBA\8FD8\6CA1\6709\6536\85CF\5939\54E6~";display:block;font-size:14px;height:450px;overflow:hidden;line-height:640px;text-align:center}#page-fav.full-fav-empty>*{display:none}#page-fav.master .fav-container .fav-list.is-dragging .fav-item:hover{background-color:#fff}#page-fav.master .fav-container .fav-list.is-dragging .fav-item:hover .icon-cursor,#page-fav.master .fav-container .fav-list.is-dragging .fav-item:hover .tooltip-wrap{display:none}#page-fav.master .fav-container .fav-list.is-dragging .fav-item:hover .num{display:inline-block}#page-fav.master .fav-container .fav-list.is-dragging .fav-item:hover .text{color:#222}#page-fav.master .fav-container .fav-list .fav-item.default-fav{display:none}#page-fav.master .fav-container .fav-item{cursor:move}#page-fav.master .fav-container .fav-item:hover .icon-cursor{display:inline-block}#page-fav.master .fav-container .fav-item:hover .num{display:none}#page-fav .search-empty-hint{display:none;background-image:url(//s1.hdslb.com/bfs/static/space/nodata02.png);background-position:center 120px;background-repeat:no-repeat;border-radius:4px;color:#6d757a;font-size:14px;overflow:hidden;text-align:center;padding:340px 0 80px}#page-fav .search-empty-hint .btn-container{margin-top:25px}#page-fav .search-empty-hint .normal{color:#99a2aa}#page-fav .search-empty-hint .normal:hover{color:#00a1d6}#page-fav .search-empty-hint p{font-size:14px;color:#6d757a}#page-fav .fav-sidenav{position:relative;float:left;width:180px;margin-right:-1px;font-size:14px;color:#222;border-right:1px solid #eee;box-sizing:border-box}#page-fav .fav-sidenav,#page-fav .fav-sidenav .nav-container.fav-container{border-bottom:1px solid #eee}#page-fav .fav-sidenav .tooltip-list{position:fixed;top:0;left:0;z-index:5}#page-fav .fav-sidenav .nav-title{position:relative;height:24px;padding:20px 0 0 20px}#page-fav .fav-sidenav .nav-title .text{display:block;line-height:24px;color:#99a2aa}#page-fav .fav-sidenav .nav-title .icon-add{position:absolute;bottom:-4px;right:8px;cursor:pointer}#page-fav .fav-sidenav .nav-title .icon-add:hover{background-position-x:-17px}#page-fav .fav-sidenav .fav-list-container{position:relative;max-height:420px;margin:10px 0 20px;overflow:hidden}#page-fav .fav-sidenav .fav-item{position:relative;padding-left:20px;-webkit-transition:background-color .3s ease;transition:background-color .3s ease;white-space:nowrap;font-size:0}#page-fav .fav-sidenav .fav-item.sortable-ghost{opacity:0}#page-fav .fav-sidenav .fav-item.editing .num{display:none}#page-fav .fav-sidenav .fav-item:hover{background-color:#f4f5f7}#page-fav .fav-sidenav .fav-item.cur{background-color:#00a1d6}#page-fav .fav-sidenav .fav-item.cur:hover .icon-cursor{background-color:#00b5e5}#page-fav .fav-sidenav .fav-item.cur .icon-fav-public{background-position:-86px -1047px}#page-fav .fav-sidenav .fav-item.cur .icon-fav-private{background-position:-150px -1047px}#page-fav .fav-sidenav .fav-item.cur .icon-fav-default{background-position:-22px -1047px}#page-fav .fav-sidenav .fav-item.cur .icon-more{background-position:-273px -1041px}#page-fav .fav-sidenav .fav-item.cur .num,#page-fav .fav-sidenav .fav-item.cur .text{color:#fff}#page-fav .fav-sidenav .fav-item .icon-cursor{display:none;cursor:move}#page-fav .fav-sidenav .icon-cursor{position:absolute;top:0;left:0;margin-right:10px;background-color:#d0d0d2}#page-fav .fav-sidenav .icon-fav-default,#page-fav .fav-sidenav .icon-fav-private,#page-fav .fav-sidenav .icon-fav-public{margin-right:9px}#page-fav .fav-sidenav .text{display:inline-block;line-height:44px;width:86px;margin-right:5px;font-size:14px;vertical-align:middle;overflow:hidden;text-overflow:ellipsis;white-space:nowrap}#page-fav .fav-sidenav .num{display:inline-block;width:32px;font-size:12px;color:#99a2aa;vertical-align:middle;text-align:center;font-family:Arial}#page-fav .fav-main{float:left;width:920px;min-height:600px;border-left:1px solid #eee}#page-fav .fav-main.cur-fav-empty .filter-item.do-batch .text{color:#99a2aa;cursor:no-drop}#page-fav .fav-main.cur-fav-empty .filter-item.do-batch .text:hover{color:#99a2aa}#page-fav .fav-main .fav-header{margin:20px 20px 0}#page-fav .fav-main .fav-header.fav-header-info{padding-bottom:20px;border-bottom:1px solid #e5e9ef}#page-fav .fav-main .fav-content.empty:after{display:none}#page-fav .fav-main .fav-content.empty .search-empty-hint{display:block}#page-fav .fav-main .fav-action-top{padding-bottom:20px;border-bottom:1px solid #e5e9ef}#page-fav .fav-main .fav-action-top .back-to-info{width:60px;height:30px;cursor:pointer;line-height:28px;padding-right:10px;text-align:right;border:1px solid #ccd0d7;border-radius:4px;font-size:14px;color:#222;background-position:-147px -1171px;-webkit-transition:border-color .2s ease;transition:border-color .2s ease;box-sizing:border-box}#page-fav .fav-main .fav-action-top .back-to-info:hover{color:#00a1d6;background-position:-211px -1171px;border-color:#00a1d6}#page-fav .fav-main .fav-action-top .search.filter-item{float:right}#page-fav .fav-main .fav-action-bottom{position:relative;height:59px;font-size:14px}#page-fav .fav-main .fav-action-bottom .search-results-num{padding-top:20px;font-size:14px;color:#222}#page-fav .fav-main .fav-action-bottom .search-results-num i{color:#f25d8e;font-weight:700;margin:0 3px}#page-fav .fav-main .fav-action-bottom .fav-action-fixtop{position:absolute;left:-20px;padding:19px 20px 0;height:59px;width:920px;box-sizing:border-box;background-color:#fff}#page-fav .fav-main .fav-action-bottom .fav-action-fixtop.fixtop{position:fixed;z-index:10;top:0;left:0;border-bottom:1px solid #e5e9ef;box-shadow:0 2px 4px rgba(0,0,0,.2)}#page-fav .fav-main .fav-action-bottom ul{float:left}#page-fav .fav-main .fav-action-bottom ul.filter-disable li:hover{color:#222}#page-fav .fav-main .fav-action-bottom ul.filter-disable .icon-unstar{background-position:-470px -1109px}#page-fav .fav-main .fav-action-bottom ul.filter-disable .icon-copy{background-position:-533px -1109px}#page-fav .fav-main .fav-action-bottom ul.filter-disable .icon-move{background-position:-597px -1109px}#page-fav .fav-main .fav-action-bottom li{float:left;color:#222;line-height:20px;margin-right:30px;cursor:pointer}#page-fav .fav-main .fav-action-bottom li:hover{color:#00a1d6}#page-fav .fav-main .fav-action-bottom .icon{display:inline-block;width:22px;height:22px;margin-right:6px}#page-fav .fav-main .fav-action-bottom .icon-unstar{background-position:-278px -1109px}#page-fav .fav-main .fav-action-bottom .icon-copy{background-position:-341px -1109px}#page-fav .fav-main .fav-action-bottom .icon-move{background-position:-405px -1109px}#page-fav .fav-main .fav-action-bottom .edit-detail{float:right;font-size:0}#page-fav .fav-main .fav-action-bottom .edit-detail span{display:inline-block;font-size:14px}#page-fav .fav-main .fav-action-bottom .select-counter{color:#99a2aa;margin-right:15px;vertical-align:middle}#page-fav .fav-main .fav-action-bottom .select-counter i{margin:0 2px;font-family:Arial}#page-fav .fav-main .fav-action-bottom .select-cancel{color:#00a1d6;vertical-align:middle;cursor:pointer}#page-fav .fav-main .fav-action-bottom .select-cancel:hover{color:#00b5e5}#page-fav .fav-main .fav-info{height:30px;margin-top:15px}#page-fav .fav-main .fav-meta{float:left;line-height:30px;color:#99a2aa;font-size:0}#page-fav .fav-main .fav-meta span{display:inline-block;font-size:12px;vertical-align:middle}#page-fav .fav-main .fav-meta .dot{margin:0 8px}#page-fav .fav-main .fav-filters{float:right}#page-fav .fav-main .filter-item{float:left;line-height:30px;margin-right:26px;font-size:14px;color:#222}#page-fav .fav-main .filter-item.search{height:28px;margin:0;font-size:0;border:1px solid #ccd0d7;border-radius:14px;white-space:nowrap;-webkit-transition:border-color .2s ease;transition:border-color .2s ease}#page-fav .fav-main .filter-item.search.focus{border-color:#00a1d6}#page-fav .fav-main .filter-item .sort-list{width:240px;padding-right:20px}#page-fav .fav-main .filter-item .sort-item{float:left;width:100px;line-height:36px;height:36px;font-size:0;padding-left:20px}#page-fav .fav-main .filter-item .sort-item:hover i,#page-fav .fav-main .filter-item .sort-item:hover span{color:#00a1d6}#page-fav .fav-main .filter-item .sort-item span{font-size:14px;color:#222}#page-fav .fav-main .filter-item .sort-item i{margin-left:4px;font-size:12px;color:#99a2aa}#page-fav .fav-main .filter-item .text{display:block;cursor:pointer;vertical-align:middle}#page-fav .fav-main .filter-item .text:hover{color:#00a1d6}#page-fav .fav-main .filter-item .text .icon-arrow{margin-left:4px}#page-fav .fav-main .search-types{display:inline-block;width:57px;line-height:28px;margin-left:3px;font-size:12px;color:#6d757a;vertical-align:top;text-align:center;border-right:1px solid #ccd0d7}#page-fav .fav-main .search-types:hover{color:#00a1d6}#page-fav .fav-main .search-types .icon-arrow{margin-left:4px}#page-fav .fav-main .search-input{position:relative;display:inline-block;width:148px;height:28px;margin:0 9px 0 11px;vertical-align:top}#page-fav .fav-main .search-input input{border:none;outline:none;box-shadow:none;width:120px;padding:0;font-size:12px;color:#222}#page-fav .fav-main .search-input .icon-search{position:absolute;right:0;top:0;width:18px;height:28px;background-position:-1111px -82px;cursor:pointer}#page-fav .fav-main .search-input .icon-search:hover{background-position:-1175px -82px}#page-fav .fav-main .fav-video-list{margin:20px 10px 50px 14px}#page-fav .fav-main .fav-video-list .i-watchlater{bottom:14px}#page-fav .fav-main .fav-video-list.is-batch{margin-top:0}#page-fav .fav-main .fav-video-list.is-batch .small-item{cursor:pointer}#page-fav .fav-main .fav-video-list.is-batch .small-item.selected,#page-fav .fav-main .fav-video-list.is-batch .small-item:hover{background-color:#f4f5f7;border:1px solid #e5e8ef}#page-fav .fav-main .fav-video-list.is-batch .small-item .cover:hover .meta-mask{opacity:0}#page-fav .fav-main .fav-video-list.is-batch .small-item .cover:hover .length{opacity:1}#page-fav .fav-main .fav-video-list.is-search{margin-top:0}#page-fav .fav-main .fav-video-list.topic-list{margin:20px 10px 50px 19px}#page-fav .fav-main .fav-video-list.topic-list .large-item{position:relative;width:380px;margin:0 60px 30px 0}#page-fav .fav-main .fav-video-list.topic-list .large-item .cover,#page-fav .fav-main .fav-video-list.topic-list .large-item .cover img{width:90px;height:120px}#page-fav .fav-main .fav-video-list.topic-list .large-item .detail{margin-left:110px}#page-fav .fav-main .fav-video-list.topic-list .large-item .title{font-size:16px;color:#222;margin-bottom:0}#page-fav .fav-main .fav-video-list.topic-list .large-item .desc,#page-fav .fav-main .fav-video-list.topic-list .large-item .pubdate{font-size:12px;line-height:14px;margin-top:10px;color:#99a2aa;overflow:hidden;text-overflow:ellipsis;white-space:nowrap}#page-fav .fav-main .fav-video-list.topic-list .large-item .video-edit{position:absolute;top:-6px;right:0}#page-fav .fav-main .small-item{padding:5px;margin:0 8px 20px 0;border-radius:4px;border:1px solid #fff}#page-fav .fav-main .small-item:nth-child(5n){margin-right:0}#page-fav .fav-main .small-item.selected .video-check{background-position:-332px -1162px}#page-fav .fav-main .small-item.disabled .length{display:none}#page-fav .fav-main .small-item.disabled .cover:hover .meta-mask{opacity:0}#page-fav .fav-main .small-item.disabled .cover:hover .length{opacity:1}#page-fav .fav-main .small-item.disabled .cover .disabled-cover p{-webkit-transition:margin .2s linear;transition:margin .2s linear}#page-fav .fav-main .small-item.disabled .cover .disabled-cover.animate p{margin-top:10px}#page-fav .fav-main .small-item .cover:hover .meta-mask{opacity:1}#page-fav .fav-main .small-item .cover:hover .length{opacity:0}#page-fav .fav-main .small-item .length{opacity:1;-webkit-transition:opacity .2s ease;transition:opacity .2s ease}#page-fav .fav-main .small-item .tooltip-wrap{position:absolute;bottom:-2px;right:0}#page-fav .fav-main .small-item .video-check-container{position:absolute;top:0;left:0;width:100%;height:100%;z-index:5}#page-fav .fav-main .small-item .video-check{position:absolute;top:5px;right:5px;width:40px;height:40px;z-index:6;background-position:-268px -1162px;cursor:pointer}#page-fav .fav-main .small-item .meta-mask{position:absolute;top:0;left:0;z-index:4;width:100%;height:100%;opacity:0;background-color:rgba(0,0,0,.45);color:#e5e9ef;-webkit-transition:opacity .2s ease;transition:opacity .2s ease}#page-fav .fav-main .small-item .meta-info{position:absolute;top:50%;left:15px;-webkit-transform:translateY(-50%);transform:translateY(-50%)}#page-fav .fav-main .small-item .meta-info .author{width:125px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap}#page-fav .fav-main .small-item .tooltip{position:absolute;bottom:0;right:6px}#page-fav .fav-main .small-item .tooltip .tooltip-list{left:auto;right:0;-webkit-transform:translateX(0);transform:translateX(0)}#page-fav .sp-pager{margin-bottom:50px}#page-fav .edit-video-modal .modal-wrapper{width:340px}#page-fav .edit-video-modal .modal-title{height:65px;padding-top:25px}#page-fav .edit-video-modal .edit-video-title{text-align:center;line-height:20px;font-size:16px;color:#222;overflow:hidden;text-overflow:ellipsis;white-space:nowrap}#page-fav .edit-video-modal .edit-video-subtitle{text-align:center;line-height:18px;margin-top:4px;font-size:14px;color:#6d757a;overflow:hidden;text-overflow:ellipsis;white-space:nowrap}#page-fav .edit-video-modal .edit-video-subtitle.unselected{color:#ccd0d7}#page-fav .edit-video-modal .modal-body{padding:0;margin-bottom:20px;border-bottom:1px solid #e5e9ef}#page-fav .target-favlist{position:relative;max-height:344px;padding:12px 0;box-sizing:border-box}#page-fav .target-favlist .target-favitem{height:36px;line-height:36px;padding:0 20px;text-align:left;cursor:pointer;-webkit-transition:background-color .2s ease,color .2s ease;transition:background-color .2s ease,color .2s ease}#page-fav .target-favlist .target-favitem:hover{background-color:#e5e9ef}#page-fav .target-favlist .target-favitem:hover span{color:#00a1d6}#page-fav .target-favlist .target-favitem.selected{background-color:#00a1d6}#page-fav .target-favlist .target-favitem.selected .target-fav-count,#page-fav .target-favlist .target-favitem.selected .target-fav-count i,#page-fav .target-favlist .target-favitem.selected .target-fav-name,#page-fav .target-favlist .target-favitem.selected .target-fav-name i{color:#fff}#page-fav .target-favlist .target-favitem.disabled{cursor:no-drop}#page-fav .target-favlist .target-favitem.disabled span{color:#99a2aa}#page-fav .target-favlist .target-fav-name{display:inline-block;font-size:14px;color:#222}#page-fav .target-favlist .target-fav-name i{color:#99a2aa;margin-left:6px}#page-fav .target-favlist .target-fav-count{float:right;font-size:12px;color:#99a2aa}#page-fav .target-favlist .target-fav-count .danger{color:#f25d8e}#page-fav .switcher-container{margin-top:13px}@media (min-width:1420px){#page-fav .fav-sidenav{width:210px}#page-fav .fav-sidenav .text{width:111px;margin-right:10px}#page-fav .fav-main,#page-fav .fav-main .fav-header .fav-action-fixtop{width:1070px}#page-fav .fav-main .fav-video-list.topic-list .large-item{margin:0 135px 30px 0}#page-fav .fav-main .small-item{width:190px}#page-fav .fav-main .small-item .cover{width:190px;height:119px}#page-fav .fav-main .small-item .cover .candle{margin-top:10px}#page-fav .fav-main .small-item img{width:190px;height:119px}#page-fav .to-top{margin-left:692px}}</style><style type="text/css">.sp-input[_v-82bca4d6]{position:relative;font-size:12px}.sp-input input[_v-82bca4d6]{display:block;width:100%;line-height:28px;height:28px;padding:0 50px 0 5px;color:#222;border-radius:4px;box-sizing:border-box;border:1px solid #ccd0d7;box-shadow:inset 0 2px 4px rgba(0,0,0,.1);-webkit-transition:all .3s ease;transition:all .3s ease}.sp-input input[_v-82bca4d6]:focus{border-color:#00a1d6}.sp-input .letter-count[_v-82bca4d6]{position:absolute;right:5px;top:3px;height:20px;color:#99a2aa}</style><style type="text/css">.switcher-container[_v-0a6b178c]{height:20px;white-space:nowrap}.switcher-container.switcher-on .switcher[_v-0a6b178c]{background-color:#00a1d6}.switcher-container.switcher-on .cursor[_v-0a6b178c]{left:17px}.switcher[_v-0a6b178c]{position:relative;display:inline-block;width:31px;height:16px;border-radius:8px;background-color:#ccd0d7;vertical-align:middle;cursor:pointer;-webkit-transition:background-color .2s ease;transition:background-color .2s ease}.cursor[_v-0a6b178c]{position:absolute;top:2px;left:2px;width:12px;height:12px;border-radius:12px;background:#fff;-webkit-transition:left .2s ease;transition:left .2s ease}.label[_v-0a6b178c]{display:inline-block;vertical-align:middle}</style><style type="text/css">.sp-pager[_v-c5f256da]{margin:15px 0;text-align:center}.sp-pager[_v-c5f256da]:after{content:"";display:block;height:0;clear:both;overflow:hidden;visibility:hidden}.sp-pager-item[_v-c5f256da]{display:inline-block;line-height:38px;padding:0 15px;margin-right:4px;text-align:center;list-style:none;background-color:#fff;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;cursor:pointer;font-family:Arial;font-size:14px;border:1px solid #d7dde4;border-radius:4px;-webkit-transition:all .2s ease-in-out;transition:all .2s ease-in-out}.sp-pager-item a[_v-c5f256da]{text-decoration:none;color:#657180}.sp-pager-item[_v-c5f256da]:hover{border-color:#00a1d6}.sp-pager-item:hover a[_v-c5f256da]{color:#00a1d6}.sp-pager-item-active[_v-c5f256da]{background-color:#00a1d6;border-color:#00a1d6}.sp-pager-item-active:hover a[_v-c5f256da],.sp-pager-item-active a[_v-c5f256da]{color:#fff}.sp-pager-item-jump-next[_v-c5f256da],.sp-pager-item-jump-prev[_v-c5f256da]{padding:0 5px}.sp-pager-item-jump-next[_v-c5f256da]:after,.sp-pager-item-jump-prev[_v-c5f256da]:after{content:"\2022\2022\2022";display:block;letter-spacing:1px;color:#ccc;text-align:center}.sp-pager-prev[_v-c5f256da]{margin-right:8px}.sp-pager-item-jump-next[_v-c5f256da],.sp-pager-item-jump-prev[_v-c5f256da]{margin-right:4px}.sp-pager-next[_v-c5f256da]{margin-left:4px}.sp-pager-item-jump-next[_v-c5f256da],.sp-pager-item-jump-prev[_v-c5f256da],.sp-pager-next[_v-c5f256da],.sp-pager-prev[_v-c5f256da]{display:inline-block;font-size:14px;line-height:38px;list-style:none;text-align:center;cursor:pointer;color:#666;font-family:Arial;-webkit-transition:all .2s ease-in-out;transition:all .2s ease-in-out}.sp-pager-next[_v-c5f256da],.sp-pager-prev[_v-c5f256da]{padding:0 14px;border:1px solid #d7dde4;border-radius:4px;background-color:#fff}.sp-pager-next a[_v-c5f256da],.sp-pager-prev a[_v-c5f256da]{color:#666;font-size:14px}.sp-pager-next[_v-c5f256da]:hover,.sp-pager-prev[_v-c5f256da]:hover{border-color:#00a1d6}.sp-pager-next:hover a[_v-c5f256da],.sp-pager-prev:hover a[_v-c5f256da]{color:#00a1d6}.sp-pager-disabled[_v-c5f256da]{display:none}.sp-pager-options[_v-c5f256da]{float:left;margin-left:15px}.sp-pager-options-elevator[_v-c5f256da]{display:inline-block;height:32px;line-height:32px;color:#99a2aa}.sp-pager-options-elevator input[_v-c5f256da]{border-radius:4px;margin:0 8px;width:50px}.sp-pager-total[_v-c5f256da]{display:inline-block;height:32px;line-height:32px;margin-left:30px;color:#99a2aa}</style><style></style><style></style><style></style><style></style></head>

<body>
  <div id="browser-version-tip">
    <div class="wrapper">
      抱歉，您正在使用不支持的浏览器访问个人空间。推荐您<a href="//www.google.cn/chrome/browser/desktop/index.html">安装 Chrome 浏览器</a>以获得更好的体验 ヾ(o◕∀◕)ﾉ
      <a id="close-browser-tip" href="javascript:;"></a>
    </div>
  </div>
  		
					<div class="uns_box">
	
		
</div><div class="nav-search"><form id="nav_searchform" action="//search.bilibili.com/all" target="_blank"><input name="keyword" class="nav-search-keyword" id="nav_search_keyword" accesskey="s" type="text" placeholder="搜索" x-webkit-grammar="builtin:translate" x-webkit-speech="" autocomplete="off"><button class="nav-search-submit" type="submit"></button></form></div>

				</div>
			</div>
		</div><div class="owner" id="space-body"> 
		  <div class="s-space">
		   <div class="wrapper"> 
		   <div class="col-full clearfix master" id="page-fav"> 
		   <div class="fav-sidenav"> 
		   <div class="nav-container fav-container"> 
		   <div class="nav-title">
		    <span class="text">视频收藏</span> <span title="创建收藏夹" class="icon icon-add"></span>
		     </div> 
		     <div class="fav-list-container ps-container ps-theme-default" id="fav-list-container" data-ps-id="a85f2c18-fb93-0cd5-870a-7d7ca6c4b98e">
		      <div class="fav-item default-fav cur" fid="65589671"> 
		      <span class="icon icon-fav-default"></span> 
		      <a title="视频收藏夹" class="text v-link-active" href="#!/favlist?fid=65589671">视频收藏夹</a> 
		      <span class="num">1</span>
		       <span class="icon icon-more"></span> </div>
		        <ul class="fav-list">  </ul>
		   <div class="ps-scrollbar-x-rail" style="left: 0px; bottom: 0px;">
		   <div tabindex="0" class="ps-scrollbar-x" style="left: 0px; width: 0px;"></div></div>
		 <div class="ps-scrollbar-y-rail" style="top: 0px; right: 0px;">
		 <div tabindex="0" class="ps-scrollbar-y" style="top: 0px; height: 0px;"></div></div></div>
	      <div class="tooltip-list fav-editlist" style="display: none;"> 
		  <span class="action-item delimiter-item">编辑信息</span> 
		 <span class="action-item">删除</span> </div> </div>
		  <div class="nav-container topic-container"> 
		   <div class="nav-title"> <span class="text">漫画收藏</span> </div>
		  <div class="fav-list-container"> 
		    <ul class="fav-list"> 
		    <li class="fav-item"> 
		    <span class="icon icon-fav-private"></span>
		     <a class="text v-link-active" href="#!/favlist?fid=topic">漫画收藏夹</a>
		    <span class="num">0</span> </li> </ul> </div> </div> </div>
		   <div class="fav-main"> 
		    <div class="fav-header fav-header-info"> 
		   <div class="breadcrumb"> <p class="item cur">默认收藏夹</p> </div>
		    <div class="fav-info clearfix"> 
		    <div class="fav-meta"> 
		     <span class="type">公开</span>
		      <span class="dot">·</span> 
		     <span class="num">1</span>
		     <span class="num">个视频</span> </div> 
		      <div class="fav-filters clearfix">
		      <div class="filter-item do-batch"> 
		     <span class="text">批量操作</span> </div> 
		     <div class="filter-item">
		      <div class="tooltip-wrap list-center">
		      <div class="tooltip-text"> 全部分区<i class="icon icon-arrow"></i> </div>
		     <div class="tooltip-list" style="display: none;"> 
		      <ul class="sort-list clearfix"> 
		        <li class="sort-item">
		       <span>全部分区</span><i>1</i></li> 
		       <li class="sort-item">
		        <span>娱乐区</span><i>1</i></li> </ul> </div> </div> </div> 
		      <div class="filter-item"> 
		      <div class="tooltip-wrap list-center">
		       <div class="tooltip-text"> 最近收藏<i class="icon icon-arrow"></i> </div> 
		     <div class="tooltip-list" style="display: none;"> 
		     <span class="action-item">最近收藏</span> 
		     <span class="action-item">最多播放</span> 
		     <span class="action-item">最新投稿</span> </div> </div> </div>
		      <div class="filter-item search"> <div class="search-types">
		       <div class="tooltip-wrap list-center"> 
		       <div class="tooltip-text"> 当前<i class="icon icon-arrow"></i> </div> 
		       <div class="tooltip-list" style="display: none;"> 
		       <span class="action-item delimiter-item">当前收藏夹</span> 
		       <span class="action-item">全部收藏夹</span> </div> </div> </div> 
		       <div class="search-input search-container">
		        <input class="search-fav-input" type="text" placeholder="输入关键词"> 
		        <span title="点击搜索" class="icon icon-search">
		        </span> 
		        </div> 
		       </div> 
		      </div>
		      </div> 
		     </div>
		      <div class="fav-content section"> 
		      <div class="search-empty-hint"> 
		      <p>该收藏夹还没有视频哦~</p>  </div> 
		      <div class="fav-video-list clearfix content"> 
		      <div class="small-item watched" data-aid="10909840"> 
		      <a class="cover" href="" target="_blank">
		       <img alt="【朋友圈】斗鱼嘉年华 大司马被大波水友围攻" src="//i2.hdslb.com/bfs/archive/9d0351af264edb10eb24bf38fb29dad11bfd9ca8.jpg_380x240.jpg">
		        <span class="length">00:07</span> 
		        <span class="i-watchlater no-select" aid="10909840"></span>
		      <div class="disabled-cover"> 
		      <div class="candle" style="visibility: hidden; background-position-x: 0px;"></div>
		       <p>视频已失效</p> </div> 
		       <div class="meta-mask"> 
		       <div class="meta-info">
		        <p class="view">播放：1.9万</p> 
		        <p class="favorite">收藏：21</p>
		         <p class="author">UP主：丶泡菜君</p> 
		         <p class="pubdate">投稿：28天前</p> </div> </div> </a>
		          <a title="【朋友圈】斗鱼嘉年华 大司马被大波水友围攻" class="title" href="//www.bilibili.com/video/av10909840" target="_blank">【朋友圈】斗鱼嘉年华 大司马被大波水友围攻</a> <div class="meta pubdate">25天前收藏</div> <div class="meta pubdate" style="display: none;">28天前发布</div>
		    <div class="meta pubdate" style="display: none;">播放数：1.9万</div> 
		    <div class="video-edit"> 
		     <div class="tooltip-wrap list-left">
		      <div class="tooltip-text"> 
		     <span class="icon icon-more"></span> </div>
		   <div class="tooltip-list" style="display: none;">
		      <span class="action-item delimiter-item">取消收藏</span> 
		      <span class="action-item">移动到</span> 
		     <span class="action-item">复制到</span> </div> </div> </div>
		  <div class="video-check-container" style="display: none;">
	 <div class="video-check icon"></div> </div> </div> </div>
	 <ul class="sp-pager" style="display: none;" _v-c5f256da=""> 
	 <li title="上一页" class="sp-pager-prev sp-pager-disabled" _v-c5f256da=""> 
	 <a _v-c5f256da="">上一页</a> </li> 
	 <li title="第一页" class="sp-pager-item sp-pager-item-active" _v-c5f256da="">
	 <a _v-c5f256da="">1</a></li>   
	     <li title="下一页" class="sp-pager-next sp-pager-disabled" _v-c5f256da="">
	 <a _v-c5f256da="">下一页</a> </li> 
	 <span class="sp-pager-total" _v-c5f256da=""> 共 1 页， </span> 
	 <span class="sp-pager-options-elevator" _v-c5f256da=""> 跳至 <input type="text" _v-c5f256da=""> 页 </span> </ul> </div> </div>
  <div class="modal-container" style="display: none;" _v-7c26d812=""> 
  <div class="modal-mask" _v-7c26d812=""></div> <div class="modal-wrapper" _v-7c26d812=""> 
  <div class="modal" style="display: none;" _v-7c26d812="">
   <div class="modal-header" _v-7c26d812="">
    <i class="modal-header-close ion-close-round" _v-7c26d812=""></i> 
    <div class="modal-title" _v-7c26d812="">  确认操作  </div> </div>
     <div class="modal-body" _v-7c26d812="">    </div> 
  <div class="btn-container modal-footer btn-center" _v-008c1078="" _v-7c26d812="">
   <a class="btn primary" _v-14670ac6="" _v-7c26d812="">  
    <span class="btn-content" _v-14670ac6=""> 确定 </span> </a>
     <a class="btn default" _v-14670ac6="" _v-7c26d812="">  
     <span class="btn-content" _v-14670ac6=""> 取消 </span> </a> </div> </div> </div> </div>
    <div class="modal-container" style="display: none;" _v-7c26d812=""> 
    <div class="modal-mask" _v-7c26d812=""></div> 
    <div class="modal-wrapper" _v-7c26d812=""> 
   <div class="modal" style="display: none;" _v-7c26d812=""> 
   <div class="modal-header" _v-7c26d812="">
    <i class="modal-header-close ion-close-round" _v-7c26d812=""></i> 
   <div class="modal-title" _v-7c26d812="">    </div> </div>
  <div class="modal-body" _v-7c26d812="">
  <div class="sp-input" _v-82bca4d6=""> 
  <input type="text" maxlength="15" placeholder="最多输入15个字" value="" _v-82bca4d6="">
   <div class="letter-count" style="display: none;" _v-82bca4d6="">0/15</div> </div>
  <div class="switcher-container switcher-on" _v-0a6b178c=""> 
  <div class="switcher" _v-0a6b178c=""> <i class="cursor" _v-0a6b178c=""></i> </div> 
  <div class="label" _v-0a6b178c=""> 
  <span _v-0a6b178c="">公开该收藏夹</span> </div> </div> </div> 
  <div class="btn-container modal-footer btn-center" _v-008c1078="" _v-7c26d812=""> 
  <a class="btn primary" _v-14670ac6="" _v-7c26d812="">  
   <span class="btn-content" _v-14670ac6=""> 确定 </span> </a>
    <a class="btn default" _v-14670ac6="" _v-7c26d812="">   
    <span class="btn-content" _v-14670ac6=""> 取消 </span> </a> </div> </div> </div> </div>
  <div class="modal-container edit-video-modal" style="display: none;" _v-7c26d812=""> 
  <div class="modal-mask" _v-7c26d812=""></div> 
  <div class="modal-wrapper" _v-7c26d812="">
   <div class="modal" style="display: none;" _v-7c26d812=""> 
   <div class="modal-header" _v-7c26d812=""> 
   <i class="modal-header-close ion-close-round" _v-7c26d812=""></i> 
  <div class="modal-title" _v-7c26d812=""> 
  <p class="edit-video-title">你正在移动0个视频到</p>
   <p class="edit-video-subtitle unselected">[请选择]</p> </div> </div>
  <div class="modal-body" _v-7c26d812=""> 
  <div class="target-favlist ps-container ps-theme-default" id="target-favlist" data-ps-id="c9695331-111a-3d0d-41e1-a4dd09444eb3">
  <div class="target-favlist-container"> 
  <div class="target-favitem disabled"> 
  <span class="target-fav-name">默认收藏夹<i></i></span>
   <span class="target-fav-count">1</span> </div> </div> 
  <div class="ps-scrollbar-x-rail" style="left: 0px; bottom: 0px;">
  <div tabindex="0" class="ps-scrollbar-x" style="left: 0px; width: 0px;"></div></div>
 <div class="ps-scrollbar-y-rail" style="top: 0px; right: 0px;">
 <div tabindex="0" class="ps-scrollbar-y" style="top: 0px; height: 0px;"></div></div></div> </div> 
 <div class="btn-container modal-footer btn-center" _v-008c1078="" _v-7c26d812="">
  <a class="btn primary" _v-14670ac6="" _v-7c26d812=""> 
    <span class="btn-content" _v-14670ac6=""> 确定 </span> </a> 
  <a class="btn default" _v-14670ac6="" _v-7c26d812="">  
   <span class="btn-content" _v-14670ac6=""> 取消
    </span>
     </a>
      </div>
       </div> 
       </div> 
       </div> 
      </div> 
     </div>
    </div>
  <div class="space-loading" style="display: none;">
  <div class="space-loading-tv"></div> </div> 
  <div class="modal-container global-modal" style="display: none;" _v-7c26d812=""> 
  <div class="modal-mask" _v-7c26d812=""></div>
  <div class="modal-wrapper" _v-7c26d812=""> 
  <div class="modal" style="display: none;" _v-7c26d812="">
  <div class="modal-header" _v-7c26d812=""> 
   <i class="modal-header-close ion-close-round" _v-7c26d812=""></i> 
  <div class="modal-title" _v-7c26d812="">  通知  </div> </div> 
 <div class="modal-body" _v-7c26d812=""> <p></p> </div>
 <div class="btn-container modal-footer btn-center" _v-008c1078="" _v-7c26d812="">
  <a class="btn primary" _v-14670ac6="" _v-7c26d812="">  
   <span class="btn-content" _v-14670ac6=""> 确定 </span> </a>
  <a class="btn default" _v-14670ac6="" _v-7c26d812=""> 
    <span class="btn-content" _v-14670ac6=""> 取消
     </span>
      </a>
      </div>
      </div>
     </div> 
    </div> 
   <div id="id-card"> 
   <div style="display: none;"> 
   <div class="idc-theme-img" style='background-image: url("//i0.hdslb.com/");'></div>
   <div class="idc-info clearfix"> 
   <a class="idc-avatar-container" href="//space.bilibili.com/0" target="_blank">
    <img class="idc-avatar" alt="Bili" src="//static.hdslb.com/images/member/noface.gif">
   <div class="idv-avatar" style='background-image: url("//static.hdslb.com/images/member/noface.gif");'></div> 
     </a> 
   <div class="idc-content"> 
   <div> 
   <a class="idc-username" href="//space.bilibili.com/0" target="_blank"> 
   <b title="Bili" class="idc-uname vip-name-check">Bili</b> </a>
    <span class="gender idc-gender icon unknown"></span>
   <a class="m-level idc-m-level" href="//www.bilibili.com/html/help.html#k" target="_blank" lvl="5"></a> </div>
  <div class="idc-meta"> 
  <span class="idc-meta-item">关注 </span> 
  <span class="idc-meta-item">粉丝 </span> </div> </div> 
  <div class="tag-list idc-tag-list"></div> 
  <div class="idc-sign">bilibili 干杯</div>  </div> 
  <div class="btn-container idc-action btn-center" _v-008c1078="">
   <a class="btn idc-btn primary" _v-14670ac6="">   
   <span class="btn-content" _v-14670ac6=""> +关注 </span> </a>
   <a class="btn idc-btn ghost" style="display: none;" _v-14670ac6="">
      <span class="btn-content" _v-14670ac6=""> 已关注 </span> </a>
    <a class="btn idc-btn default" _v-14670ac6=""> 
      <span class="btn-content" _v-14670ac6=""> 私信 </span> </a> </div> </div>
 <div class="laoding-text">正在加载中，请稍后...</div> </div> 
 <div class="toast-layer fade-transition" style="display: none;" _v-73bf6a5f="">操作失败</div>
 <div class="to-top"></div> 
 <div class="tooltip-layer fade-transition" style="display: none;" _v-0866a480="">
 </div> 
 </div>
  <script type="text/javascript">
  // IE9及以下不支持，IE9也提示升级到chrome
  var isIE = function(ver) {
    var b = document.createElement('b');
    b.innerHTML = '<!--[if IE ' + ver + ']><i></i><![endif]-->';
    return b.getElementsByTagName('i').length === 1;
  }
  var $BVcloseBtn = document.getElementById('close-browser-tip');
  var $BVtip = document.getElementById('browser-version-tip');
  if (isIE(9) || isIE(8) || isIE(7) || isIE(6)) {
    $BVtip.style.display = 'block';
    $BVcloseBtn.onclick = function() {
      $BVtip.style.display = 'none';
    }
  }
  </script>
<script src="//s1.hdslb.com/bfs/static/space/vendor_34d1ed1f.js" type="text/javascript"></script><script src="//s1.hdslb.com/bfs/static/space/app_34d1ed1f.js" type="text/javascript"></script>




<ul class="bilibili-suggest" style="left: 1284.36px; top: 42px; display: none; min-width: 188px; max-width: 360px;"></ul></body></html>
</html>
