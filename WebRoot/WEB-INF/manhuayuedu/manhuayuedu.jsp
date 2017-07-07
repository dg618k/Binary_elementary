<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'manhuayuedu.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/manhuayuedu.css">
	

  </head>
  <body>

<div id="header">
    <div class="top">
        <div class="topnav">
            <div class="topnav_l">
                <div class="logo"><a title="酷漫网" href="http://www.kuman.com/">酷漫</a></div>
                <span><a title="酷漫" href="http://www.kuman.com/">首页</a>&gt;</span><span><a title="断城ZERO" href="http://www.kuman.com/mh-1000778/">断城ZERO</a>&gt;</span><h1>第17话</h1>
            </div>
           
        </div>
    </div>
</div>

<div id="content">
    <div class="xihuan">
        <div class="xihuan_top">猜你喜欢</div>
        <div class="xihuan_list">
            <ul><li><a title="妖神记" href="http://www.kuman.com/mh-1000158/" target="_blank"><img alt="妖神记" src="http://cover.static.kuman.com/000/01/00/01/10005881b51ecdb04.jpeg"><p>妖神记</p></a></li><li><a title="王牌校草" href="http://www.kuman.com/mh-1000391/" target="_blank"><img alt="王牌校草" src="http://cover.static.kuman.com/000/01/00/03/100057a15124bef2f.jpeg"><p>王牌校草</p></a></li><li><a title="斗破苍穹" href="http://www.kuman.com/mh-1001035/" target="_blank"><img alt="斗破苍穹" src="http://cover.static.kuman.com/000/01/00/10/1000587477d002426.jpeg"><p>斗破苍穹</p></a></li><li><a title="斗罗大陆" href="http://www.kuman.com/mh-1001062/" target="_blank"><img alt="斗罗大陆" src="http://cover.static.kuman.com/000/01/00/10/100058d498592530b.jpeg"><p>斗罗大陆</p></a></li><li><a title="凤逆天下" href="http://www.kuman.com/mh-1001093/" target="_blank"><img alt="凤逆天下" src="http://cover.static.kuman.com/000/01/00/10/10005881b13d9cdbc.jpeg"><p>凤逆天下</p></a></li><li><a title="风起苍岚" href="http://www.kuman.com/mh-1001156/" target="_blank"><img alt="风起苍岚" src="http://cover.static.kuman.com/000/01/00/11/100058e9ec47b9dae.jpeg"><p>风起苍岚</p></a></li><li><a title="丧尸纪元" href="http://www.kuman.com/mh-1002269/" target="_blank"><img alt="丧尸纪元" src="http://cover.static.kuman.com/000/01/00/22/1000593fb80770833.jpeg"><p>丧尸纪元</p></a></li><li><a title="禁果" href="http://www.kuman.com/mh-1002306/" target="_blank"><img alt="禁果" src="http://cover.static.kuman.com/000/01/00/23/1000594cd83c03cc2.jpeg"><p>禁果</p></a></li><li><a title="打野英雄" href="http://www.kuman.com/mh-1002362/" target="_blank"><img alt="打野英雄" src="http://cover.static.kuman.com/000/01/00/23/1000592e786bcdb40.jpeg"><p>打野英雄</p></a></li><li><a title="诡谲" href="http://www.kuman.com/mh-1002363/" target="_blank"><img alt="诡谲" src="http://cover.static.kuman.com/000/01/00/23/1000594a01758eeb9.jpeg"><p>诡谲</p></a></li></ul>
        </div>
        </div>    <div class="cont">
        <div class="show_page">
    <div class="prev"><a href="http://www.kuman.com/mh-1000778/16/">上一页</a></div>
    <div class="ye">
        <label>
            <select class="ye_select" id="fenYe">
                <option selected="selected" value="1">第1页</option><option value="2">第2页</option><option value="3">第3页</option><option value="4">第4页</option><option value="5">第5页</option><option value="6">第6页</option><option value="7">第7页</option><option value="8">第8页</option><option value="9">第9页</option><option value="10">第10页</option><option value="11">第11页</option><option value="12">第12页</option><option value="13">第13页</option><option value="14">第14页</option><option value="15">第15页</option>            </select>
        </label>
    </div>
    <div class="next"><a href="http://www.kuman.com/mh-1000778/17-2/">下一页</a></div>
   
    <span>主人，发现新彩蛋。（←→ 或 点击图片）快速翻页，（Ctrl+滚轮）缩放漫画，（F11）全屏洁净阅读，和鼠标说拜拜！</span>
</div>
<div class="show_list">
    <ul>
        <li>
            <span id="images_show"><img id="image_1981" src="http://comic.static.kuman.com/02161d41ee2969bb8bb9dcb2f5d866fa" data-image_id="1981"></span>
            <p><span id="pageNum">1</span>/15</p>
        <li>
    </li></ul>
</div>

