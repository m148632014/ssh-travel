<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/core/forward_to_email.css" />
</head>
<body>
	<div class="wrapper">
		<div class="container">
			<a class="logo" title="返回首页" href="index.html">蚂蜂窝</a>
			<div id="signup-forms" class="signup-forms">
				<div class="signup-box">
					<div class="ver-email">
						<div class="hd">
							<p>
								邮件已发送到您的邮箱<br> <span>${email }</span><br>
								请点击邮箱中的验证链接完成验证
							</p>
						</div>
						<a class="btn-link" target="_blank" href="http://mail.sina.com.cn">前往邮箱验证</a>
						<div class="tips">
							<p class="title">------------没有收到邮件？------------</p>
							<p>❶ 看看Email地址有没有写错</p>
							<p>❷ 看看是否在垃圾邮箱里</p>
							<p>
								❸ 试试重新<a href="/public/regist?email=m148632015@sina.com">申请发送</a>验证链接
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="photoby">
		< <a target="_blank" href="http://www.mafengwo.cn/i/1080638.html">人生若只如初见-沉醉在丽江</a>
		> by <a target="_blank" href="http://www.mafengwo.cn/u/17159743.html">莫小染℡●</a>
	</div>
	<div class="fullscreen-bg" style="background-image: url('http://localhost:8080/travel/resources//css/core/img/login/33.jpg');">
			<img src="<%=request.getContextPath() %>/resources/css/core/img/login/33.jpg" style="width: 1920px; height: auto; margin-top: -208px;">
	</div>
</body>
</html>
