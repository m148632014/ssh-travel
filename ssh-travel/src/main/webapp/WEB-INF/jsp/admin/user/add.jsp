<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add</title>
</head>
<body>
	<section id="page-wrapper">
		<div class="row">
			<div class="col-lg-12">
				<hr>
			</div>
			<div class="col-lg-12">
				<div class="panel panel-primary">
					<div class="panel-heading">攻略管理>>添加攻略</div>
					<!-- /.panel-heading -->
					<form id="addForm">
						<div class="panel-body">
							<div class="row">
								<div class="col-lg-12">
									<div class="form-group">
										<label>用户名</label> <input class="form-control">
										<p class="help-block">如：sun</p>
									</div>
									<div class="form-group">
										<label>昵称</label> <input class="form-control">
										<p class="help-block">如：孙悟空</p>
									</div>
									<div class="form-group">
										<label>密码</label> <input class="form-control" type="password">
									</div>
								</div>
							</div>
						</div>
						<!-- /.panel-body -->
						<div class="panel-footer">
							<div class="row">
								<div class="col-lg-2 col-lg-offset-10">
									<a class="btn btn-social" id="addBtn"> <i
										class="fa fa-github"></i>添加用户
									</a> <a class="btn btn-social"> <i class="fa fa-twitter"
										id="cancelBtn"></i>取消
									</a>
								</div>
							</div>
						</div>
				</div>
				</form>
				<!-- /.panel -->
			</div>
			<!-- /.col-lg-12 -->
	</div>

	</section>
</body>
</html>