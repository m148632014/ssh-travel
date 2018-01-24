<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<title></title>
		<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/core/regist_confirm.css" />
			<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery.js"></script>
		<script type="text/javascript">
			$(function (){
				$("#email_registBtn").click(function(){
					$("#email_regist").submit();
				});
				
			});
		</script>
	</head>

	<body>
		<div class="wrapper">
			<div class="container">
				<a class="logo" title="返回首页" href="index.html">蚂蜂窝</a>
				<div class="signup-forms">
                <div class="signup-box">
                    <div class="add-info">
                     	   <div class="hd">帐号注册</div>
                           <form id="email_regist" method="post">
                           <input type="hidden" name="email" value="${email }">
                            <div class="form-field m-t-10">
                                <input type="text" data-verification-name="名号" autocomplete="off" placeholder="您的名号" name="nickname" data-verification-result="failed">
                                <div class="err-tip" style="display: none;">名号不能为空</div>
                            </div>
                            <div class="form-field">
                                <input type="password" class="verification[required,minSize[6],maxSize[50]]" data-verification-name="密码" autocomplete="off" placeholder="您的密码" name="password" data-verification-result="failed">
                                <div class="err-tip" style="display: none;">密码不能为空</div>
                            </div>
                            <div class="form-field">
                                <input type="password" data-verification-name="密码" autocomplete="off" placeholder="确认密码" name="rpassword" data-verification-result="success">
                                <div class="err-tip" style="display: none;"></div>
                            </div>
                            <div class="form-field">
                                <div class="clearfix">
                                    <a class="vcode-send verify-code-send" href="#"><img src="<%=request.getContextPath() %>/resources/css/core/img/login/verifyCode.jpg"></a>
                                    <input type="text" class="vcode-input" data-verification-name="验证码" autocomplete="off" placeholder="验证码" name="code" data-verification-result="failed">
                                </div>
                                <div class="err-tip clearfix" style="display: none;">验证码不能为空</div>
                            </div>
                            <div class="submit-btn">
                                <button type="submit" id="email_registBtn">完成注册</button>
                            </div>
                        </form>
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