<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<title></title>
		<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/core/regist.css" />
		<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery.js"></script>
		<script type="text/javascript">
			$(function (){
				$(".more").click(function(){
					var parent = $(this).parentsUntil(".connect");
					if(parent.hasClass("open")){
						parent.removeClass('open');
			        } else {
			        	parent.addClass('open');
			        }
				});
				
				var  email_input = "<input type='text' value='' autocomplete='off' placeholder='您的邮箱' name='email'><div class='err-tip'></div>";
				var  email_a = "使用邮箱注册";
				
				var phone_input = "<input type='text' value=''  autocomplete='off' placeholder='您的手机号码' name='phone'><div class='err-tip'></div>";
				var phone_a = "使用手机号码注册";
				$(".form-link a").on("click",function(){
					if($(this).html()=='使用手机号码注册'){
						$(this).html(email_a);
						$(".form-field").html(phone_input);
					}else{
						$(this).html(phone_a);
						$(".form-field").html(email_input);
					}
					
				});
				$("#registBtn").click(function(){
					if($(".form-link a").html() =='使用手机号码注册'){
						$("#regist").attr("action", "regist/mail");
						$("#regist").attr("method", "post");
					}else{
						$("#regist").attr("action", "regist/sms");
						$("#regist").attr("method", "get");
					}
					$("#regist").submit();
				});
				
			});
		</script>
	</head>

	<body>
	<form id="regist">
		<div class="wrapper">
			<div class="container">
				<a class="logo" title="返回首页" href="index.html">蚂蜂窝</a>
				<div class="signup-forms">
					<div class="signup-box">
						<div class="inner">
							<div class="form-field">
								<input type='text' value='' autocomplete='off' placeholder='您的邮箱' name='email'><div class='err-tip'></div>
							</div>
							<div class="form-link">
								<a href="#">使用手机号码注册</a>
							</div>
							<div class="submit-btn">
								<button id="registBtn" type="submit">立即注册</button>
							</div>
							<div class="agreement">
								注册视为同意
								<a href="http://www.mafengwo.cn/s/agreement.html" target="_blank">《蚂蜂窝用户使用协议》</a>
							</div>
							<div class="connect">
							  	  <p class="hd">用合作网站账户直接登录</p>
									 <div class="bd">
								        <a class="weibo" href="/weibo"><i></i>新浪微博</a>
								        <a class="qq" href="/qq"><i></i>QQ</a>
								        <a class="renren" href="/renren"><i></i>人人网</a>
								        <a class="more"><i></i>更多</a>
								        <div class="clear"></div>
								        <a class="weixin" href="/wechat"><i></i>微信</a>
								        <a class="aq360" href="/360"><i></i>360</a>
								        <div class="clear"></div>
								   </div>
							</div>
						</div>
						<div class="bottom-link">
							已经注册?
							<a href="#">马上登录</a>
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
		</form>
	</body>

</html>