<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>单机游戏</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	
	
  
  <head>
  <link rel="stylesheet"  type="text/css"  href="style/header.css"/>
  <link rel="stylesheet" type="text/css" href="css/game.css">
  <header>
  	<nav>
        <ul>
            <li><a>喵，欢迎来到史上最好的网站</a></li>
           <c:if test="${user != null }">
    				 <li><a>${user}</a></li>
    		</c:if>
    		<c:if test="${user == null }">
    				<li><a href="login/login">登陆</a></li>
            		<li><a href="login/register">注册</a></li>
    		</c:if>
            <li id="top_tag1" class="history"><a href="" target="_blank" rel="nofollow">订单</a></li>
            <li id="top_tag0" class="history"><a href="trade/cartview" target="_blank" rel="nofollow">购物车</a></li>
        </ul>
	</nav>
	<div class="banner"></div>
	<div class="top2">
		<nav>
	        <ul>
	            <li ><a href="http://localhost:8080/Binary_elementary/index">主页</a></li>
	            <li><a href="game/gameview" >单机游戏</a></li>
	            <li><a href="game/dianziview" >电子竞技</a></li>
	            <li><a href="game/shouyouview"  rel="nofollow">手游</a></li>
	            <li><a href="game/wangyouview"  rel="nofollow">网游</a></li>
	           
	            <li id="top_tag0" class="history">
	            </li>
	        </ul>
		</nav>
		<div class="search">
			<form id="searchform" action="" target="_blank">
				<input name="keyword" class="search-keyword" id="search-keyword" 	accesskey="s" type="text" placeholder="今天是个好日子" x-webkit-	grammar="builtin:translate" x-webkit-speech="" autocomplete="off" data-	recommend="av11595857">
				<button class="search-submit" type="submit"></button>
			</form>
		</div>
	</div>
</header>
  </head>
