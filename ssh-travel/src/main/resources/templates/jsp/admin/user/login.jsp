<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>MFM后台登录</title>

<!-- Bootstrap Core CSS -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/bootstrap.css" />
<!-- MetisMenu CSS -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/metisMenu.css"/>
<!-- Custom Fonts -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/font-awesome.css"/>
<!-- Custom CSS -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/core/travel.admin.css" />

<!-- jQuery -->
<script src="<%=request.getContextPath()%>/resources/js/jquery.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="<%=request.getContextPath()%>/resources/js/bootstrap.js"></script>
<!-- Metis Menu Plugin JavaScript -->
<script src="<%=request.getContextPath()%>/resources/js/metisMenu.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/jquery.validate.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/core/travel.admin.plugins.js"></script>
<!-- Custom Theme JavaScript -->
<script src="<%=request.getContextPath()%>/resources/js/core/travel.admin.js"></script>
<style type="text/css">
.errorContainer{
	color: red;
}
</style>
<script type="text/javascript">
	$(function (){
		$("#login").click(function (){
			
			var validate = $("#loginForm").cmsvalidate();
			$("#login").click(function(){
				if(validate.valid()) {
					$("#loginForm").submit();
					$(this).attr("disabled");
				}
			});
			
		});
	});
</script>

</head>

<body>
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Please Sign In</h3>
                    </div>
                    <div class="panel-body">
                        <form role="form" id="loginForm" method="post"> 
                            <fieldset>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Username" name="username" type="text" autofocus><span  id="username_error" class="errorContainer center"></span>
                                </div>
                                <div class="form-group">
                                    <input class="form-control"  placeholder="Password" name="password" type="password"><span id="password_error" class="errorContainer"></span>
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input name="remember" type="checkbox" value="Remember Me">Remember Me
                                    </label>
                                </div>
                                <!-- Change this to a button or input when using this as a form -->
                                <button type="button" id="login" class="btn btn-lg btn-success btn-block">Login</button>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>

</html>
