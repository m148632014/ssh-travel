<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/core/settings.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/core/footer.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/core/header.css"  />
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/core/jquery.mfm.thumbslider.js" ></script>
<script type="text/javascript">
	$(function() {
		$(".show-slider").thumbslider();
		$(".small_slider").smallslider();
		
		//返回顶部,控制出现时机
		$(window).scroll(function() {
			var h = $(document).scrollTop();
			if(h>100){
				$(".foot-elephant").fadeIn();	
			}else{
				$("#foot_elephant").fadeOut();
			}
		});
		//返回顶部
		$(".foot-elephant").click(function(e) {
			e.preventDefault();
			$(document.body).animate({scrollTop:0}, 800);
		});
		
		$("#saveMyInfo").click(function(e){
			//$("#myinfoForm").cmsvalidate();
			$("#myinfoForm").submit();
		});
	});
</script>
</head>
<body>
		<div id="header">
			<div class="header-wrap clearfix">
	           	<div class="head-logo"><a class="mfw-logo" title="蚂蜂窝自由行" href="#"></a></div>
	           	<ul class="head-nav" >
	                <li class="head-nav-index head-nav-active" ><a href="#">首页</a></li>
	                <li class="head-nav-strategty" ><a href="#" title="旅游攻略">旅游攻略</a></li>
	                <li class="head-nav-route"><a href="#" title="驴友活动">驴友活动<a></li>
	          		 </ul>
	           </div>
		</div>
	
	
		<div class="wrapper">
			<div class="aside">
				<a class="on" href="settings.html"><i class="i1"></i>我的信息</a> <a
					href="settings_avatar.html"><i class="i2"></i>我的头像</a> <a
					href="settings_sns.html"><i class="i3"></i>绑定设置</a> <a
					href="settings_security.html"><i class="i4"></i>账号安全</a> <a
					href="settings_domain.html"><i class="i8"></i>我的窝设置</a> <a
					href="settings_blacklist.html"><i class="i9"></i>黑名单管理</a>
			</div>
	
			<div class="content">
				<div class="hd">
					<strong>我的信息</strong> <span> 资料完善度
						<div class="progress">
							<div class="num">20%</div>
							<div style="width: 20%" class="on"></div>
						</div>
					</span>
				</div>
	
				<div class="userinfo">
					<form id="myinfoForm" method="post">
						<dl class="clearfix">
							<dt>名号：</dt>
							<dd>
								<input type="text"
									class="verification[required,minSize[1],maxSize[16]]"
									data-verification-name="名号" autocomplete="off" maxlength="16"
									value="${ sessionScope.loginPu.nickname}" name="nickname" data-verification-result="success">
							</dd>
						</dl>
						<dl class="clearfix">
							<dt>性别：</dt>
							<dd>
								<label><span class="cssradio"><input type="radio"
										value="1" name="gender"><span></span></span>男</label> <label><span
									class="cssradio"><input type="radio" value="0"
										name="gender"><span></span></span>女</label> <label><span
									class="cssradio <c:if test="${sessionScope.loginPu.sex == 2}">on</c:if>"><input type="radio" checked="true"
										value="${ sessionScope.loginPu.sex}" name="gender"><span></span></span>保密</label>
							</dd>
						</dl>
						<dl class="clearfix">
							<dt>居住城市：</dt>
							<dd>
								<div class="input-group">
									<input type="text" class="" autocomplete="off" value="" name="liveCity">
									<ul class="input-suggest"></ul>
								</div>
							</dd>
						</dl>
						<dl class="clearfix">
							<dt>出生日期：</dt>
							<dd>
								<input type="text" autocomplete="off" class=""
									data-verification-name="出生日期"  name="birthday">
							</dd>
						</dl>
						<dl class="clearfix">
							<dt>个性签名：</dt>
							<dd>
								<textarea maxlength="100"  name="sign"></textarea>
							</dd>
						</dl>
						<dl class="clearfix">
							<!--           不存在    <dt>收货地址：</dt>
	                                    <dd class="myaddress">
	                        <a href="/setting/address/">新增收货地址</a>
	                    </dd>
	                            </dl>
	                        <dl class="clearfix">
	                <dt></dt>
	                <dd class="tips">
	                    <p class="title"><b>**</b>提示信息<b>**</b></p>
	                    <p>如果您在蚂蜂窝活动中获得奖品，我们将按照该收货地址发送奖品，
	                        所以请填写 真实有效 的收货信息。</p>
	                </dd>
	                -->
							<dt>收货地址:存在</dt>
							<dd class="myaddress">
								<ul class="address">
									<li>
										<div class="clearfix">
											<div class="dt">收货人：</div>
											<div class="dd">孟繁茂</div>
										</div>
										<div class="clearfix">
											<div class="dt">详细地址：</div>
											<div class="dd">
												<p>北京市昌平区中软实训大楼</p>
											</div>
										</div>
										<div class="clearfix">
											<div class="dt">邮政编码：</div>
											<div class="dd">
												<p>030001</p>
											</div>
										</div>
										<div class="clearfix">
											<div class="dt">手机号码：</div>
											<div class="dd">13935172327</div>
										</div>
										<div class="i-first">默认地址</div>
										<div class="btns">
											<a href="/setting/address/">管理收货地址</a>
										</div>
									</li>
								</ul>
							</dd>
						</dl>
	
						<div class="btn-sub">
							<button id="saveMyInfo" type="submit">保存</button>
						</div>
					</form>
				</div>
	
			</div>
		</div>
		
		<div id="footer">
			<div class="ft-content">
				<div class="ft-info">
					<dl class="ft-info-intro">
						<dt>中国领先的自由行服务平台</dt>
						<dd>覆盖全球200多个国家和地区</dd>
						<dd><strong>100,000,000</strong> 位旅行者</dd>
						<dd><strong>920,000</strong> 家国际酒店</dd>
						<dd><strong>21,000,000</strong> 条真实点评</dd>
						<dd><strong>382,000,000</strong> 次攻略下载</dd>
					</dl>
					<dl class="ft-info-about">
						<dt>关于我们</dt>
						<dd><a href="#" rel="nofollow">关于蚂蜂窝</a></dd>
						<dd><a href="#" rel="nofollow">招商与合作</a></dd>
						<dd><a href="#" rel="nofollow">网络信息侵权通知指引</a></dd>
						<dd><a href="#" rel="nofollow">隐私政策</a></dd>
						<dd><a href="#" rel="nofollow">服务协议</a></dd>
						<dd><a class="joinus highlight" title="蚂蜂窝团队招聘" target="_blank" href="#" rel="nofollow">加入蚂蜂窝</a></dd>
					</dl>
					<dl class="ft-info-service">
						<dt>旅行服务</dt>
						<dd>
							<ul class="clearfix">
								<li><a target="_blank" href="http://www.mafengwo.cn/gonglve/">旅游攻略</a></li>
								<li><a target="_blank" href="http://www.mafengwo.cn/hotel/">酒店预订</a></li>
								<li><a target="_blank" href="http://www.mafengwo.cn/sales/">旅游特价</a></li>
								<li><a target="_blank" href="http://zuche.mafengwo.cn/">国际租车</a></li>
								<li><a target="_blank" href="http://www.mafengwo.cn/wenda/">旅游问答</a></li>
								<li><a target="_blank" href="http://www.mafengwo.cn/insure/">旅游保险</a></li>
								<li><a target="_blank" href="http://z.mafengwo.cn">旅游指南</a></li>
								<li><a target="_blank" href="http://visa.mafengwo.cn">签证办理</a></li>
								<li><a target="_blank" href="http://www.mafengwo.cn/travel-news/">旅游资讯</a></li>
								<li><a target="_blank" href="http://huoche.mafengwo.cn">订火车票</a></li>
							</ul>
						</dd>
					</dl>
					<dl class="ft-info-qrcode">
						<dd>
							<span class="ft-qrcode-tejia"></span>
							<p>蚂蜂窝良品</p>
						</dd>
						<dd>
							<span class="ft-qrcode-weixin"></span>
							<p>蚂蜂窝官方微信</p>
						</dd>
					</dl>
					<dl class="ft-info-social">
						<dt>关注我们</dt>
						<dd>
							<a class="ft-social-weibo" target="_blank" href="http://weibo.com/mafengwovip" rel="nofollow"><i class="ft-social-icon"></i></a>
							<a class="ft-social-qqt" target="_blank" href="http://t.qq.com/mafengwovip" rel="nofollow"><i class="ft-social-icon"></i></a>
							<a class="ft-social-qzone" target="_blank" href="http://1213600479.qzone.qq.com/" rel="nofollow"><i class="ft-social-icon"></i></a>
						</dd>
					</dl>
				</div>
				<div class="ft-links">
					<a target="_blank" href="http://china.makepolo.com/">马可波罗</a>
					<a target="_blank" href="http://www.onlylady.com/">Onlylady女人志</a>
					<a target="_blank" href="http://trip.elong.com/">艺龙旅游指南</a>
					<a target="_blank" href="http://www.cncn.com">欣欣旅游网</a>
					<a target="_blank" href="http://www.8264.com/">户外运动</a>
					<a target="_blank" href="http://www.laidingba.com">酒店网</a>
					<a target="_blank" href="http://www.yue365.com/">365音乐网</a>
					<a target="_blank" href="http://www.becod.com/">百酷特色住宿</a>
					<a target="_blank" href="http://www.uzai.com/">悠哉旅游网</a>
					<a target="_blank" href="http://www.zongheng.com/">小说网</a>
					<a target="_blank" href="http://www.laidingba.com/">来订吧酒店网</a>
					<a target="_blank" href="http://www.yododo.com">游多多自助游</a>
					<a target="_blank" href="http://www.kuxun.cn">机票</a>
					<a target="_blank" href="http://huoche.mafengwo.cn/">火车时刻表</a>
					<a target="_blank" href="http://www.lvmama.com">驴妈妈旅游网</a>
					<a target="_blank" href="http://www.haodou.com/">好豆美食网</a>
					<a target="_blank" href="http://www.taoche.com/">二手车</a>
					<a target="_blank" href="http://www.lvye.cn">绿野户外</a>
					<a target="_blank" href="http://www.tuniu.com/">途牛旅游网</a>
					<a target="_blank" href="http://www.mapbar.com/">图吧</a>
					<a target="_blank" href="http://www.chnsuv.com">SUV联合越野</a>
					<a target="_blank" href="http://www.uc.cn/">手机浏览器</a>
					<a target="_blank" href="http://sh.city8.com/">上海地图</a>
					<a target="_blank" href="http://www.tianqi.com/">天气预报查询</a>
					<a target="_blank" href="http://www.ly.com/">同程旅游</a>
					<a target="_blank" href="http://www.tieyou.com/">火车票</a>
					<a target="_blank" href="http://www.jinjiang.com">锦江旅游</a>
					<a target="_blank" href="http://www.huoche.net/">火车时刻表</a>
					<a target="_blank" href="http://www.tripadvisor.cn/">TripAdvisor</a>
					<a target="_blank" href="http://www.tianxun.com/">天巡网</a>
					<a target="_blank" href="http://www.zizaike.com">自在客</a>
					<a target="_blank" href="http://www.zuzuche.com">租租车</a>
					<a target="_blank" href="http://www.5fen.com/">五分旅游网</a>
					<a target="_blank" href="http://www.zhuna.cn/">酒店预订</a>
					<a target="_blank" href="http://you.ctrip.com/">携程旅游</a>
					<a target="_blank" href="http://www.ailvxing.com">爱旅行网</a>
					<a target="_blank" href="http://360.mafengwo.cn/all.php">旅游</a>
					<a target="_blank" href="http://vacations.ctrip.com/">旅游网</a>
					<a target="_blank" href="http://www.wed114.cn">wed114结婚网</a>
					<a target="_blank" href="http://www.chexun.com/">车讯网</a>
					<a target="_blank" href="http://www.aoyou.com/">遨游旅游网</a>
					<a target="_blank" href="http://www.91.com/">手机</a>
					<a target="_blank" href="http://www.keyunzhan.com/">客运站</a>
					<a href="http://www.mafengwo.cn/s/link.html" target="_blank">更多友情链接&gt;&gt;</a>
				</div>
				<div class="ft-copyright">
					<div class="ft-safety">
						<a class="s-a" target="_blank" href="#" id="___szfw_logo___"></a>
						<a class="s-b" href="#" target="_blank" rel="nofollow"></a>
					</div>
					<a href="http://www.mafengwo.cn"><i class="ft-mfw-logo"></i></a>
					<p>© 2015 Mafengwo.cn <a href="http://www.miibeian.gov.cn/" target="_blank" rel="nofollow">京ICP备11015476号</a> 京公网安备110105013401号 京ICP证110318号 新出网证(京)字242号</p>
					<p><span class="highlight">蚂蜂窝总机</span> 400 166 6866&nbsp;&nbsp;&nbsp;工作时间 10:00-18:30&nbsp;&nbsp;&nbsp;<a target="_blank" href="http://www.mafengwo.cn/s/sitemap.html" class="highlight">网站地图</a></p>
				</div>
			</div>
		</div>
		<!--返回顶部-->
		<div class="foot-elephant flip" id="foot_elephant">
			<a title="返回顶部"><i class="i1"></i><i class="i2"></i></a>
		</div>
</body>
</html>