<body class="" data-cover-preview="true" >
   <!-- 2017-07-05 09:36:19 -->    <script type="text/javascript">biliAdjust();
            $(function () {
                biliAdjust(true);
                $(window).resize(biliAdjust);
            });</script>

    <div class="float_window" style="display: none;"><div class="close"></div><div id="float_window"></div></div>

    
    <div class="b-page-body">
                                <script>$('.header .num .m-i[data-tid=4]').addClass('on');</script>
        <div class="main-inner">
                
        <div class="container-body">
        <div class="list-custom-wrp ">
                                     
                        <!--左-->
            <div class="b-page-large b-f-left">
                                                                        
                                                <div class="video-list list-c">
                    <div class="vl-hd clearfix">
                        <div class="left">
                            <ul class="vl-tab" id="tab_list_order">
                                <li class="tab-i on" id="list_order_default" order="default">投稿时间排序</li>
                               
                            </ul>
                        </div>
                        
                        <div class="vl-hd-sub" style="display: none;">
                            <div class="selector-block">
                                <div id="select_list_order" class="b-slt" style="display: none;"><span class="txt">播放数</span>
                                    <div class="b-slt-arrow"></div>
                                    <ul class="list">
                                        <li val="hot" selected="selected" class="b-state-selected">播放数</li>
                                        <li val="review">评论数</li>
                                        <li val="stow">收藏数</li>
                                        <li val="promote">硬币数</li>
                                        <li val="damku">弹幕数</li>
                                    </ul>
                                </div>
                            </div>
                                                                <div class="selector-block">
                                        <div id="list_tag_days" class="b-slt" style="display: none;"><span class="txt">一个月</span>
                                            <div class="b-slt-arrow"></div>
                                            <ul class="list">
                                                <li val="7" class="">一周</li>
                                                <li val="30" selected="selected" class="b-state-selected">一个月</li>
                                                <li val="90">三个月</li>
                                            </ul>
                                        </div>
                                    </div>
                               <div class="selector-block">
                                <div id="date_select" class="date-select" style="display: none;"> <span>2017-06-28 ~ 2017-07-05</span></div>
                                <div id="selet_datebox_none" style="display:none;">
                                    <div class="selet-datebox">
                                        <h3>日期选择</h3>
                                        <div class="inpt">
                                            <input type="text" value="2017-06-28" class="range_start" id="range_start"> - <input type="text" value="2017-07-05" class="range_end" id="range_end">
                                            <a class="b-btn" id="range_select">确定</a>
                                        </div>
                                        <h4>按月份快速选择</h4>
                                        <div class="sse clearfix"></div>
                                    </div>
                                </div>
                            </div>
                            <span class="s-line"></span>
                        </div>
                    </div>
                    <div class="vd-list-cnt loaded">
                    <ul class="vd-list l2">
                    <li>
                    <div class="l-item">
                    <div class="l-l">
                    <a href="/video/av11898253/" target="_blank" class="preview cover-preview" data-cover-loaded="true">
                    <img data-img="" src="//i0.hdslb.com/bfs/archive/e62520b20db9faaf41a0d1362ea1f366de778ae0.jpg@.webp" loaded="loaded" alt="《绝地求生：大逃杀》手机版《子弹力量：战场》宣传片公开 画面表现张力十足" style="opacity: 1;">
                    <div class="back">
                    <div style="background-image: url(&quot;//i3.hdslb.com/bfs/videoshot/19645147.jpg?vsign=f4674dbcb981196a7070ef62f19a17bca7484494&amp;ver=66129123&quot;); background-size: 1600px; background-position: -480px 0px;">
                    </div>
                    </div>
                    <div class="fore">
                    <span data-loading="false">
                    </span>
                    <div class="bar">
                   <div style="width: 56.5%;">
                   </div>
                   </div>
                   </div>
                  <div class="x">
                  <b class="x2">0:36</b>
                  </div>
                  </a>
                  <i class="watch-later" aid="11898253">
                  </i>
                  <a href="/video/av11898253/" target="_blank" class="title" title="《绝地求生：大逃杀》手机版《子弹力量：战场》宣传片公开 画面表现张力十足">《绝地求生：大逃杀》手机版《子弹力量：战场》宣传片公开 画面表现张力十足</a>
                  </div>
                 <div class="l-r">
                 <div class="v-desc">转自http://www.yxdown.com/news/201706/357439.html
                                   游戏名称为《子弹打击：战场(Bullet Strike: Battlegrounds)》，从目前曝光的游戏画面上来看，游戏质量还是不错的，目前游戏已经基本完成，不过才刚刚进入内部测试阶段，所以关于游戏还并没有太多的消息曝光，不过如果能够达到像是宣传一样的效果的话，这款游戏或许还是非常值得期待的。</div>
                  <div class="v-info">
                  <span class="v-info-i gk">
                  <i class="b-icon b-icon-v-play" title="观看">
                  </i>
                  <span number="17">17</span>
                  </span>
                  <span class="v-info-i dm">
                  <i class="b-icon b-icon-v-dm" title="弹幕">
                  </i>
                  <span number="0">0</span>
                  </span>
                  <span class="v-info-i sc">
                  <i class="b-icon b-icon-v-fav" title="收藏"></i>
                  <span number="0">0</span>
                  </span>
                  </div>
                  <div class="up-info">
                  <a class="v-author" href="//space.bilibili.com/17059366" target="_blank" title="苍本牧之">苍本牧之</a>
                  <span class="v-date" title="日期">2017-07-05 09:15</span>
                  </div>
                  </div>
                  </div>
                  </li>
                  <li>
                  <div class="l-item">
                  <div class="l-l">
                  <a href="/video/av11897340/" target="_blank" class="preview cover-preview" data-cover-loaded="true">
                  <img data-img="" src="//i2.hdslb.com/bfs/archive/b8ccc7d316fde1e3582eb7eea19a03d9b24fb26d.jpg@.webp" loaded="loaded" alt="小C的我的世界生存日记EP.6" style="opacity: 1;">
                  <div class="back">
                  <div style="background-image: url(&quot;//i3.hdslb.com/bfs/videoshot/19643862.jpg?vsign=d34e15b1b202920ae47c6217633b04c8823eba74&amp;ver=66123177&quot;); background-size: 1140px; background-position: 0px -320.625px;">
                  </div>
                  </div>
                  <div class="fore">
                  <span data-loading="false">
                  </span>
                  <div class="bar">
                  <div style="width: 52.98%;">
                  </div>
                  </div>
                  </div>
                  <div class="x">
                  <b class="x2">14:24</b>
                  </div>
                  </a>
                  <i class="watch-later" aid="11897340">
                  </i>
                  <a href="/video/av11897340/" target="_blank" class="title" title="小C的我的世界生存日记EP.6">小C的我的世界生存日记EP.6</a>
                  </div>
                  <div class="l-r">
                  <div class="v-desc">优酷地址：http://i.youku.com/xiaocminecraft</div>
                  <div class="v-info">
                  <span class="v-info-i gk">
                  <i class="b-icon b-icon-v-play" title="观看">
                  </i>
                  <span number="1">1</span>
                  </span>
                  <span class="v-info-i dm">
                  <i class="b-icon b-icon-v-dm" title="弹幕">
                  </i>
                  <span number="0">0</span>
                  </span>
                  <span class="v-info-i sc">
                  <i class="b-icon b-icon-v-fav" title="收藏">
                  </i>
                  <span number="0">0</span>
                  </span>
                  </div>
                  <div class="up-info">
                  <a class="v-author" href="//space.bilibili.com/23662353" target="_blank" title="我叫小C_">我叫小C_</a>
                  <span class="v-date" title="日期">2017-07-05 07:44</span>                                
                           </div>
                       </div>
                      </div>
                    </li>
                  <li>
                  <div class="l-item">
                  <div class="l-l">
                  <a href="/video/av11891795/" target="_blank" class="preview cover-preview">
                  <img data-img="" src="//i0.hdslb.com/bfs/archive/b984593897559708a27434e5e6e0a06f572fd7b9.jpg@.webp" loaded="loaded" alt="越野标杆牧马人卢比肯带你一起极限越野gta5mod潮仔" style="opacity: 1;">
                  <div class="back">
                  <div>
                  </div>
                  </div>
                  <div class="fore">
                  <span>
                  </span>
                  <div class="bar">
                  <div>
                  </div>
                  </div>
                  </div>
                  <div class="x">
                  <b class="x2">14:41</b>
                  </div>
                  </a>
                  <i class="watch-later" aid="11891795">
                  </i>
                  <a href="/video/av11891795/" target="_blank" class="title" title="越野标杆牧马人卢比肯带你一起极限越野gta5mod潮仔">越野标杆牧马人卢比肯带你一起极限越野gta5mod潮仔</a>
                  </div>
                  <div class="l-r">
                  <div class="v-desc">越野标杆牧马人卢比肯带你一起极限越野gta5mod潮仔</div>
                  <div class="v-info">
                  <span class="v-info-i gk">
                  <i class="b-icon b-icon-v-play" title="观看">
                  </i>
                  <span number="7">7</span>
                  </span>
                  <span class="v-info-i dm">
                  <i class="b-icon b-icon-v-dm" title="弹幕">
                  </i>
                  <span number="0">0</span>
                  </span>
                  <span class="v-info-i sc">
                  <i class="b-icon b-icon-v-fav" title="收藏">
                  </i>
                  <span number="0">0</span>
                  </span>
                  </div>
                  <div class="up-info">
                  <a class="v-author" href="//space.bilibili.com/98552823" target="_blank" title="15659094905">15659094905</a>
                  <span class="v-date" title="日期">2017-07-05 07:00</span>
                              </div>
                          </div>
                       </div>
                    </li>
                  <li>
                  <div class="l-item">
                  <div class="l-l">
                  <a href="/video/av11895509/" target="_blank" class="preview cover-preview" data-cover-loaded="true">
                  <img data-img="" src="//i1.hdslb.com/bfs/archive/5d972bf1aab91b91f9182b53dea61fc42f2632b4.jpg@.webp" loaded="loaded" alt="斗鱼3DM 总监的预告时刻【铁拳7】【唱歌】【邮件】VPN在今年之内必然消失！" style="opacity: 1;">
                  <div class="back">
                  <div style="background-image: url(&quot;//i3.hdslb.com/bfs/videoshot/19640210.jpg?vsign=565de8ca61402ad9066b2497b616d56322ef0190&amp;ver=66103511&quot;); background-size: 1140px; background-position: 0px -64.125px;">
                  </div>
                  </div>
                  <div class="fore">
                  <span data-loading="false">
                  </span>
                  <div class="bar">
                  <div style="width: 17.02%;">
                  </div>
                  </div>
                  </div>
                  <div class="x">
                  <b class="x2">174:48</b>
                  </div>
                  </a>
                  <i class="watch-later" aid="11895509">
                  </i>
                  <a href="/video/av11895509/" target="_blank" class="title" title="斗鱼3DM 总监的预告时刻【铁拳7】【唱歌】【邮件】VPN在今年之内必然消失！">斗鱼3DM 总监的预告时刻【铁拳7】【唱歌】【邮件】VPN在今年之内必然消失！</a>
                  </div>
                  <div class="l-r">
                  <div class="v-desc">斗鱼不死鸟3DM
                                  斗鱼3DM 总监的预告时刻【铁拳7】【唱歌】【邮件】VPN在今年之内必然消失！
                                    如果说VPN在今年之内消失，而且Steam又被墙掉的话，那么这就意味着Steam即将要在真正意义上在国内被封掉了呀！</div><div class="v-info"><span class="v-info-i gk"><i class="b-icon b-icon-v-play" title="观看"></i><span number="29">29</span></span><span class="v-info-i dm"><i class="b-icon b-icon-v-dm" title="弹幕"></i><span number="2">2</span></span><span class="v-info-i sc"><i class="b-icon b-icon-v-fav" title="收藏"></i><span number="0">0</span></span></div><div class="up-info"><a class="v-author" href="//space.bilibili.com/18835531" target="_blank" title="tangzhyuz">tangzhyuz</a><span class="v-date" title="日期">2017-07-05 06:19</span></div></div></div></li><li><div class="l-item"><div class="l-l"><a href="/video/av11896499/" target="_blank" class="preview cover-preview"><img data-img="" src="//i1.hdslb.com/bfs/archive/0a24f23509e517046d3dd74b645c53b73833981c.jpg@.webp" loaded="loaded" alt="黄金太阳2最终BOSS战" style="opacity: 1;"><div class="back"><div></div></div><div class="fore"><span></span><div class="bar"><div></div></div></div><div class="x"><b class="x2">9:29</b></div></a><i class="watch-later" aid="11896499"></i><a href="/video/av11896499/" target="_blank" class="title" title="黄金太阳2最终BOSS战">黄金太阳2最终BOSS战</a></div><div class="l-r"><div class="v-desc">最终BOSS三头龙</div><div class="v-info"><span class="v-info-i gk"><i class="b-icon b-icon-v-play" title="观看"></i><span number="5">5</span></span><span class="v-info-i dm"><i class="b-icon b-icon-v-dm" title="弹幕"></i><span number="0">0</span></span><span class="v-info-i sc"><i class="b-icon b-icon-v-fav" title="收藏"></i><span number="0">0</span></span></div><div class="up-info"><a class="v-author" href="//space.bilibili.com/63070214" target="_blank" title="小泥巴吧">小泥巴吧</a><span class="v-date" title="日期">2017-07-05 05:48</span></div></div></div></li><li><div class="l-item"><div class="l-l"><a href="/video/av11895634/" target="_blank" class="preview cover-preview"><img data-img="" src="//i2.hdslb.com/bfs/archive/a933a61d4a4dd241660506e0d274810ee2e4adc1.png@.webp" loaded="loaded" alt="异域奇兵45分钟最新演示视频(PS4, XBOX ONE, PC) 2017" style="opacity: 1;"><div class="back"><div></div></div><div class="fore"><span></span><div class="bar"><div></div></div></div><div class="x"><b class="x2">45:57</b></div></a><i class="watch-later" aid="11895634"></i><a href="/video/av11895634/" target="_blank" class="title" title="异域奇兵45分钟最新演示视频(PS4, XBOX ONE, PC) 2017">异域奇兵45分钟最新演示视频(PS4, XBOX ONE, PC) 2017</a></div><div class="l-r"><div class="v-desc">油管搬运地址：https://www.youtube.com/watch?v=xDrQdpoQmQc&amp;t=0s
                     STRANGE BRIGADE 45 Minutes of New Gameplay (PS4, XBOX ONE, PC) 2017
                                 视频源作者：Play4Games

                             建议大家到原视频网站给视频点个赞！</div>
                             <div class="v-info">
                             <span class="v-info-i gk">
                             <i class="b-icon b-icon-v-play" title="观看">
                             </i>
                             <span number="33">33</span>
                             </span>
                             <span class="v-info-i dm">
                             <i class="b-icon b-icon-v-dm" title="弹幕">
                             </i>
                             <span number="0">0</span>
                             </span>
                             <span class="v-info-i sc">
                             <i class="b-icon b-icon-v-fav" title="收藏">
                             </i>
                             <span number="3">3</span>
                             </span>
                             </div>
                             <div class="up-info">
                             <a class="v-author" href="//space.bilibili.com/5111239" target="_blank" title="勤劳的小六">勤劳的小六</a>
                             <span class="v-date" title="日期">2017-07-05 05:03</span>
                             </div>
                             </div>
                             </div>
                             </li>
                             <li>
                             <div class="l-item">
                             <div class="l-l">
                             <a href="/video/av11894237/" target="_blank" class="preview cover-preview">
                             <img data-img="" src="//i2.hdslb.com/bfs/archive/78c313ea5854063a3bb8fd866c9f64828d5fa29f.jpg@.webp" loaded="loaded" alt="看门狗片尾剪辑震撼" style="opacity: 1;">
                             <div class="back">
                             <div>
                             </div>
                             </div>
                             <div class="fore">
                             <span>
                             </span>
                             <div class="bar">
                             <div>
                           </div>
                          </div>
                         </div>
                       <div class="x">
                       <b class="x2">2:28</b>
                       </div>
                       </a>
                       <i class="watch-later" aid="11894237">
                       </i>
                       <a href="/video/av11894237/" target="_blank" class="title" title="看门狗片尾剪辑震撼">看门狗片尾剪辑震撼</a>
                       </div>
                       <div class="l-r">
                       <div class="v-desc">第一次投稿 新人</div>
                       <div class="v-info">
                       <span class="v-info-i gk">
                       <i class="b-icon b-icon-v-play" title="观看">
                       </i>
                       <span number="3">3</span>
                       </span>
                       <span class="v-info-i dm">
                       <i class="b-icon b-icon-v-dm" title="弹幕">
                       </i>
                       <span number="0">0</span>
                       </span>
                       <span class="v-info-i sc">
                       <i class="b-icon b-icon-v-fav" title="收藏">
                       </i>
                       <span number="0">0</span>
                       </span>
                       </div>
                       <div class="up-info">
                       <a class="v-author" href="//space.bilibili.com/4545536" target="_blank" title="PS4小杰">PS4小杰</a>
                       <span class="v-date" title="日期">2017-07-05 03:54</span>
                       </div>
                      </div>
                     </div>
                    </li>
                   <li>
                   <div class="l-item">
                   <div class="l-l">
                   <a href="/video/av11893682/" target="_blank" class="preview cover-preview">
                   <img data-img="" src="//i1.hdslb.com/bfs/archive/4431e1025bac76c5364a5e71e94a86876cb642fd.jpg@.webp" loaded="loaded" alt="【灰色：幻影扳机 Vol.2】结尾Vol.3 PV" style="opacity: 1;">
                   <div class="back">
                   <div>
                   </div>
                   </div>
                   <div class="fore">
                   <span>
                   </span>
                   <div class="bar">
                   <div>
                   </div>
                   </div>
                   </div>
                   <div class="x">
                   <b class="x2">1:48</b>
                   </div>
                   </a>
                   <i class="watch-later" aid="11893682">
                   </i>
                   <a href="/video/av11893682/" target="_blank" class="title" title="【灰色：幻影扳机 Vol.2】结尾Vol.3 PV">【灰色：幻影扳机 Vol.2】结尾Vol.3 PV</a>
                   </div>
                   <div class="l-r">
                   <div class="v-desc">GRISAIA Phantom Trigger（グリザイア ファントムトリガー） Vol.2
               RT</div>
               <div class="v-info">
               <span class="v-info-i gk">
               <i class="b-icon b-icon-v-play" title="观看">
               </i>
               <span number="0">0</span>
               </span>
               <span class="v-info-i dm">
               <i class="b-icon b-icon-v-dm" title="弹幕">
               </i>
               <span number="0">0</span>
               </span>
               <span class="v-info-i sc">
               <i class="b-icon b-icon-v-fav" title="收藏">
               </i>
               <span number="0">0</span>
               </span>
               </div>
               <div class="up-info">
               <a class="v-author" href="//space.bilibili.com/10307072" target="_blank" title="fdtfbn">fdtfbn</a>
               <span class="v-date" title="日期">2017-07-05 03:23</span>
               </div>
              </div>
              </div>
              </li>
              <li>
              <div class="l-item">
              <div class="l-l">
              <a href="/video/av11891768/" target="_blank" class="preview cover-preview">
              <img data-img="" src="//i0.hdslb.com/bfs/archive/972ff966b020527a0c4ced891f8c9d4c6650232e.jpg@.webp" loaded="loaded" alt="伪娘粥粥直播漏沟" style="opacity: 1;">
              <div class="back">
              <div>
              </div>
              </div>
              <div class="fore">
              <span>
              </span>
              <div class="bar">
              <div>
              </div>
              </div>
              </div>
              <div class="x">
              <b class="x2">16:08</b>
              </div>
              </a>
              <i class="watch-later" aid="11891768">
              </i>
              <a href="/video/av11891768/" target="_blank" class="title" title="伪娘粥粥直播漏沟">伪娘粥粥直播漏沟</a>
              </div>
              <div class="l-r">
              <div class="v-desc">斗鱼直播间693676   伪娘粥粥直播录像  喜欢的可以关注up主  会不定时发布直播录像</div>
              <div class="v-info">
              <span class="v-info-i gk">
              <i class="b-icon b-icon-v-play" title="观看">
              </i>
              <span number="148">148</span>
              </span>
              <span class="v-info-i dm">
              <i class="b-icon b-icon-v-dm" title="弹幕"></i>
              <span number="1">1</span>
              </span>
              <span class="v-info-i sc">
              <i class="b-icon b-icon-v-fav" title="收藏"></i>
              <span number="2">2</span>
              </span>
              </div>
              <div class="up-info">
              <a class="v-author" href="//space.bilibili.com/34418265" target="_blank" title="六个蟠桃TTT">六个蟠桃TTT</a>
              <span class="v-date" title="日期">2017-07-05 02:13</span>
              </div>
              </div>
              </div>
              </li>
              <li>
              <div class="l-item">
              <div class="l-l">
              <a href="/video/av11891339/" target="_blank" class="preview cover-preview">
              <img data-img="" src="//i1.hdslb.com/bfs/archive/eaf35e9507cf620014629d73a8c852f40c7e02e3.jpg@.webp" loaded="loaded" alt="火影忍者小李教学。" style="opacity: 1;">
              <div class="back">
              <div>
              </div>
              </div>
              <div class="fore">
              <span>
              </span>
              <div class="bar">
              <div>
              </div>
              </div>
              </div>
              <div class="x">
              <b class="x2">12:42</b>
              </div>
              </a>
              <i class="watch-later" aid="11891339">
              </i>
              <a href="/video/av11891339/" target="_blank" class="title" title="火影忍者小李教学。">火影忍者小李教学。</a>
              </div>
              <div class="l-r">
              <div class="v-desc">啦啦啦</div>
              <div class="v-info">
              <span class="v-info-i gk">
              <i class="b-icon b-icon-v-play" title="观看">
              </i>
              <span number="7">7</span>
              </span>
              <span class="v-info-i dm">
              <i class="b-icon b-icon-v-dm" title="弹幕">
              </i>
              <span number="2">2</span>
              </span>
              <span class="v-info-i sc">
              <i class="b-icon b-icon-v-fav" title="收藏">
              </i>
              <span number="0">0</span>
              </span>
              </div>
              <div class="up-info">
              <a class="v-author" href="//space.bilibili.com/26669865" target="_blank" title="天辰c">天辰c</a>
              <span class="v-date" title="日期">2017-07-05 01:43</span>
              </div>
              </div>
              </div>
              </li>
             <li>
             <div class="l-item">
             <div class="l-l">
             <a href="/video/av11890911/" target="_blank" class="preview cover-preview">
             <img data-img="" src="//i0.hdslb.com/bfs/archive/088f2142906885b2c04b2b533fdd705f36f42b89.jpg@.webp" loaded="loaded" alt="怪蜀黍带小萝莉跳舞（还是原来的舞蹈模仿最近很火的up做的视频，不准笑咱们啊）" style="opacity: 1;">
             <div class="back">
             <div>
             </div>
             </div>
             <div class="fore">
             <span>
             </span>
             <div class="bar">
             <div>
             </div>
             </div>
             </div>
             <div class="x">
             <b class="x2">5:53</b>
             </div>
             </a>
             <i class="watch-later" aid="11890911">
             </i>
             <a href="/video/av11890911/" target="_blank" class="title" title="怪蜀黍带小萝莉跳舞（还是原来的舞蹈模仿最近很火的up做的视频，不准笑咱们啊）">怪蜀黍带小萝莉跳舞（还是原来的舞蹈模仿最近很火的up做的视频，不准笑咱们啊）</a>
             </div>
             <div class="l-r">
             <div class="v-desc">这里是老骚啊</div>
             <div class="v-info">
             <span class="v-info-i gk">
             <i class="b-icon b-icon-v-play" title="观看">
             </i>
             <span number="5">5</span>
             </span>
             <span class="v-info-i dm">
             <i class="b-icon b-icon-v-dm" title="弹幕">
             </i>
             <span number="0">0</span>
             </span>
             <span class="v-info-i sc">
             <i class="b-icon b-icon-v-fav" title="收藏">
             </i>
             <span number="2">2</span>
             </span>
             </div>
             <div class="up-info">
             <a class="v-author" href="//space.bilibili.com/10795813" target="_blank" title="血以荐轩辕">血以荐轩辕</a>
             <span class="v-date" title="日期">2017-07-05 01:38</span>
             </div>
             </div>
             </div>
             </li>
            <li>
            <div class="l-item">
            <div class="l-l">
            <a href="/video/av11890631/" target="_blank" class="preview cover-preview">
            <img data-img="" src="//i2.hdslb.com/bfs/archive/ab1d6180ca98bcbfa8411bdcd42033e758cb8343.jpg@.webp" loaded="loaded" alt="120株植物vs僵尸第六期" style="opacity: 1;">
            <div class="back">
            <div>
            </div>
            </div>
            <div class="fore">
            <span>
            </span>
            <div class="bar">
            <div>
            </div>
            </div>
            </div>
            <div class="x">
            <b class="x2">5:16</b>
            </div>
            </a>
            <i class="watch-later" aid="11890631">
            </i>
            <a href="/video/av11890631/" target="_blank" class="title" title="120株植物vs僵尸第六期">120株植物vs僵尸第六期</a>
            </div>
            <div class="l-r">
            <div class="v-desc">新人up求关注，求鼓励!
                           您的支持就是小弟我最大的动力！
                               本视频演示非最佳打发！
                           如有建议请私信或在评论区评论！
                         感谢您的配合！
              </div>
            <div class="v-info">
            <span class="v-info-i gk">
            <i class="b-icon b-icon-v-play" title="观看">
            </i>
            <span number="13">13</span>
            </span>
            <span class="v-info-i dm">
            <i class="b-icon b-icon-v-dm" title="弹幕">
            </i>
            <span number="0">0</span>
            </span>
            <span class="v-info-i sc">
            <i class="b-icon b-icon-v-fav" title="收藏"></i>
            <span number="0">0</span>
            </span>
            </div>
            <div class="up-info">
            <a class="v-author" href="//space.bilibili.com/73256351" target="_blank" title="一人我比利醉">一人我比利醉</a>
            <span class="v-date" title="日期">2017-07-05 01:12</span>
            </div>
            </div>
            </div>
            </li>
            <li>
            <div class="l-item">
            <div class="l-l">
            <a href="/video/av11889954/" target="_blank" class="preview cover-preview">
            <img data-img="" src="//i2.hdslb.com/bfs/archive/935dcfeb2aeab31351dc539879da3daa75317808.jpg@.webp" loaded="loaded" alt="《使命召唤14：二战》剪辑" style="opacity: 1;">
            <div class="back">
            <div>
            </div>
            </div>
            <div class="fore">
            <span>
            </span>
            <div class="bar"><div>
            </div>
            </div>
            </div>
            <div class="x">
            <b class="x2">1:16</b>
            </div>
            </a>
            <i class="watch-later" aid="11889954">
            </i>
            <a href="/video/av11889954/" target="_blank" class="title" title="《使命召唤14：二战》剪辑">《使命召唤14：二战》剪辑</a>
            </div>
            <div class="l-r">
            <div class="v-desc">BGM：Glitter And Gold-Barns Courtney</div>
            <div class="v-info">
            <span class="v-info-i gk">
            <i class="b-icon b-icon-v-play" title="观看">
            </i>
            <span number="21">21</span>
            </span>
            <span class="v-info-i dm">
            <i class="b-icon b-icon-v-dm" title="弹幕">
            </i>
            <span number="1">1</span>
            </span>
            <span class="v-info-i sc">
            <i class="b-icon b-icon-v-fav" title="收藏"></i>
            <span number="0">0</span>
            </span>
            </div>
            <div class="up-info">
            <a class="v-author" href="//space.bilibili.com/3517974" target="_blank" title="早餐Yvan">早餐Yvan</a>
            <span class="v-date" title="日期">2017-07-05 00:45</span>
            </div>
            </div>
            </div>
            </li>
            <li>
            <div class="l-item">
            <div class="l-l">
            <a href="/video/av11889810/" target="_blank" class="preview cover-preview">
            <img data-img="" src="//i2.hdslb.com/bfs/archive/dc58439163f8012492757958d919d6df51d3e093.jpg@.webp" loaded="loaded" alt="《茶杯头大冒险》(Cuphead) 的动画制作过程" style="opacity: 1;">
            <div class="back">
            <div>
            </div>
            </div>
            <div class="fore">
            <span>
            </span>
            <div class="bar">
            <div>
            </div>
            </div>
            </div>
            <div class="x">
            <b class="x2">2:34</b>
            </div>
            </a>
            <i class="watch-later" aid="11889810">
            </i>
            <a href="/video/av11889810/" target="_blank" class="title" title="《茶杯头大冒险》(Cuphead) 的动画制作过程">《茶杯头大冒险》(Cuphead) 的动画制作过程</a>
            </div>
            <div class="l-r">
            <div class="v-desc">https://www.youtube.com/watch?v=CXpvF9Z2gG8
                         《茶杯头大冒险》的动画制作过程
               </div>
            <div class="v-info">
            <span class="v-info-i gk">
            <i class="b-icon b-icon-v-play" title="观看">
            </i>
            <span number="8">8</span>
            </span>
            <span class="v-info-i dm">
            <i class="b-icon b-icon-v-dm" title="弹幕">
            </i>
            <span number="0">0</span>
            </span>
            <span class="v-info-i sc">
            <i class="b-icon b-icon-v-fav" title="收藏">
            </i>
            <span number="0">0</span>
            </span>
            </div>
            <div class="up-info">
            <a class="v-author" href="//space.bilibili.com/179454" target="_blank" title="micromacer">micromacer</a>
            <span class="v-date" title="日期">2017-07-05 00:36</span>
            </div>
            </div>
            </div>
            </li>
            <li>
            <div class="l-item">
            <div class="l-l">
            <a href="/video/av11883892/" target="_blank" class="preview cover-preview">
            <img data-img="" src="//i0.hdslb.com/bfs/archive/107384254cc0dc239aad0735b2f7ead011015299.jpg@.webp" loaded="loaded" alt="WhosYourDaddy|碳熏儿子！你怎么这么黑！你不是我亲生的~" style="opacity: 1;">
            <div class="back">
            <div>
            </div>
            </div>
            <div class="fore">
            <span>
            </span>
            <div class="bar">
            <div>
            </div>
            </div>
            </div>
            <div class="x">
            <b class="x2">3:38</b>
            </div>
            </a>
            <i class="watch-later" aid="11883892">
            </i>
            <a href="/video/av11883892/" target="_blank" class="title" title="WhosYourDaddy|碳熏儿子！你怎么这么黑！你不是我亲生的~">WhosYourDaddy|碳熏儿子！你怎么这么黑！你不是我亲生的~</a>
            </div>
            <div class="l-r">
            <div class="v-desc">喜欢就订阅吧！</div>
            <div class="v-info">
            <span class="v-info-i gk">
            <i class="b-icon b-icon-v-play" title="观看">
            </i>
            <span number="1">1</span>
            </span>
            <span class="v-info-i dm">
            <i class="b-icon b-icon-v-dm" title="弹幕">
            </i>
            <span number="0">0</span>
            </span>
            <span class="v-info-i sc">
            <i class="b-icon b-icon-v-fav" title="收藏">
            </i>
            <span number="0">0</span>
            </span>
            </div>
            <div class="up-info">
            <a class="v-author" href="//space.bilibili.com/86638912" target="_blank" title="冰陌_NeGro">冰陌_NeGro</a>
            <span class="v-date" title="日期">2017-07-04 20:19</span>
            </div>
            </div>
            </div>
            </li>
            <li>
            <div class="l-item">
            <div class="l-l">
            <a href="/video/av11882852/" target="_blank" class="preview cover-preview">
            <img data-img="" src="//i0.hdslb.com/bfs/archive/40c842f1c4e3a520b0a85c16dfa3a820caed9b15.jpg@.webp" loaded="loaded" alt="某咪sa我的世界《虚无世界》P2：鬼门关星跳水立方 搞笑minecraft游戏解说" style="opacity: 1;">
            <div class="back">
            <div>
            </div>
            </div>
            <div class="fore">
            <span>
            </span>
            <div class="bar">
            <div>
            </div>
            </div>
            </div>
            <div class="x">
            <b class="x2">33:23</b>
            </div>
            </a>
            <i class="watch-later" aid="11882852">
            </i>
            <a href="/video/av11882852/" target="_blank" class="title" title="某咪sa我的世界《虚无世界》P2：鬼门关星跳水立方 搞笑minecraft游戏解说">某咪sa我的世界《虚无世界》P2：鬼门关星跳水立方 搞笑minecraft游戏解说</a>
            </div>
            <div class="l-r">
            <div class="v-desc">某咪sa我的世界《虚无世界》P2：鬼门关星跳水立方 搞笑minecraft游戏解说</div>
            <div class="v-info">
            <span class="v-info-i gk">
            <i class="b-icon b-icon-v-play" title="观看">
            </i>
            <span number="14">14</span>
            </span>
            <span class="v-info-i dm">
            <i class="b-icon b-icon-v-dm" title="弹幕">
            </i>
            <span number="0">0</span>
            </span>
            <span class="v-info-i sc">
            <i class="b-icon b-icon-v-fav" title="收藏">
            </i>
            <span number="0">0</span>
            </span>
            </div>
            <div class="up-info">
            <a class="v-author" href="//space.bilibili.com/10340977" target="_blank" title="某咪sa">某咪sa</a>
            <span class="v-date" title="日期">2017-07-04 19:40</span>
            </div>
            </div>
            </div>
            </li>
            <li>
            <div class="l-item">
            <div class="l-l">
            <a href="/video/av11882932/" target="_blank" class="preview cover-preview">
            <div class="img-loading" style="height: 100%; background: url(&quot;//static.hdslb.com/images/v3images/img_loading.png&quot;) 50% 50% no-repeat rgb(245, 245, 245);">
            <img data-img="http://i0.hdslb.com/bfs/archive/6917863dcc773b41be48a2401de04423c1b701b0.png" alt="【GameSpot】六月公布的最让人惊喜的10款游戏" src="//static.hdslb.com/images/transparent.gif">
            </div>
            <div class="back">
            <div>
            </div>
            </div>
            <div class="fore">
            <span>
            </span>
            <div class="bar">
            <div>
            </div>
            </div>
            </div>
            <div class="x">
            <b class="x2">4:44</b>
            </div>
            </a>
            <i class="watch-later" aid="11882932">
            </i>
            <a href="/video/av11882932/" target="_blank" class="title" title="【GameSpot】六月公布的最让人惊喜的10款游戏">【GameSpot】六月公布的最让人惊喜的10款游戏</a>
            </div>
            <div class="l-r">
            <div class="v-desc">六月的E3展上新公布了很多游戏，GameSpot 评选出了其中最让人激动的10款
                      （虽然如果让我评的话，我可能会选废渣7和恶灵附身2）

                     https://www.youtube.com/watch?v=DfeUPUG2iDg&amp;t=210s
                           无字幕
                             来自GameSpot的油管官方频道
                                原名：Assassin's Creed: Origins, Metro Exodus, and the Most Surprising Games Announced in June 2017</div><div class="v-info"><span class="v-info-i gk"><i class="b-icon b-icon-v-play" title="观看"></i><span number="21">21</span></span><span class="v-info-i dm"><i class="b-icon b-icon-v-dm" title="弹幕"></i><span number="0">0</span></span><span class="v-info-i sc"><i class="b-icon b-icon-v-fav" title="收藏"></i><span number="0">0</span></span></div><div class="up-info"><a class="v-author" href="//space.bilibili.com/16134732" target="_blank" title="ThomasFisher">ThomasFisher</a><span class="v-date" title="日期">2017-07-04 19:34</span></div></div></div></li><li><div class="l-item"><div class="l-l"><a href="/video/av11882287/" target="_blank" class="preview cover-preview"><div class="img-loading" style="height: 100%; background: url(&quot;//static.hdslb.com/images/v3images/img_loading.png&quot;) 50% 50% no-repeat rgb(245, 245, 245);"><img data-img="http://i0.hdslb.com/bfs/archive/bdfac116521fd3ec99c727c49572328ba73cec6f.jpg" alt="中文-1小时11分育碧E3 2017全程发布会(刺客信条起源、孤岛惊魂5和超越善恶2等游戏)@熊猫游戏字幕组" src="//static.hdslb.com/images/transparent.gif"></div><div class="back"><div></div></div><div class="fore"><span></span><div class="bar"><div></div></div></div><div class="x"><b class="x2">71:29</b></div></a><i class="watch-later" aid="11882287"></i><a href="/video/av11882287/" target="_blank" class="title" title="中文-1小时11分育碧E3 2017全程发布会(刺客信条起源、孤岛惊魂5和超越善恶2等游戏)@熊猫游戏字幕组">中文-1小时11分育碧E3 2017全程发布会(刺客信条起源、孤岛惊魂5和超越善恶2等游戏)@熊猫游戏字幕组</a></div><div class="l-r"><div class="v-desc">喜欢请关注投币收藏 谢谢：） av11290420 刺客信条起源埃及城市旅游宣传片
                av11286422 飙酷车神2(the crew 2)-属于你的冠军人生巅峰之路
                av11286806 育碧Transference细思极恐野心VR计划
                av11287070 育碧新作Skull and Bones宣传片
                  av11287389 超越善恶2宣传片
                  av11286169 孤岛惊魂5-天赐恩宠
               </div>
               <div class="v-info">
               <span class="v-info-i gk">
               <i class="b-icon b-icon-v-play" title="观看">
               </i>
               <span number="1511">1511</span>
               </span>
               <span class="v-info-i dm">
               <i class="b-icon b-icon-v-dm" title="弹幕">
               </i>
               <span number="90">90</span>
               </span>
               <span class="v-info-i sc">
               <i class="b-icon b-icon-v-fav" title="收藏">
               </i>
               <span number="104">104</span>
               </span>
               </div>
               <div class="up-info">
               <a class="v-author" href="//space.bilibili.com/31954627" target="_blank" title="熊猫游戏字幕组">熊猫游戏字幕组</a>
               <span class="v-date" title="日期">2017-07-04 19:34</span>
               </div>
               </div>
               </div>
               </li>
               <li>
               <div class="l-item">
               <div class="l-l">
               <a href="/video/av11882032/" target="_blank" class="preview cover-preview">
               <div class="img-loading" style="height: 100%; background: url(&quot;//static.hdslb.com/images/v3images/img_loading.png&quot;) 50% 50% no-repeat rgb(245, 245, 245);">
               <img data-img="http://i2.hdslb.com/bfs/archive/d0cc0695f6954a4031ce8f852e6acb35536da1d8.jpg" alt="【Bighole】詹皇在2K中的进化史 [NBA 2K4 - NBA 2K17]" src="//static.hdslb.com/images/transparent.gif">
               </div>
               <div class="back">
               <div>
               </div>
               </div>
               <div class="fore">
               <span>
               </span>
               <div class="bar">
               <div>
               </div>
               </div>
               </div>
               <div class="x">
               <b class="x2">10:44</b>
               </div>
               </a>
               <i class="watch-later" aid="11882032">
               </i>
               <a href="/video/av11882032/" target="_blank" class="title" title="【Bighole】詹皇在2K中的进化史 [NBA 2K4 - NBA 2K17]">【Bighole】詹皇在2K中的进化史 [NBA 2K4 - NBA 2K17]</a>
               </div>
               <div class="l-r">
               <div class="v-desc">詹皇在2K中的进化史</div>
               <div class="v-info">
               <span class="v-info-i gk">
               <i class="b-icon b-icon-v-play" title="观看">
               </i>
               <span number="27">27</span>
               </span>
               <span class="v-info-i dm">
               <i class="b-icon b-icon-v-dm" title="弹幕">
               </i>
               <span number="0">0</span>
               </span>
               <span class="v-info-i sc">
               <i class="b-icon b-icon-v-fav" title="收藏">
               </i>
               <span number="0">0</span>
               </span>
               </div>
               <div class="up-info">
               <a class="v-author" href="//space.bilibili.com/95306136" target="_blank" title="Bighole深坑">Bighole深坑</a>
               <span class="v-date" title="日期">2017-07-04 19:05</span>
               </div>
               </div>
               </div>
               </li>
               <li>
               <div class="l-item">
               <div class="l-l">
               <a href="/video/av11881490/" target="_blank" class="preview cover-preview">
               <div class="img-loading" style="height: 100%; background: url(&quot;//static.hdslb.com/images/v3images/img_loading.png&quot;) 50% 50% no-repeat rgb(245, 245, 245);">
               <img data-img="http://i0.hdslb.com/bfs/archive/2c6d1b05667f1bb6856d80706741ad60e8736022.jpg" alt="【某咪sa】《十三号星期五》翻车少女致歉队友 但贼怂少女还是活了下来 单机沙盒游戏搞笑解说" src="//static.hdslb.com/images/transparent.gif">
               </div>
              <div class="back">
              <div>
              </div>
              </div>
              <div class="fore">
              <span>
              </span>
              <div class="bar">
              <div>
              </div>
              </div>
              </div>
              <div class="x">
              <b class="x2">20:46</b>
              </div>
              </a>
              <i class="watch-later" aid="11881490">
              </i>
              <a href="/video/av11881490/" target="_blank" class="title" title="【某咪sa】《十三号星期五》翻车少女致歉队友 但贼怂少女还是活了下来 单机沙盒游戏搞笑解说">【某咪sa】《十三号星期五》翻车少女致歉队友 但贼怂少女还是活了下来 单机沙盒游戏搞笑解说</a>
              </div>
              <div class="l-r">
              <div class="v-desc">【某咪sa】《十三号星期五》翻车少女致歉队友 但贼怂少女还是活了下来 单机沙盒游戏搞笑解说.mp4</div>
              <div class="v-info">
              <span class="v-info-i gk">
              <i class="b-icon b-icon-v-play" title="观看">
              </i>
              <span number="51">51</span>
              </span>
              <span class="v-info-i dm">
              <i class="b-icon b-icon-v-dm" title="弹幕">
              </i>
              <span number="2">2</span>
              </span>
              <span class="v-info-i sc">
              <i class="b-icon b-icon-v-fav" title="收藏">
              </i>
              <span number="0">0</span>
              </span>
              </div>
              <div class="up-info">
              <a class="v-author" href="//space.bilibili.com/10340977" target="_blank" title="某咪sa">某咪sa</a>
              <span class="v-date" title="日期">2017-07-04 18:59</span>
              </div>
              </div>
              </div>
              </li>
              </ul>
              </div>
              <div class="pagelistbox">
              <a class="p active">1</a>
              <a class="p" href="javascript:;" page="2">2</a>
              <a class="p" href="javascript:;" page="3">3</a>
              <a class="p" href="javascript:;" page="4">4</a>
              <a class="p" href="javascript:;" page="5">5</a>
              <a class="p" href="javascript:;" page="6">6</a>
              <a class="p" href="javascript:;" page="7">7</a>
              <strong>...</strong>
              <a class="p endPage" href="javascript:;" page="1068">1068</a>
              <a class="p nextPage" href="javascript:;" page="2">下一页</a>
              <div class="custom-right">
              <span class="result custom-right-inner">共 1068 页/ 21341 个 ，跳至</span>
              <input type="text" class="b-input custompage custom-right-inner">
              <span class="custom-right-inner">页</span>
              </div>
              </div>
                </div>
                <script type="text/javascript">var lastpinyin = '';var order = 'default';var tid = '17';</script>
            </div>
            <!--左-->

                                
                    </div>
    </div>
