<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>旅游攻略</title>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/core/footer.css" />
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/core/strategy.css" />
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/core/header.css"  />
		<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/core/jquery.mfm.thumbslider.js" ></script>
		<script type="text/javascript">
			$(function(){
				$(".slide").defaultslider();
			/*	方法一
			
				$(".gl_wrap .sp_toggle a").toggle(function(){
					$(this).addClass("sp_toggle");
					$(this).parent().prev().css("height","auto");
				},function(){
						$(this).removeClass("sp_toggle");
						$(this).parent().prev().css("height","28px");
				});
			
			
				
			         方法二
				* */
				$(".more_selector").click(function(){
			        if($(this).hasClass("s_toggle")){
			            $(this).removeClass('sp_toggle').closest('span').prev('ol').css('height','28px');
			        } else {
			            $(this).addClass('sp_toggle').closest('span').prev('ol').css('height','auto');
			        }
			    });
			});
		</script>
	</head>
	<body>
		<div class="wrapper">
			<div class="focus">
				<div class="slide">
				    <ul id="slide_box" style="left: -1400px;">
				            <li><a target="_blank" href="/gonglve/zt-728.html"><img src="<%=request.getContextPath()%>/resources/css/core/img/strategy/defaultslider1.png"></a></li>
				            <li style="display: none;"><a target="_blank" href="/gonglve/mdd-10918.html"><img src="<%=request.getContextPath()%>/resources/css/core/img/strategy/defaultslider2.jpeg"></a></li>
				            <li style="display: none;"><a target="_blank" href="/gonglve/zt-677.html"><img src="<%=request.getContextPath()%>/resources/css/core/img/strategy/defaultslider3.png"></a></li>
				            <li style="display: none;"><a target="_blank" href="/gonglve/mdd-11173.html"><img src="<%=request.getContextPath()%>/resources/css/core/img/strategy/defaultslider4.jpeg"></a></li>
				            <li style="display: none;"><a target="_blank" href="/app/intro/gonglve.php"><img src="<%=request.getContextPath()%>/resources/css/core/img/strategy/defaultslider5.jpeg"></a></li>
				        </ul>
				    <ol id="thumb_box">
				            <li data-id="0" class="on">1</li>
				            <li data-id="1" class="">2</li>
				            <li data-id="2" class="">3</li>
				            <li data-id="3" class="">4</li>
				            <li data-id="4" class="">5</li>
				    </ol>
				</div>
			</div>
			<div id="list" class="gl_nav">
			    <a href="/gonglve/#list">全部旅游攻略导航</a>
		        <div class="clear"></div>
			</div>
			<div class="gl_wrap">
			    <h3><a href="/gonglve/mdd-cn-0-0-1.html#list">国内攻略</a></h3>
			    <ol>
			            <li><a href="/gonglve/mdd-yn-0-0-1.html#list">云南(26)</a></li>
			            <li><a href="/gonglve/mdd-sc-0-0-1.html#list">四川(22)</a></li>
			            <li><a href="/gonglve/mdd-zj-0-0-1.html#list">浙江(19)</a></li>
			            <li><a href="/gonglve/mdd-bj-0-0-1.html#list">北京(18)</a></li>
			            <li><a href="/gonglve/mdd-js-0-0-1.html#list">江苏(18)</a></li>
			            <li><a href="/gonglve/mdd-gd-0-0-1.html#list">广东(16)</a></li>
			            <li><a href="/gonglve/mdd-heb-0-0-1.html#list">河北(16)</a></li>
			            <li><a href="/gonglve/mdd-tw-0-0-1.html#list">台湾(16)</a></li>
			            <li><a href="/gonglve/mdd-nm-0-0-1.html#list">内蒙古(13)</a></li>
			            <li><a href="/gonglve/mdd-gz-0-0-1.html#list">贵州(12)</a></li>
			            <li><a href="/gonglve/mdd-sd-0-0-1.html#list">山东(12)</a></li>
			            <li><a href="/gonglve/mdd-xz-0-0-1.html#list">西藏(12)</a></li>
			            <li><a href="/gonglve/mdd-gx-0-0-1.html#list">广西(11)</a></li>
			            <li><a href="/gonglve/mdd-qh-0-0-1.html#list">青海(11)</a></li>
			            <li><a href="/gonglve/mdd-jx-0-0-1.html#list">江西(10)</a></li>
			            <li><a href="/gonglve/mdd-ah-0-0-1.html#list">安徽(9)</a></li>
			            <li><a href="/gonglve/mdd-fj-0-0-1.html#list">福建(9)</a></li>
			            <li><a href="/gonglve/mdd-hn-0-0-1.html#list">河南(9)</a></li>
			            <li><a href="/gonglve/mdd-jl-0-0-1.html#list">吉林(9)</a></li>
			            <li><a href="/gonglve/mdd-xj-0-0-1.html#list">新疆(9)</a></li>
			            <li><a href="/gonglve/mdd-hainan-0-0-1.html#list">海南(8)</a></li>
			            <li><a href="/gonglve/mdd-hlj-0-0-1.html#list">黑龙江(8)</a></li>
			            <li><a href="/gonglve/mdd-s1x-0-0-1.html#list">山西(8)</a></li>
			            <li><a href="/gonglve/mdd-s3x-0-0-1.html#list">陕西(8)</a></li>
			            <li><a href="/gonglve/mdd-hub-0-0-1.html#list">湖北(7)</a></li>
			            <li><a href="/gonglve/mdd-gs-0-0-1.html#list">甘肃(6)</a></li>
			            <li><a href="/gonglve/mdd-hunan-0-0-1.html#list">湖南(6)</a></li>
			            <li><a href="/gonglve/mdd-ln-0-0-1.html#list">辽宁(6)</a></li>
			            <li><a href="/gonglve/mdd-sh-0-0-1.html#list">上海(3)</a></li>
			            <li><a href="/gonglve/mdd-hk-0-0-1.html#list">香港(3)</a></li>
			            <li><a href="/gonglve/mdd-cq-0-0-1.html#list">重庆(3)</a></li>
			            <li><a href="/gonglve/mdd-mc-0-0-1.html#list">澳门(2)</a></li>
			            <li><a href="/gonglve/mdd-nx-0-0-1.html#list">宁夏(2)</a></li>
			            <li><a href="/gonglve/mdd-tj-0-0-1.html#list">天津(2)</a></li>
			        </ol>
			    <span class="sp_toggle"><a class="more_selector" href="javascript:void(0);">更多</a></span>    <div class="clear"></div>
			</div>
			<div class="gl_wrap">
			    <h3><a href="/gonglve/mdd-fo-0-0-1.html#list">国外攻略</a></h3>
			    <ol>
			            <li><a rel="oz" href="/gonglve/mdd-oz-0-0-1.html#list">欧洲(99)</a></li>
			            <li><a rel="dny" href="/gonglve/mdd-dny-0-0-1.html#list">东南亚(66)</a></li>
			            <li><a rel="bmz" href="/gonglve/mdd-bmz-0-0-1.html#list">北美(32)</a></li>
			            <li><a rel="ny" href="/gonglve/mdd-ny-0-0-1.html#list">南亚(22)</a></li>
			            <li><a rel="dy" href="/gonglve/mdd-dy-0-0-1.html#list">东亚(21)</a></li>
			            <li><a rel="dyz" href="/gonglve/mdd-dyz-0-0-1.html#list">大洋洲(20)</a></li>
			            <li><a rel="fz" href="/gonglve/mdd-fz-0-0-1.html#list">非洲(17)</a></li>
			            <li><a rel="xy" href="/gonglve/mdd-xy-0-0-1.html#list">西亚(7)</a></li>
			            <li><a rel="nmz" href="/gonglve/mdd-nmz-0-0-1.html#list">南美(3)</a></li>
			            <li><a rel="njz" href="/gonglve/mdd-njz-0-0-1.html#list">南极洲(1)</a></li>
			        </ol>
			        <div class="clear"></div>
			</div>
			<div class="gl_wrap">
			    <h3><a href="/gonglve/zt-1000-0-0-0.html#list">主题攻略</a></h3>
			    <ol>
			            <li><a href="/gonglve/zt-1037-0-0-0.html#list">户外(17)</a></li>
			            <li><a href="/gonglve/zt-1049-0-0-0.html#list">休闲(17)</a></li>
			            <li><a href="/gonglve/zt-1022-0-0-0.html#list">文化(15)</a></li>
			            <li><a href="/gonglve/zt-1006-0-0-0.html#list">美食(13)</a></li>
			            <li><a href="/gonglve/zt-1051-1-0-0.html#list">数据报告(11)</a></li>
			            <li><a href="/gonglve/zt-1027-0-0-0.html#list">购物(10)</a></li>
			            <li><a href="/gonglve/zt-1044-0-0-0.html#list">节庆(10)</a></li>
			            <li><a href="/gonglve/zt-1026-0-0-0.html#list">观赏(9)</a></li>
			            <li><a href="/gonglve/zt-1017-0-0-0.html#list">自驾(8)</a></li>
			            <li><a href="/gonglve/zt-1023-0-0-0.html#list">必备(8)</a></li>
			            <li><a href="/gonglve/zt-1014-0-0-0.html#list">周边(7)</a></li>
			            <li><a href="/gonglve/zt-1016-0-0-0.html#list">摄影(7)</a></li>
			            <li><a href="/gonglve/zt-1050-0-0-0.html#list">旅行主义(7)</a></li>
			            <li><a href="/gonglve/zt-1046-0-0-0.html#list">特别策划(5)</a></li>
			            <li><a href="/gonglve/zt-1047-0-0-0.html#list">建筑(5)</a></li>
			            <li><a href="/gonglve/zt-1033-0-0-0.html#list">家庭(3)</a></li>
			            <li><a href="/gonglve/zt-1045-0-0-0.html#list">星旅行(3)</a></li>
			            <li><a href="/gonglve/zt-1003-0-0-0.html#list">滑雪(1)</a></li>
			     </ol>
			    <span class="sp_toggle"><a class="more_selector" href="javascript:void(0);">更多</a></span>    <div class="clear"></div>
			</div>
			<div class="p_upw">
		    	<div class="uptime_p">
                    <a class="upt_on" href="/gonglve/mdd-0-0-0-1.html#list">本月最受欢迎</a>
		            <span>|</span>
		            <a  href="/gonglve/mdd-0-3-0-1.html#list">下载人气</a>
		            <span>|</span>
		            <a href="/gonglve/mdd-0-1-0-1.html#list">更新时间</a>
	                <div class="clear"></div>
				</div>
			    <div class="mfw_de">
			        <p>蚂蜂窝旅游攻略已覆盖全球 <a href="/gonglve/mdd-cn-0-0-0.html#list"><span>502</span></a> 个地区 <a href="/gonglve/zt-1000-0-0-0.html#list"><span>156</span></a> 个品类。已有<span> 289649706 </span>位蜂蜂的旅行从这里开始</p>
			    </div>
			    <div class="clear"></div>
			</div>
			<div class="gonglve_wrap">
				<div class="gl_fw">
					<div class="gl_cw">
							<c:forEach items="${sts }" var="s"  varStatus="status">
								<div class="gl_list">
									<a target="_blank" title="${s.travelStrategy.name }" href="<%=request.getContextPath()%>/strategy/show/${s.travelStrategy.id }">
										<img alt="${s.travelStrategy.name }" src="<%=request.getContextPath()%>/resources/upload/thumbnail/${s.attachment.newName}">
									</a>
									<div class="update_time">${s.travelStrategy.modifyDate }</div>
									<div class="down_cout">
										<span></span>
										<p>5154720人下载</p>
									</div>
								</div>
							</c:forEach>
						<div class="clear"></div>
					</div>
				</div>
		  	
				<div id="more_content"></div>
				<div class="show_more">
        		<a rel="mdd-0-0-0" id="pager" href="javascript:void(0);">显示更多</a>
    		</div>
			</div>
		</div>
		
	</body>
</html>
