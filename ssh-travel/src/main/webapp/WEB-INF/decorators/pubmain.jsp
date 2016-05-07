<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><decorator:title/></title>
		<!-- icon -->
		<link rel='icon' href='<%=request.getContextPath()%>/resources/css/core/img/index/firefox1.ico' type='image/x-ico' />
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/core/footer.css" />
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/core/strategy.css" />
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/core/header.css"  />
		<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/core/jquery.mfm.thumbslider.js" ></script>
		<decorator:head/>
</head>
<body>
<!--Header-->
		<div id="header">
			<div class="mfm-header">
				<div class="header-wrap">
					<div class="head-logo">
						<a href="#" title="马蜂窝自由行" class="mfm-logo"></a>
					</div>					
					<ul class="head-nav">
						<li class="head-nav-active">
							<a href="<%=request.getContextPath()%>/travelnote/travelnotes">首页</a>
						</li>
						<li>
							<a title="目的地" href="#">目的地</a>
						</li>
						<li>
							<a title="旅游攻略" href="<%=request.getContextPath()%>/strategy/strategys">旅游攻略</a>
						</li>
						<li>
							<a class="drop-toggle" data-sales-nav="商城" style="cursor: pointer;display: block;border-bottom:0 none;" href="#">
							<span>
							商城
							<i class="icon-caret-down"></i>
							</span>
						<li>
							<a title="酒店" href="#">酒店</a>
						</li>
						<li>
							<a class="drop-toggle" data-sales-nav="商城" style="cursor: pointer;display: block;border-bottom:0 none;" href="#">
							<span>
							社区
							<i class="icon-caret-down"></i>
							</span>
						<li>
						<li class="head-nav-app" data-cs-p="app">
							<a title="APP" href="#">APP</a>
						</li>
					</ul>
					
					<div class="login-out">
						<a class="weibo-login" rel="nofollow" title="微博登录" href="https://passport.mafengwo.cn/weibo"></a>
						<a class="qq-login" rel="nofollow" title="QQ登录" href="https://passport.mafengwo.cn/qq"></a>
						<a class="weixin-login" rel="nofollow" title="微信登录" href="https://passport.mafengwo.cn/wechat"></a>
						<a id="_j_showlogin" rel="nofollow" href="https://passport.mafengwo.cn" title="登录蚂蜂窝">登录</a>
						<span class="split">|</span>
						<a rel="nofollow" title="注册帐号" href="http://localhost:8080/travel/regist">注册</a>
					</div>
					<div class="login-info">
						<div class="head-user">
							<a class="drop-trigger" title="悲伤的LKM的窝" href="http://www.mafengwo.cn/u/91493139.html">
								<div class="user-image">
								<img width="32" height="32" alt="悲伤的LKM的窝" src="<%=request.getContextPath()%>/resources/css/core/img/header/myusericon.jpeg">
								</div>
								<i class="icon-caret-down"></i>
							</a>
							
						</div>
						<div class="head-msg">
							<a class="drop-trigger"  href="#">
								<i class="icon-msg"></i>
								消息
								<i class="icon-caret-down"></i>
								<span class="head-msg-new hide" style="display: none;"></span>
							</a>
							
						</div>
						<div class="head-daka">
							<a href="#">打卡</a>
						</div>
					</div>
				</div>				
				<div class="dropdown-group">
					<div data-cs-t="user_nav" class="dropdown-menu dropdown-user" style="display: none;">
		                <div class="user-info">
		                    <a data-cs-p="level" rel="nofollow" title="我的等级" target="_blank" href="http://www.mafengwo.cn/rank/lv.php" class="level"><b>LV.2</b></a>
		                    <a data-cs-p="coin" rel="nofollow" id="head-my-coin" title="我的蜂蜜" target="_blank" href="http://www.mafengwo.cn/mall/" class="coin">蜂蜜 0</a>
		                </div>
			                <ul>
			                    <li><a data-cs-p="wo" rel="nofollow" title="我的蚂蜂窝" target="_blank" href="http://www.mafengwo.cn/u/91493139.html"><i class="icon-wo"></i>我的蚂蜂窝</a></li>
			                    <li><a data-cs-p="writenotes" rel="nofollow" title="写游记" class="drop-write" target="_blank" href="http://www.mafengwo.cn/note/create_index.php"><i class="icon-writenotes"></i>写游记</a></li>
			                    <li data-cs-p="页头_我的足迹" data-cs-t="足迹_首页"><a rel="nofollow" title="我的足迹" target="_blank" href="http://www.mafengwo.cn/path/91493139.html"><i class="icon-path"></i>我的足迹</a></li>
			                    <li><a data-cs-p="wenda" rel="nofollow" title="我的问答" target="_blank" href="http://www.mafengwo.cn/wenda/u/91493139.html"><i class="icon-wenda"></i>我的问答</a></li>
			                    <li><a data-cs-p="friend" rel="nofollow" title="我的好友" target="_blank" href="http://www.mafengwo.cn/recnew/follow.php?uid=91493139"><i class="icon-friend"></i>我的好友</a></li>
			                    <li><a data-cs-p="collect" rel="nofollow" target="_blank" title="我的收藏" href="http://www.mafengwo.cn/plan/fav_type.php"><i class="icon-collect"></i>我的收藏</a></li>
			                    <li><a data-cs-p="order" rel="nofollow" target="_blank" title="我的订单" href="http://www.mafengwo.cn/sales/order.php"><i class="icon-order"></i>我的订单</a></li>
			                    <li><a data-cs-p="coupon" rel="nofollow" target="_blank" title="我的优惠券" href="http://www.mafengwo.cn/sales/coupon.php"><i class="icon-coupon"></i>我的优惠券</a></li>
			                    <li><a data-cs-p="settings" rel="nofollow" target="_blank" title="我的设置" href="http://www.mafengwo.cn/home/userinfo.php"><i class="icon-settings"></i>设置</a></li>
			                    <li><a rel="nofollow" title="退出登录" href="http://www.mafengwo.cn/s/loginout.html"><i data-cs-p="logout" class="icon-logout"></i>退出</a></li>
			                </ul>
			            </div>
				</div>
				<div class="shadow"></div>
			</div>
		</div>

<decorator:body/>

<!--Footer-->
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
		<div class="foot-elephant flip" id="_j_elephantscrolltop">
			<a title="返回顶部"><i class="i1"></i><i class="i2"></i></a>
		</div>
</body>
</html>