</div>

<script src="//static.hdslb.com/js/core-v5/page.list_tag.js" type="text/javascript"></script>
<script type="text/javascript" src="//static.hdslb.com/images/js/jquery.ui.datepicker-zh-CN.js"></script>
    </div>
    

<script type="text/javascript">loadLoginStatus();</script>
<script type="text/javascript" src="//www.bilibili.com/online.js"></script>
<div style="display:none;">
    <script type="text/javascript">
    $(function () {
        $.ajax({url: '//data.bilibili.com/rec.js', cache: true, dataType: 'script'});
        $('<scr' + 'ipt type="text/javascript" src="//static.hdslb.com/js/bfd.js" charset="UTF-8"></scri' + 'pt>').appendTo('body');
//        $('<scr' + 'ipt type="text/javascript" src="//s11.cnzz.com/stat.php?id=2724999&web_id=2724999" charset="UTF-8"></scri' + 'pt>').appendTo('body');
        $('<scr' + 'ipt type="text/javascript" src="//tajs.qq.com/stats?sId=9156259" charset="UTF-8"></scri' + 'pt>').appendTo('body');
    });
    </script>

    <script type="text/javascript">
      //日志上报
      window.spmReportData = {}
      window.reportConfig = {
        sample : 1,
        scrollTracker: true,
        msgObjects : 'spmReportData'
      }
      var reportScript = document.createElement('script')
      reportScript.src = "//s1.hdslb.com/bfs/static/log/report/log-reporter.js"
      document.getElementsByTagName('body')[0].appendChild(reportScript)
    </script>

    <script>
        var cnzz_s_tag = document.createElement('script');
        cnzz_s_tag.type = 'text/javascript';
        cnzz_s_tag.async = true;
        cnzz_s_tag.charset = "utf-8";
        cnzz_s_tag.src = "https://s11.cnzz.com/stat.php?id=2724999&web_id=2724999&async=1";
        var root_s = document.getElementsByTagName('script')[0];
        root_s.parentNode.insertBefore(cnzz_s_tag, root_s);
    </script>

