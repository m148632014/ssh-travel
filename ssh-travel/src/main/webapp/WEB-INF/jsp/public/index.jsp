<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>MFM自由行，旅游攻略，旅游社交分享网站-MFM自由行</title>
			<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/core/footer.css" />
			<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/core/header.css"  />
			<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/core/container.css" />
			<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/core/slider.css"/>
			<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery.js"></script>
			<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/core/jquery.mfm.thumbslider.js" ></script>
			<script type="text/javascript">
			$(function() {
				//2个轮播条
				$(".show-slider").thumbslider();
				$(".small_slider").smallslider();
				
				//控制出现时机
				$(window).scroll(function() {
					var h = $(document).scrollTop();
					if(h>100){
						$(".foot-elephant").fadeIn();
					}else{
						$(".foot-elephant").fadeOut();
					}
				});
				//返回顶部
				$(".foot-elephant").click(function(e) {
					e.preventDefault();
					$('body,html').animate({scrollTop:0},800);  
 				});
				$(".head-user").mouseover(function (){
					$(".dropdown-user").css("display","block").mouseleave(function(){
						$(this).css("display","none");
					});
				});
			});
		</script>
	</head>
	<body>
		<!--slider-->
    	<div class="mfm-focus">
			<div class="show-slider">
					<ul class="show-image">
			             <li >
			                <a class="show-pic" target="_blank" href="/i/5321689.html"><img src="<%=request.getContextPath() %>/resources/css/core/img/index/indexpic1.jpeg"></a>
			                <a class="show-title dark" target="_blank" href="/i/5321689.html">
			                    <div class="date">
			                        <span class="day">11</span>/Nov.2015
			                    </div>
			                    <h3>蜂首游记：初秋，沉醉在川西</h3>
			                </a>
			                <p class="show-info">图片来自于<font color="#FF9900"><a target="_blank" href="/travel-scenic-spot/mafengwo/11942.html">川西</a></font>，此目的地共收藏了<font color="#FF9900"><a rel="nofollow" target="_blank" href="http://www.mafengwo.cn/photo/mdd/11942.html">276112</a></font>张<a target="_blank" href="/travel-scenic-spot/mafengwo/11942.html">川西</a>图片。本片由<font color="#FF9900"><a target="_blank" href="http://www.mafengwo.cn/u/33729037.html">兔牙丫丫</a></font>荣誉出品！</p>
			            </li>
			             <li style="display: none;">
			                <a class="show-pic" target="_blank" href="/i/3544833.html"><img src="<%=request.getContextPath() %>/resources/css/core/img/index/indexpic2.jpeg"></a>
			                <a class="show-title dark" target="_blank" href="/i/3544833.html">
			                    <div class="date">
			                        <span class="day">10</span>/Nov.2015
			                    </div>
			                    <h3>蜂首游记：帝国边缘的行走－克罗地亚十日掠影</h3>
			                </a>
			                <p class="show-info">图片来自于<font color="#FF9900"><a target="_blank" href="/travel-scenic-spot/mafengwo/11853.html">克罗地亚</a></font>，此目的地共收藏了<font color="#FF9900"><a rel="nofollow" target="_blank" href="http://www.mafengwo.cn/photo/mdd/11853.html">28582</a></font>张<a target="_blank" href="/travel-scenic-spot/mafengwo/11853.html">克罗地亚</a>图片。本片由<font color="#FF9900"><a target="_blank" href="http://www.mafengwo.cn/u/10911951.html">南山Nathan</a></font>荣誉出品！</p>
			            </li>
			               <li style="display: none;">
			                <a class="show-pic" target="_blank" href="/i/5318787.html"><img src="<%=request.getContextPath() %>/resources/css/core/img/index/indexpic3.jpeg"></a>
			                <a class="show-title dark" target="_blank" href="/i/5318787.html">
			                    <div class="date">
			                        <span class="day">9</span>/Nov.2015
			                    </div>
			                    <h3>蜂首游记：【烟雨千岛】告别人潮，过一个不慌不忙的假期</h3>
			                </a>
			                <p class="show-info">图片来自于<font color="#FF9900"><a target="_blank" href="/travel-scenic-spot/mafengwo/10445.html">千岛湖</a></font>，此目的地共收藏了<font color="#FF9900"><a rel="nofollow" target="_blank" href="http://www.mafengwo.cn/photo/mdd/10445.html">70606</a></font>张<a target="_blank" href="/travel-scenic-spot/mafengwo/10445.html">千岛湖</a>图片。本片由<font color="#FF9900"><a target="_blank" href="http://www.mafengwo.cn/u/5083740.html">七妙</a></font>荣誉出品！</p>
			            </li>
			                     <li style="display: none;">
			                <a class="show-pic" target="_blank" href="/i/3443295.html"><img src="<%=request.getContextPath() %>/resources/css/core/img/index/indexpic4.jpeg"></a>
			                <a class="show-title dark" target="_blank" href="/i/3443295.html">
			                    <div class="date">
			                        <span class="day">8</span>/Nov.2015
			                    </div>
			                    <h3>蜂首游记：追寻亚平宁文艺复兴 情迷意大利浪漫人文</h3>
			                </a>
			                <p class="show-info">图片来自于<font color="#FF9900"><a target="_blank" href="/travel-scenic-spot/mafengwo/10051.html">意大利</a></font>，此目的地共收藏了<font color="#FF9900"><a rel="nofollow" target="_blank" href="http://www.mafengwo.cn/photo/mdd/10051.html">373937</a></font>张<a target="_blank" href="/travel-scenic-spot/mafengwo/10051.html">意大利</a>图片。本片由<font color="#FF9900"><a target="_blank" href="http://www.mafengwo.cn/u/5112764.html">24帧的生活</a></font>荣誉出品！</p>
			            </li>
			                      <li style="display: none;">
			                <a class="show-pic" target="_blank" href="/i/5322245.html"><img src="<%=request.getContextPath() %>/resources/css/core/img/index/indexpic5.jpeg"></a>
			                <a class="show-title dark" target="_blank" href="/i/5322245.html">
			                    <div class="date">
			                        <span class="day">7</span>/Nov.2015
			                    </div>
			                    <h3>蜂首游记：初见台湾，亲历台风，感受雨过天晴的感动。</h3>
			                </a>
			                <p class="show-info">图片来自于<font color="#FF9900"><a target="_blank" href="/travel-scenic-spot/mafengwo/12684.html">台湾</a></font>，此目的地共收藏了<font color="#FF9900"><a rel="nofollow" target="_blank" href="http://www.mafengwo.cn/photo/mdd/12684.html">3496164</a></font>张<a target="_blank" href="/travel-scenic-spot/mafengwo/12684.html">台湾</a>图片。本片由<font color="#FF9900"><a target="_blank" href="http://www.mafengwo.cn/u/32216322.html">YangYangiiiiii</a></font>荣誉出品！</p>
			            </li>
			                    </ul>
					<ul class="show-nav">
                            <li class="active"><a href="javascript:"><img width="110" height="62" src="<%=request.getContextPath() %>/resources/css/core/img/index/indexpic_thumb1.jpeg"><span></span></a></li>
                            <li class=""><a href="javascript:"><img width="110" height="62" src="<%=request.getContextPath() %>/resources/css/core/img/index/indexpic_thumb2.jpeg"><span></span></a></li>
                            <li class=""><a href="javascript:"><img width="110" height="62" src="<%=request.getContextPath() %>/resources/css/core/img/index/indexpic_thumb3.jpeg"><span></span></a></li>
                            <li class=""><a href="javascript:"><img width="110" height="62" src="<%=request.getContextPath() %>/resources/css/core/img/index/indexpic_thumb4.jpeg"><span></span></a></li>
                            <li class=""><a href="javascript:"><img width="110" height="62" src="<%=request.getContextPath() %>/resources/css/core/img/index/indexpic_thumb5.jpeg"><span></span></a></li>
                    </ul>
                   <a href="#" target="_blank" class="show-more">历历在目</a>
			</div>
			<div class="search-container">
				<div class="search-group">
					<div  class="searchtab">
							<ul class="clearfix">
								<li class="tab-selected" data-index="0">
									<i></i>
									全部
									</li>
									<li data-index="1">
									<i></i>
									酒店
									</li>
									<li data-index="2">
									<i></i>
									目的地
									</li>
									<li data-index="3">
									<i></i>
									商城
									</li>
								</ul>
						</div>
						<div  class="searchbar">
			                <form method="get" action="/group/s.php">
			                <div class="search-wrapper">
			                    <div class="search-input">
			                        <input type="text" autocomplete="off" placeholder="搜目的地/攻略/酒店/用户" name="q">
			                    </div>
			                </div>
			                <div  class="search-button">
			                    <a href="javascript:" role="button"><i class="icon-search"></i></a>
			                </div>
			                </form>
          			  </div>
          			  
				</div>
			</div>
		</div>
		<!--Container-->
       <div id="mfm-container">
			<div class="mfm-wraper">
				<div class="da-banner">
					<a target="_blank" href="#" rel="nofollow"><img border="0" src="<%=request.getContextPath() %>/resources/css/core/img/index/da-banner1.jpeg"></a>
				</div>
				<div class="mfm-travelnotes">
					<div class="navbar">
						<ul class="tn-nav" id="_j_tn_nav">
							<li class="active"><a href="javascript:" title="热门旅行游记" rel="nofollow" data-type="0">热门游记</a></li>
							<li><a href="javascript:" title="最新旅游攻略" rel="nofollow" data-type="1">最新发表</a></li>
							<li><a href="javascript:" title="精品游记列表" rel="nofollow" data-type="4">精品游记</a></li>
							<li><a href="javascript:" title="旅行游记热榜" rel="nofollow" data-type="2">一周热榜</a></li>
						</ul>
						<div class="tn-write"><a class="btn-add" href="login_blank.html" target="_blank" rel="nofollow"><i></i>写游记</a></div>
					</div>
					<div class="navbar-sub">
						<div class="tn-dropdown dropdown-month">
		                    <div class="dropdown-trigger" data-title="按时间"><span>按时间</span><i class="icon-dropdown"></i></div>
		                    <div class="dropdown-menu">
		                        <ul style="display: none;">
		                            <li>
		                                <a class="active" href="javascript:" rel="nofollow" data-cs-p="index_type_month" data-key="month" data-value="0">不限</a>
		                            </li>
		                            <li>
		                                <a class="" href="javascript:" rel="nofollow" data-cs-p="index_type_month" data-key="month" data-value="1">1-2月</a>
		                            </li>
		                         	<li>
		                                <a class="" href="javascript:" rel="nofollow" data-cs-p="index_type_month" data-key="month" data-value="2">3-4月</a>
		                            </li>
		                            <li>
		                                <a class="" href="javascript:" rel="nofollow" data-cs-p="index_type_month" data-key="month" data-value="3">5-6月                                </a>
		                            </li>
		                            <li>
		                                <a class="" href="javascript:" rel="nofollow" data-cs-p="index_type_month" data-key="month" data-value="4">7-8月</a>
		                            </li>
		                            <li>
		                                <a class="" href="javascript:" rel="nofollow" data-cs-p="index_type_month" data-key="month" data-value="5">9-10月</a>
		                            </li>
		                            <li>
		                                <a class="" href="javascript:" rel="nofollow" data-cs-p="index_type_month" data-key="month" data-value="6">11-12月                                </a>
		                            </li>
                                </ul>
                    		</div>
               			 </div>						
						<div class="tn-dropdown dropdown-cost">
                   			 <div class="dropdown-trigger" data-title="按人均费用"><span>按人均费用</span><i class="icon-dropdown"></i></div>
                   			 <div class="dropdown-menu">
                        <ul style="display: none;">
                                                        <li>
                                <a class="active" href="javascript:" rel="nofollow" data-cs-p="index_type_cost" data-key="cost" data-value="0">
                                    不限                                </a>
                            </li>
                                                        <li>
                                <a class="" href="javascript:" rel="nofollow" data-cs-p="index_type_cost" data-key="cost" data-value="1">
                                    1-999                                </a>
                            </li>
                                                        <li>
                                <a class="" href="javascript:" rel="nofollow" data-cs-p="index_type_cost" data-key="cost" data-value="2">
                                    1000-5999                                </a>
                            </li>
                                                        <li>
                                <a class="" href="javascript:" rel="nofollow" data-cs-p="index_type_cost" data-key="cost" data-value="3">
                                    6000-20000                                </a>
                            </li>
                                                        <li>
                                <a class="" href="javascript:" rel="nofollow" data-cs-p="index_type_cost" data-key="cost" data-value="4">
                                    20000以上                                </a>
                            </li>
                                                    </ul>
                    </div>
                		</div>
						<div class="tn-dropdown dropdown-who">
                   			 <div class="dropdown-trigger" data-title="按人物"><span>按人物</span><i class="icon-dropdown"></i></div>
                   			 <div class="dropdown-menu">
                        <ul style="display: none;">
                                                        <li>
                                <a class="active" href="javascript:" rel="nofollow" data-cs-p="index_type_who" data-key="who" data-value="0">
                                    不限                                </a>
                            </li>
                                                        <li>
                                <a class="" href="javascript:" rel="nofollow" data-cs-p="index_type_who" data-key="who" data-value="1">
                                    一个人                                </a>
                            </li>
                                                        <li>
                                <a class="" href="javascript:" rel="nofollow" data-cs-p="index_type_who" data-key="who" data-value="2">
                                    小两口                                </a>
                            </li>
                                                        <li>
                                <a class="" href="javascript:" rel="nofollow" data-cs-p="index_type_who" data-key="who" data-value="3">
                                    带小孩                                </a>
                            </li>
                                                        <li>
                                <a class="" href="javascript:" rel="nofollow" data-cs-p="index_type_who" data-key="who" data-value="4">
                                    家族出游                                </a>
                            </li>
                                                        <li>
                                <a class="" href="javascript:" rel="nofollow" data-cs-p="index_type_who" data-key="who" data-value="5">
                                    和朋友                                </a>
                            </li>
                                                        <li>
                                <a class="" href="javascript:" rel="nofollow" data-cs-p="index_type_who" data-key="who" data-value="9">
                                    其它                                </a>
                            </li>
                                                    </ul>
                    </div>
               			 </div>		
						<div class="tn-dropdown dropdown-tripmode">
		                    <div class="dropdown-trigger" data-title="按形式"><span>按形式</span><i class="icon-dropdown"></i></div>
		                    <div class="dropdown-menu">
                        <ul style="display: none;">
                                                        <li>
                                <a class="active" href="javascript:" rel="nofollow" data-cs-p="index_type_travel_style" data-key="travel_style" data-value="0">
                                    不限                                </a>
                            </li>
                                                        <li>
                                <a class="" href="javascript:" rel="nofollow" data-cs-p="index_type_travel_style" data-key="travel_style" data-value="1">
                                    自由行                                </a>
                            </li>
                                                        <li>
                                <a class="" href="javascript:" rel="nofollow" data-cs-p="index_type_travel_style" data-key="travel_style" data-value="2">
                                    半自由行                                </a>
                            </li>
                                                        <li>
                                <a class="" href="javascript:" rel="nofollow" data-cs-p="index_type_travel_style" data-key="travel_style" data-value="3">
                                    跟团                                </a>
                            </li>
                                                        <li>
                                <a class="" href="javascript:" rel="nofollow" data-cs-p="index_type_travel_style" data-key="travel_style" data-value="4">
                                    自驾                                </a>
                            </li>
                                                        <li>
                                <a class="" href="javascript:" rel="nofollow" data-cs-p="index_type_travel_style" data-key="travel_style" data-value="5">
                                    包车                                </a>
                            </li>
                                                        <li>
                                <a class="" href="javascript:" rel="nofollow" data-cs-p="index_type_travel_style" data-key="travel_style" data-value="6">
                                    骑行                                </a>
                            </li>
                                                        <li>
                                <a class="" href="javascript:" rel="nofollow" data-cs-p="index_type_travel_style" data-key="travel_style" data-value="7">
                                    徒步                                </a>
                            </li>
                                                    </ul>
                    </div>
              		    </div>
					</div>
					<div class="tn-list">
						<div class="tn-item">
							<div class="tn-image">
						        <a href="/i/3314982.html" target="_blank">
						            <img src="<%=request.getContextPath() %>/resources/css/core/img/tnote-temp/tn1.jpeg" height="150" width="220">
						            <i class=""></i>
						        </a>
						    </div>
							<div class="tn-wrapper">
						        <dl>
						            <dt>
						                <a href="/i/3314982.html" target="_blank">蓝眼睛土耳其12天自驾游2015-2.3～2.16</a>
						            </dt>
						            <dd>
						                <a href="/i/3314982.html" target="_blank">计划这个旅游是7个月前的事了，期间断断续续的做着攻略和准备，lonely planet，一个叫“Watch-over of Turkey ”的MV短片， 还有游记中各种各样的美图，无数次的冲击着我的视觉神经。终于在2月初得以成行，用我们...</a>
						            </dd>
						        </dl>
						        <div class="tn-extra">
						            <span class="tn-ding">
						                <a class="btn-ding" href="javascript:;" title="顶一下" onclick="show_login();" rel="nofollow"></a>
						                <em id="topvote3314982">763</em>
						            </span>
						            <span class="tn-place"><i></i><a href="/travel-scenic-spot/mafengwo/10053.html" target="_blank" rel="nofollow">土耳其</a>，by</span>
						            <span class="tn-user">
						                <a href="/u/61266132.html" target="_blank" rel="nofollow">
						                    <img alt="韩" src="<%=request.getContextPath() %>/resources/css/core/img/tnote-temp/user_icon.png">韩
						                </a>
						            </span>
						            <span class="tn-nums"><i></i>18986/295</span>
						        </div>
						    </div>
						</div>
						<div class="tn-item">
							<div class="tn-image">
						        <a href="/i/3314982.html" target="_blank">
						            <img src="<%=request.getContextPath() %>/resources/css/core/img/tnote-temp/tn2.jpeg" height="150" width="220">
						            <i class=""></i>
						        </a>
						    </div>
							<div class="tn-wrapper">
						        <dl>
						        	<dt>
						                <a href="/i/3314982.html" target="_blank">蓝眼睛土耳其12天自驾游2015-2.3～2.16</a>
						            </dt>
						            <dd>
						                <a href="/i/3314982.html" target="_blank">计划这个旅游是7个月前的事了，期间断断续续的做着攻略和准备，lonely planet，一个叫“Watch-over of Turkey ”的MV短片， 还有游记中各种各样的美图，无数次的冲击着我的视觉神经。终于在2月初得以成行，用我们...</a>
						            </dd>
						        </dl>
						        <div class="tn-extra">
						            <span class="tn-ding">
						                <a class="btn-ding" href="javascript:;" title="顶一下" onclick="show_login();" rel="nofollow"></a>
						                <em id="topvote3314982">763</em>
						            </span>
						            <span class="tn-place"><i></i><a href="/travel-scenic-spot/mafengwo/10053.html" target="_blank" rel="nofollow">土耳其</a>，by</span>
						            <span class="tn-user">
						                <a href="/u/61266132.html" target="_blank" rel="nofollow">
						                    <img alt="韩" src="<%=request.getContextPath() %>/resources/css/core/img/tnote-temp/user_icon.png">韩
						                </a>
						            </span>
						            <span class="tn-nums"><i></i>18986/295</span>
						        </div>
						    </div>
						</div>
						<div class="tn-item">
							<div class="tn-image">
						        <a href="/i/3314982.html" target="_blank">
						            <img src="<%=request.getContextPath() %>/resources/css/core/img/tnote-temp/tn3.jpeg" height="150" width="220">
						            <i class=""></i>
						        </a>
						    </div>
							<div class="tn-wrapper">
						        <dl>
						            <dt>
						                <a href="/i/3314982.html" target="_blank">蓝眼睛土耳其12天自驾游2015-2.3～2.16</a>
						            </dt>
						            <dd>
						                <a href="/i/3314982.html" target="_blank">计划这个旅游是7个月前的事了，期间断断续续的做着攻略和准备，lonely planet，一个叫“Watch-over of Turkey ”的MV短片， 还有游记中各种各样的美图，无数次的冲击着我的视觉神经。终于在2月初得以成行，用我们...</a>
						            </dd>
						        </dl>
						        <div class="tn-extra">
						            <span class="tn-ding">
						                <a class="btn-ding" href="javascript:;" title="顶一下" onclick="show_login();" rel="nofollow"></a>
						                <em id="topvote3314982">763</em>
						            </span>
						            <span class="tn-place"><i></i><a href="/travel-scenic-spot/mafengwo/10053.html" target="_blank" rel="nofollow">土耳其</a>，by</span>
						            <span class="tn-user">
						                <a href="/u/61266132.html" target="_blank" rel="nofollow">
						                    <img alt="韩" src="<%=request.getContextPath() %>/resources/css/core/img/tnote-temp/user_icon.png">韩
						                </a>
						            </span>
						            <span class="tn-nums"><i></i>18986/295</span>
						        </div>
						    </div>
						</div>
						<div class="tn-item">
							<div class="tn-image">
						        <a href="/i/3314982.html" target="_blank">
						            <img src="<%=request.getContextPath() %>/resources/css/core/img/tnote-temp/tn4.jpeg" height="150" width="220">
						            <i class=""></i>
						        </a>
						    </div>
							<div class="tn-wrapper">
						        <dl>
						            <dt>
						                <a href="/i/3314982.html" target="_blank">蓝眼睛土耳其12天自驾游2015-2.3～2.16</a>
						            </dt>
						            <dd>
						                <a href="/i/3314982.html" target="_blank">计划这个旅游是7个月前的事了，期间断断续续的做着攻略和准备，lonely planet，一个叫“Watch-over of Turkey ”的MV短片， 还有游记中各种各样的美图，无数次的冲击着我的视觉神经。终于在2月初得以成行，用我们...</a>
						            </dd>
						        </dl>
						        <div class="tn-extra">
						            <span class="tn-ding">
						                <a class="btn-ding" href="javascript:;" title="顶一下" onclick="show_login();" rel="nofollow"></a>
						                <em id="topvote3314982">763</em>
						            </span>
						            <span class="tn-place"><i></i><a href="/travel-scenic-spot/mafengwo/10053.html" target="_blank" rel="nofollow">土耳其</a>，by</span>
						            <span class="tn-user">
						                <a href="/u/61266132.html" target="_blank" rel="nofollow">
						                    <img alt="韩" src="<%=request.getContextPath() %>/resources/css/core/img/tnote-temp/user_icon.png">韩
						                </a>
						            </span>
						            <span class="tn-nums"><i></i>18986/295</span>
						        </div>
						    </div>
						</div>
						<div class="tn-item">
							<div class="tn-image">
						        <a href="/i/3314982.html" target="_blank">
						            <img src="<%=request.getContextPath() %>/resources/css/core/img/tnote-temp/tn5.jpeg" height="150" width="220">
						            <i class=""></i>
						        </a>
						    </div>
							<div class="tn-wrapper">
						        <dl>
						            <dt>
						                <a href="/i/3314982.html" target="_blank">蓝眼睛土耳其12天自驾游2015-2.3～2.16</a>
						            </dt>
						            <dd>
						                <a href="/i/3314982.html" target="_blank">计划这个旅游是7个月前的事了，期间断断续续的做着攻略和准备，lonely planet，一个叫“Watch-over of Turkey ”的MV短片， 还有游记中各种各样的美图，无数次的冲击着我的视觉神经。终于在2月初得以成行，用我们...</a>
						            </dd>
						        </dl>
						        <div class="tn-extra">
						            <span class="tn-ding">
						                <a class="btn-ding" href="javascript:;" title="顶一下" onclick="show_login();" rel="nofollow"></a>
						                <em id="topvote3314982">763</em>
						            </span>
						            <span class="tn-place"><i></i><a href="/travel-scenic-spot/mafengwo/10053.html" target="_blank" rel="nofollow">土耳其</a>，by</span>
						            <span class="tn-user">
						                <a href="/u/61266132.html" target="_blank" rel="nofollow">
						                    <img alt="韩" src="<%=request.getContextPath() %>/resources/css/core/img/tnote-temp/user_icon.png">韩
						                </a>
						            </span>
						            <span class="tn-nums"><i></i>18986/295</span>
						        </div>
						    </div>
						</div>
						<div class="tn-item">
							<div class="tn-image">
						        <a href="/i/3314982.html" target="_blank">
						            <img src="<%=request.getContextPath() %>/resources/css/core/img/tnote-temp/tn6.jpeg" height="150" width="220">
						            <i class=""></i>
						        </a>
						    </div>
							<div class="tn-wrapper">
						        <dl>
						            <dt>
						                <a href="/i/3314982.html" target="_blank">蓝眼睛土耳其12天自驾游2015-2.3～2.16</a>
						            </dt>
						            <dd>
						                <a href="/i/3314982.html" target="_blank">计划这个旅游是7个月前的事了，期间断断续续的做着攻略和准备，lonely planet，一个叫“Watch-over of Turkey ”的MV短片， 还有游记中各种各样的美图，无数次的冲击着我的视觉神经。终于在2月初得以成行，用我们...</a>
						            </dd>
						        </dl>
						        <div class="tn-extra">
						            <span class="tn-ding">
						                <a class="btn-ding" href="javascript:;" title="顶一下" onclick="show_login();" rel="nofollow"></a>
						                <em id="topvote3314982">763</em>
						            </span>
						            <span class="tn-place"><i></i><a href="/travel-scenic-spot/mafengwo/10053.html" target="_blank" rel="nofollow">土耳其</a>，by</span>
						            <span class="tn-user">
						                <a href="/u/61266132.html" target="_blank" rel="nofollow">
						                    <img alt="韩" src="<%=request.getContextPath() %>/resources/css/core/img/tnote-temp/user_icon.png">韩
						                </a>
						            </span>
						            <span class="tn-nums"><i></i>18986/295</span>
						        </div>
						    </div>
						</div>
						<div class="tn-item">
							<div class="tn-image">
						        <a href="/i/3314982.html" target="_blank">
						            <img src="<%=request.getContextPath() %>/resources/css/core/img/tnote-temp/tn7.jpeg" height="150" width="220">
						            <i class=""></i>
						        </a>
						    </div>
							<div class="tn-wrapper">
						        <dl>
						            <dt>
						                <a href="/i/3314982.html" target="_blank">蓝眼睛土耳其12天自驾游2015-2.3～2.16</a>
						            </dt>
						            <dd>
						                <a href="/i/3314982.html" target="_blank">计划这个旅游是7个月前的事了，期间断断续续的做着攻略和准备，lonely planet，一个叫“Watch-over of Turkey ”的MV短片， 还有游记中各种各样的美图，无数次的冲击着我的视觉神经。终于在2月初得以成行，用我们...</a>
						            </dd>
						        </dl>
						        <div class="tn-extra">
						            <span class="tn-ding">
						                <a class="btn-ding" href="javascript:;" title="顶一下" onclick="show_login();" rel="nofollow"></a>
						                <em id="topvote3314982">763</em>
						            </span>
						            <span class="tn-place"><i></i><a href="/travel-scenic-spot/mafengwo/10053.html" target="_blank" rel="nofollow">土耳其</a>，by</span>
						            <span class="tn-user">
						                <a href="/u/61266132.html" target="_blank" rel="nofollow">
						                    <img alt="韩" src="<%=request.getContextPath() %>/resources/css/core/img/tnote-temp/user_icon.png">韩
						                </a>
						            </span>
						            <span class="tn-nums"><i></i>18986/295</span>
						        </div>
						    </div>
						</div>
						<div class="tn-item">
							<div class="tn-image">
						        <a href="/i/3314982.html" target="_blank">
						            <img src="<%=request.getContextPath() %>/resources/css/core/img/tnote-temp/tn8.jpeg" height="150" width="220">
						            <i class=""></i>
						        </a>
						    </div>
							<div class="tn-wrapper">
						        <dl>
						            <dt>
						                <a href="/i/3314982.html" target="_blank">蓝眼睛土耳其12天自驾游2015-2.3～2.16</a>
						            </dt>
						            <dd>
						                <a href="/i/3314982.html" target="_blank">计划这个旅游是7个月前的事了，期间断断续续的做着攻略和准备，lonely planet，一个叫“Watch-over of Turkey ”的MV短片， 还有游记中各种各样的美图，无数次的冲击着我的视觉神经。终于在2月初得以成行，用我们...</a>
						            </dd>
						        </dl>
						        <div class="tn-extra">
						            <span class="tn-ding">
						                <a class="btn-ding" href="javascript:;" title="顶一下" onclick="show_login();" rel="nofollow"></a>
						                <em id="topvote3314982">763</em>
						            </span>
						            <span class="tn-place"><i></i><a href="/travel-scenic-spot/mafengwo/10053.html" target="_blank" rel="nofollow">土耳其</a>，by</span>
						            <span class="tn-user">
						                <a href="/u/61266132.html" target="_blank" rel="nofollow">
						                    <img alt="韩" src="<%=request.getContextPath() %>/resources/css/core/img/tnote-temp/user_icon.png">韩
						                </a>
						            </span>
						            <span class="tn-nums"><i></i>18986/295</span>
						        </div>
						    </div>
						</div>
						<div class="tn-item">
							<div class="tn-image">
						        <a href="/i/3314982.html" target="_blank">
						            <img src="<%=request.getContextPath() %>/resources/css/core/img/tnote-temp/tn9.gif" height="150" width="220">
						            <i class=""></i>
						        </a>
						    </div>
							<div class="tn-wrapper">
						        <dl>
						            <dt>
						                <a href="/i/3314982.html" target="_blank">蓝眼睛土耳其12天自驾游2015-2.3～2.16</a>
						            </dt>
						            <dd>
						                <a href="/i/3314982.html" target="_blank">计划这个旅游是7个月前的事了，期间断断续续的做着攻略和准备，lonely planet，一个叫“Watch-over of Turkey ”的MV短片， 还有游记中各种各样的美图，无数次的冲击着我的视觉神经。终于在2月初得以成行，用我们...</a>
						            </dd>
						        </dl>
						        <div class="tn-extra">
						            <span class="tn-ding">
						                <a class="btn-ding" href="javascript:;" title="顶一下" onclick="show_login();" rel="nofollow"></a>
						                <em id="topvote3314982">763</em>
						            </span>
						            <span class="tn-place"><i></i><a href="/travel-scenic-spot/mafengwo/10053.html" target="_blank" rel="nofollow">土耳其</a>，by</span>
						            <span class="tn-user">
						                <a href="/u/61266132.html" target="_blank" rel="nofollow">
						                    <img alt="韩" src="<%=request.getContextPath() %>/resources/css/core/img/tnote-temp/user_icon.png">韩
						                </a>
						            </span>
						            <span class="tn-nums"><i></i>18986/295</span>
						        </div>
						    </div>
						</div>
						<div class="tn-item">
							<div class="tn-image">
						        <a href="/i/3314982.html" target="_blank">
						            <img src="<%=request.getContextPath() %>/resources/css/core/img/tnote-temp/tn10.jpeg" height="150" width="220">
						            <i class=""></i>
						        </a>
						    </div>
							<div class="tn-wrapper">
						        <dl>
						            <dt>
						                <a href="/i/3314982.html" target="_blank">蓝眼睛土耳其12天自驾游2015-2.3～2.16</a>
						            </dt>
						            <dd>
						                <a href="/i/3314982.html" target="_blank">计划这个旅游是7个月前的事了，期间断断续续的做着攻略和准备，lonely planet，一个叫“Watch-over of Turkey ”的MV短片， 还有游记中各种各样的美图，无数次的冲击着我的视觉神经。终于在2月初得以成行，用我们...</a>
						            </dd>
						        </dl>
						        <div class="tn-extra">
						            <span class="tn-ding">
						                <a class="btn-ding" href="javascript:;" title="顶一下" onclick="show_login();" rel="nofollow"></a>
						                <em id="topvote3314982">763</em>
						            </span>
						            <span class="tn-place"><i></i><a href="/travel-scenic-spot/mafengwo/10053.html" target="_blank" rel="nofollow">土耳其</a>，by</span>
						            <span class="tn-user">
						                <a href="/u/61266132.html" target="_blank" rel="nofollow">
						                    <img alt="韩" src="<%=request.getContextPath() %>/resources/css/core/img/tnote-temp/user_icon.png">韩
						                </a>
						            </span>
						            <span class="tn-nums"><i></i>18986/295</span>
						        </div>
						    </div>
						</div>
						<div class="tn-item">
							<div class="tn-image">
						        <a href="/i/3314982.html" target="_blank">
						            <img src="<%=request.getContextPath() %>/resources/css/core/img/tnote-temp/tn11.jpeg" height="150" width="220">
						            <i class=""></i>
						        </a>
						    </div>
							<div class="tn-wrapper">
						        <dl>
						            <dt>
						                <a href="/i/3314982.html" target="_blank">蓝眼睛土耳其12天自驾游2015-2.3～2.16</a>
						            </dt>
						            <dd>
						                <a href="/i/3314982.html" target="_blank">计划这个旅游是7个月前的事了，期间断断续续的做着攻略和准备，lonely planet，一个叫“Watch-over of Turkey ”的MV短片， 还有游记中各种各样的美图，无数次的冲击着我的视觉神经。终于在2月初得以成行，用我们...</a>
						            </dd>
						        </dl>
						        <div class="tn-extra">
						            <span class="tn-ding">
						                <a class="btn-ding" href="javascript:;" title="顶一下" onclick="show_login();" rel="nofollow"></a>
						                <em id="topvote3314982">763</em>
						            </span>
						            <span class="tn-place"><i></i><a href="/travel-scenic-spot/mafengwo/10053.html" target="_blank" rel="nofollow">土耳其</a>，by</span>
						            <span class="tn-user">
						                <a href="/u/61266132.html" target="_blank" rel="nofollow">
						                    <img alt="韩" src="<%=request.getContextPath() %>/resources/css/core/img/tnote-temp/user_icon.png">韩
						                </a>
						            </span>
						            <span class="tn-nums"><i></i>18986/295</span>
						        </div>
						    </div>
						</div>
						<div class="tn-item">
							<div class="tn-image">
						        <a href="/i/3314982.html" target="_blank">
						            <img src="<%=request.getContextPath() %>/resources/css/core/img/tnote-temp/tn12.jpeg" height="150" width="220">
						            <i class=""></i>
						        </a>
						    </div>
							<div class="tn-wrapper">
						        <dl>
						            <dt>
						                <a href="/i/3314982.html" target="_blank">蓝眼睛土耳其12天自驾游2015-2.3～2.16</a>
						            </dt>
						            <dd>
						                <a href="/i/3314982.html" target="_blank">计划这个旅游是7个月前的事了，期间断断续续的做着攻略和准备，lonely planet，一个叫“Watch-over of Turkey ”的MV短片， 还有游记中各种各样的美图，无数次的冲击着我的视觉神经。终于在2月初得以成行，用我们...</a>
						            </dd>
						        </dl>
						        <div class="tn-extra">
						            <span class="tn-ding">
						                <a class="btn-ding" href="javascript:;" title="顶一下" onclick="show_login();" rel="nofollow"></a>
						                <em id="topvote3314982">763</em>
						            </span>
						            <span class="tn-place"><i></i><a href="/travel-scenic-spot/mafengwo/10053.html" target="_blank" rel="nofollow">土耳其</a>，by</span>
						            <span class="tn-user">
						                <a href="/u/61266132.html" target="_blank" rel="nofollow">
						                    <img alt="韩" src="<%=request.getContextPath() %>/resources/css/core/img/tnote-temp/user_icon.png">韩
						                </a>
						            </span>
						            <span class="tn-nums"><i></i>18986/295</span>
						        </div>
						    </div>
						</div>
						
					</div>
					<div align="right" class="m-pagination" id="_j_tn_pagination"><span class="count">共50页 / 600条</span>   
					   <a class="pg-prev _j_pageitem" href="javascript:;" data-page="12" rel="nofollow">&lt;&lt; 上一页</a>        
					   <a class="pi _j_pageitem" href="javascript:;" data-page="9" rel="nofollow">9</a>                  
					   <a class="pi _j_pageitem" href="javascript:;" data-page="10" rel="nofollow">10</a>      
				       <a class="pi _j_pageitem" href="javascript:;" data-page="11" rel="nofollow">11</a>     
				       <a class="pi _j_pageitem" href="javascript:;" data-page="12" rel="nofollow">12</a>     
				       <span class="pg-current">13</span>                                                   
				       <a class="pi _j_pageitem" href="javascript:;" data-page="14" rel="nofollow">14</a>     
				       <a class="pi _j_pageitem" href="javascript:;" data-page="15" rel="nofollow">15</a>          
				       <a class="pi _j_pageitem" href="javascript:;" data-page="16" rel="nofollow">16</a>           
				       <a class="pi _j_pageitem" href="javascript:;" data-page="17" rel="nofollow">17</a>              
				       <a class="pg-next _j_pageitem" href="javascript:;" data-page="14" rel="nofollow">下一页 &gt;&gt;</a>
						<script id="article_pagination" type="text/x-jquery-tmpl">
		                <span class="count">共${pageTotal}页 / ${total}条</span>
			                {{if pageTotal > 1}}
			                {{if currPage > 1}}
			                <a class="pg-prev _j_pageitem" href="javascript:;" data-page="${currPage - 1}" rel="nofollow">&lt;&lt; 上一页</a>
			                {{/if}}
			                {{each(i, index) indexers}}
			                {{if index == currPage}}
			                <span class="pg-current">${index}</span>
			                {{else}}
			                <a class="pi _j_pageitem" href="javascript:;" data-page="${index}" rel="nofollow">${index}</a>
			                {{/if}}
			                {{/each}}
			                {{if currPage < pageTotal}}
			                <a class="pg-next _j_pageitem" href="javascript:;" data-page="${currPage + 1}" rel="nofollow">下一页 &gt;&gt;</a>
			                {{/if}}
			                {{/if}}
		              </script>   
					</div>
			    
				</div>
			</div>
			<div class="mfm-aside">
			
		<div class="asidebox box-traveller">
            <div class="asidebox-hd">
                <h2 class="hd-title"><a href="/traveller/">旅行家专栏</a></h2>
                <a href="/traveller/" class="hd-right">专栏首页</a>
            </div>
			<div  class="asidebox-bd small_slider">
				<ul  class="slide-ul" style="left: 0px;">
					<li>
						<div class="image">
							<a target="_blank" href="/traveller/article.php?id=833" data-key="/traveller/article.php?id=833" data-type="thc" data-japp="oplog">
								<img width="260" height="140" src="<%=request.getContextPath() %>/resources/css/core/img/index/traveller1.jpeg">
							</a>
						</div>
						<h3><a target="_blank" href="/traveller/article.php?id=833" data-key="/traveller/article.php?id=833" data-type="thc" data-japp="oplog">最脆弱的也是最坚韧的</a></h3>
						<p>巴黎是这样的城市，它不造梦，它不造就美国式的成功和英雄。</p>
					</li>
					<li>
						<div class="image">
							<a target="_blank" href="/traveller/article.php?id=832" data-key="/traveller/article.php?id=832" data-type="thc" data-japp="oplog">
								<img width="260" height="140" src="<%=request.getContextPath() %>/resources/css/core/img/index/traveller2.jpeg">
							</a>
						</div>
						<h3>
			                                <a target="_blank" href="/traveller/article.php?id=832" data-key="/traveller/article.php?id=832" data-type="thc" data-japp="oplog">巴黎恐怖袭击第二天</a>
			                            </h3>
						<p>这一切，离我们太近了！</p>
					</li>
					<li>
						<div class="image">
							<a target="_blank" href="/traveller/article.php?id=831" data-key="/traveller/article.php?id=831" data-type="thc" data-japp="oplog">
								<img width="260" height="140" src="<%=request.getContextPath() %>/resources/css/core/img/index/traveller3.jpeg">
							</a>
						</div>
						<h3>
			                                <a target="_blank" href="/traveller/article.php?id=831" data-key="/traveller/article.php?id=831" data-type="thc" data-japp="oplog">一秒钟的迟疑</a>
			                            </h3>
						<p>人是平等的，该得到一视同仁的尊重。</p>
					</li>
					<li>
						<div class="image">
							<a target="_blank" href="/traveller/article.php?id=830" data-key="/traveller/article.php?id=830" data-type="thc" data-japp="oplog" style="">
								<img width="260" height="140" src="<%=request.getContextPath() %>/resources/css/core/img/index/traveller4.jpeg">
							</a>
						</div>
						<h3>
			                                <a target="_blank" href="/traveller/article.php?id=830" data-key="/traveller/article.php?id=830" data-type="thc" data-japp="oplog">我的第一次邮轮之旅</a>
			                            </h3>
						<p>我从不善于记录花费，也不会分享攻略，不过想说说自己对邮轮这么一种临时社会形态的简单观察。</p>
					</li>
					<li>
						<div class="image">
							<a target="_blank" href="/traveller/article.php?id=829" data-key="/traveller/article.php?id=829" data-type="thc" data-japp="oplog">
								<img width="260" height="140" src="<%=request.getContextPath() %>/resources/css/core/img/index/traveller5.jpeg">
							</a>
						</div>
						<h3>
			                                <a target="_blank" href="/traveller/article.php?id=829" data-key="/traveller/article.php?id=829" data-type="thc" data-japp="oplog">缅甸之路</a>
			                            </h3>
						<p>心怀梦想，乐于改变，坚信明天更美好，这是多么令人心动的时刻。</p>
					</li>
				</ul>
				<ol class="slide-ol">
					<li data-id="0" class="active"></li>
					<li data-id="1" class=""></li>
					<li data-id="2" class=""></li>
					<li data-id="3" class=""></li>
					<li data-id="4" class=""></li>
				</ol>
			</div>
			</div>
				<div class="asidebox box-gonglve">
            <div class="asidebox-hd">
                <h2 class="hd-title">旅游攻略推荐</h2>
                <a href="/gonglve/" class="hd-right">更多</a>
            </div>
            <div class="asidebox-bd">
                                <dl class="clearfix">
                    <dt>
                        <a target="_blank" href="/gonglve/mdd-16712.html">
                            <img width="110" height="155" alt="黑龙江旅游攻略" src="http://file31.mafengwo.net/M00/6C/98/wKgBs1Y7BeSATtMjAAaliQD6oeI40.book.w130.jpeg">
                        </a>
                    </dt>
                    <dd>
                        <h3>
                                                        <a title="黑龙江" target="_blank" href="/gonglve/mdd-16712.html">黑龙江</a>
                        </h3>
                        <p>详细的吃、住、行、景点、线路、实用信息</p>
                    </dd>
                </dl>
                                                <ul>
                                            <li>
                            <a rel="nofollow" target="_blank" href="/u/55980644.html">细胞核</a> 点评了&nbsp;
                            亚丁的 <a target="_blank" href="/poi/15212.html">五色海</a>
                        </li>
                                            <li>
                            <a rel="nofollow" target="_blank" href="/u/128665.html">雁过留影</a> 点评了&nbsp;
                            塞尔丘克的 <a target="_blank" href="/poi/7051162.html">堪培拉酒店(H</a>
                        </li>
                                            <li>
                            <a rel="nofollow" target="_blank" href="/u/35336532.html">MFM</a> 点评了&nbsp;
                            上海的 <a target="_blank" href="/poi/3874193.html">小杨生煎(南</a>
                        </li>
                                            <li>
                            <a rel="nofollow" target="_blank" href="/u/5155169.html">郑洋_NT</a> 点评了&nbsp;
                            比利特的 <a target="_blank" href="/poi/6579455.html">毕力特雨林旅</a>
                        </li>
                                            <li>
                            <a rel="nofollow" target="_blank" href="/u/5624722.html">moneyroa</a> 点评了&nbsp;
                            武汉的 <a target="_blank" href="/poi/2846.html">艳阳天酒楼（</a>
                        </li>
                                    </ul>
                            </div>
        </div>
				<div class="box-gowild">
                    <div class="asidebox-hd">
          				  2015撒野行动
       	 			</div>
       				 <div class="asidebox-bd">
           				 <a href="#" target="_blank"><img src="<%=request.getContextPath() %>/resources/css/core/img/index/260x238.jpg" alt="撒野行动" title="撒野行动"></a>
       				 </div>
                </div>


						<div class="asidebox box-activity">
							<div class="asidebox-hd">
								<h2 class="hd-title">我的活动</h2>
									<span class="hd-right">
									  <a data-flag="1" href="javascript:" class="active _j_activity">正在进行</a>
									</span>
							</div>
							<div class="activity-details">
									<a data-cs-p="index_activity_65" target="_blank" href="#" class="act-item">
										<img alt="皇家加勒比" src="<%=request.getContextPath() %>/resources/css/core/img/index/box-activity1.png"><strong>皇家加勒比</strong>
										<br>领任务赢船票，开启暖冬海上假期
									</a>
									<a data-cs-p="index_activity_63" target="_blank" href="#" class="act-item">
										<img alt="邀你制作2016台历" src="<%=request.getContextPath() %>/resources/css/core/img/index/box-activity2.png"><strong>邀你制作2016台历</strong>
										<br>6000份礼物已经备好啦~
									</a>
									<a data-cs-p="index_activity_61" target="_blank" href="#" class="act-item">
										<img alt="助威坚韧之旅" src="<%=request.getContextPath() %>/resources/css/core/img/index/box-activity3.jpeg"><strong>助威坚韧之旅</strong>
										<br>分享微博，赢机票手机组合大奖
									</a>
									<a data-cs-p="index_activity_64" target="_blank" href="#" class="act-item">
										<img alt="一日大师" src="<%=request.getContextPath() %>/resources/css/core/img/index/box-activity4.png"><strong>一日大师</strong>
										<br>打卡！看点不一样的，赢蜂蜜
									</a>
									<a data-cs-p="index_activity_14" target="_blank" href="#" class="act-item">
										<img alt="照片PK" src="<%=request.getContextPath() %>/resources/css/core/img/index/box-activity5.png"><strong>照片PK</strong>
										<br>旅行照片，别藏着！分享一下
									</a>
							</div>
						</div>



					<div class="db-banner">
							<a target="_blank" href="#" rel="nofollow">
								<img border="0" src="<%=request.getContextPath() %>/resources/css/core/img/index/da-banner2.jpeg">
							</a>
					</div>
				
				<div class="box-news">
					 <div class="asidebox-hd">
               			 <div class="hd-title"><a href="javascript:">蚂蜂窝旅行网站最新进展</a></div>
          			  </div>
         			  <ul>
                            <li>08月26日<a href="http://www.mafengwo.cn/app/intro/gonglve.php" target="_blank" rel="nofollow">蚂蜂窝APP全面升级</a></li>
                            <li>08月06日<a href="http://www.mafengwo.cn/mascot/publish.php" target="_blank" rel="nofollow">蚂蜂窝吉祥物全球发布</a></li>
                            <li>07月18日<a href="http://www.mafengwo.cn/" target="_blank" rel="nofollow">蚂蜂窝LOGO、首页全新改版！</a></li>
                      </ul>
				</div>
			</div>
			<div class="da-banner da-banner-row">
				<a target="_blank" href="#" rel="nofollow">
					<img border="0" src="<%=request.getContextPath() %>/resources/css/core/img/index/da-banner3.jpeg">
				</a>
			</div>
		</div>
	</body>
</html>