<div class="show_shang">
    <div class="gongju_zhui"><a id="comicSubscribe" href="javascript:void(0);" comic_id="1000778"><i></i><span>收藏/订阅</span></a></div>
    <div class="gongju_piao">
                    <a class="login_flag" href="javascript:void(0);"><i></i><span>点赞</span></a>
            </div>
    <div class="gongju_liwu">
                    <a class="login_flag" href="javascript:void(0);"><i></i><span>分享</span></a>
            </div>
    <div class="gongju_next"><a href="http://www.kuman.com/mh-1000778/17-2/">点击进入下一页 &gt;&gt;</a></div>
</div>
    </div>
</div>

<div id="footer">
    <div class="foot">
                    
                    <div class="gongju">
            <div class="gongju_shang"><a href="http://www.kuman.com/mh-1000778/16/"><i></i>上一话</a></div>
            <div class="gongju_xia"><a href="http://www.kuman.com/chapterLastTips-index-1000778/"><i></i>下一话</a></div>
            <div class="gongju_mulu"><a id="chapterList" href="javascript:void(0);"><i></i>章节目录</a></div>
        </div>
    </div>
</div>

<div class="bbCursor" id="bbCursor">
    <div class="handle"><a href="javascript:void(0);">X</a></div>
    <p></p>
    <div class="arrow-top"></div>
    <div class="resize"></div>
</div>

<div class="chapterBox" style="max-height: 690px;">
    <h2>《断城ZERO》目录</h2>
    <ul style="max-height: 620px;">
                <li>[1] &nbsp;<a title="第1话" href="http://www.kuman.com/mh-1000778/1/">第1话</a></li>
                <li>[2] &nbsp;<a title="第2话" href="http://www.kuman.com/mh-1000778/2/">第2话</a></li>
                <li>[3] &nbsp;<a title="第3话" href="http://www.kuman.com/mh-1000778/3/">第3话</a></li>
                <li>[4] &nbsp;<a title="第4话" href="http://www.kuman.com/mh-1000778/4/">第4话</a></li>
                <li>[5] &nbsp;<a title="第5话" href="http://www.kuman.com/mh-1000778/5/">第5话</a></li>
                <li>[6] &nbsp;<a title="第6话" href="http://www.kuman.com/mh-1000778/6/">第6话</a></li>
                <li>[7] &nbsp;<a title="第7话" href="http://www.kuman.com/mh-1000778/7/">第7话</a></li>
                <li>[8] &nbsp;<a title="第8话" href="http://www.kuman.com/mh-1000778/8/">第8话</a></li>
                <li>[9] &nbsp;<a title="第9话" href="http://www.kuman.com/mh-1000778/9/">第9话</a></li>
                <li>[10] &nbsp;<a title="第10话" href="http://www.kuman.com/mh-1000778/10/">第10话</a></li>
                <li>[11] &nbsp;<a title="第11话" href="http://www.kuman.com/mh-1000778/11/">第11话</a></li>
                <li>[12] &nbsp;<a title="第12话" href="http://www.kuman.com/mh-1000778/12/">第12话</a></li>
                <li>[13] &nbsp;<a title="第13话" href="http://www.kuman.com/mh-1000778/13/">第13话</a></li>
                <li>[14] &nbsp;<a title="第14话（暂缺）" href="http://www.kuman.com/mh-1000778/14/">第14话（暂缺）</a></li>
                <li>[15] &nbsp;<a title="第15话" href="http://www.kuman.com/mh-1000778/15/">第15话</a></li>
                <li>[16] &nbsp;<a title="第16话" href="http://www.kuman.com/mh-1000778/16/">第16话</a></li>
                <li>[17] &nbsp;<a title="第17话" href="http://www.kuman.com/mh-1000778/17/">第17话</a></li>
            </ul>
    <p>共<span>17</span>话</p>
</div>
<script>
    var show = {
        comic_id: 1000778,
        chapter_id: 7033,
        few: 17,
        count: 15,
        prev: 'http://www.kuman.com/mh-1000778/16/',
        next: 'http://www.kuman.com/mh-1000778/17-2/',
        image: {
            id: 1981,
            sync: 1,
            url: 'http://comic.static.kuman.com/02161d41ee2969bb8bb9dcb2f5d866fa'
        }
    };

    document.oncontextmenu = function (e) {
        var event = e || window.event;
        event.cancelBubble = true;
        event.returnValue = false;
        return false;
    };

</script>
<script src="http://www.kuman.com/static/js/comic-show.js?v=201607151508"></script>
                <script>
                    var _hmt = _hmt || [];
                    (function() {
                        var hm = document.createElement("script");
                        hm.src = "https://hm.baidu.com/hm.js?3862718383598b6b32a519e9d61475b5";
                        var s = document.getElementsByTagName("script")[0];
                        s.parentNode.insertBefore(hm, s);
                    })();
                </script>
                        
<script>
    (function(){
        var bp = document.createElement('script');
        var curProtocol = window.location.protocol.split(':')[0];
        if (curProtocol === 'https') {
            bp.src = 'https://zz.bdstatic.com/linksubmit/push.js';
        }
        else {
            bp.src = 'http://push.zhanzhang.baidu.com/push.js';
        }
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(bp, s);
    })();
</script>



</body>
 
</html>