</div><script src="//s1.hdslb.com/bfs/static/log/report/log-reporter.js"></script>


     <div class="index-nav sub" id="index_nav" style="opacity: 0; display: none; top: 770px; left: 1128.5px; right: auto;"><div class="border"></div><div class="nav-list"><div class="pointer-block"></div></div><div class="n-i gotop sub"><div class="s-line"></div><div class="btn_gotop" title="返回顶部"></div></div></div><ul class="bilibili-suggest" style="top: 154px; left: 1259.5px; display: none; min-width: 268px; max-width: 360px;"></ul><div class="sogoutip" style="z-index: 2147483645; visibility: hidden; display: none;"></div><div class="sogoubottom" id="sougou_bottom" style="display: none;"></div><div id="ext_stophi" style="z-index: 2147483647;"><div class="extnoticebg"></div><div class="extnotice"><h2>关闭提示 <a href="#" title="关闭提示" id="closenotice" class="closenotice">关闭</a></h2><p id="sogouconfirmtxt"></p>  <a id="sogouconfirm" href="#" class="extconfirm">确 认</a> <a id="sogoucancel" href="#" class="extconfirm">取 消</a></div></div><div id="ext_overlay" class="ext_overlayBG" style="display: none; z-index: 2147483646;"></div><iframe class="sogou_sugg_feedbackquan" frameborder="0" scrolling="no" src="http://ht.www.sogou.com/websearch/features/yun6.jsp?pid=sogou-brse-d2a452edff079ca6&amp;w=1920&amp;v=7421&amp;st=1499218598611&amp;od=6299&amp;ls=1499152949433&amp;lc=&amp;lk=1498785969907&amp;sd=26&amp;cd=0&amp;kd=0&amp;u=1466081139660805&amp;y=0F90068E4C08F151210110CF9791D017&amp;query=%E5%8D%95%E6%9C%BA%E6%B8%B8%E6%88%8F%20-%20%E5%93%94%E5%93%A9%E5%93%94%E5%93%A9%20(%E3%82%9C-%E3%82%9C)%E3%81%A4%E3%83%AD%20%E5%B9%B2%E6%9D%AF~-bilibili|http%3A%2F%2Fwww.bilibili.com%2Fvideo%2Fvideogame-1.html&amp;r=http%3A%2F%2Fwww.bilibili.com%2Fvideo%2Fgame.html" style="border: none; display: none; height: 84px; width: 100%; z-index: 2147483645; background: transparent;"></iframe>
    </body>
</html>
