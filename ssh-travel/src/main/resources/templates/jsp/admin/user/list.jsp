<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>List</title>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/dwr/engine.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/dwr/interface/dwrService.js"></script>
<script type="text/javascript">
	$(function() {
		$("#dataTables").DataTable({
			"pagingType" : "full_numbers",
			//"lengthMenu" : [ [ 3, 10, 25, -1 ], [ 3, 10, 25, "All" ] ]
		});

		$(".delBtn").on("click", function() {
			var id = $(this).data("id");
			var ad = this;
			dwrService.deleteUser(id, function(data) {
				$(ad).parent("td").parent("tr").remove();
			});
		});
	})
</script>
</head>
<body>
	 <input type="hidden" value="<%=request.getContextPath()%>" id="ctx">
	<section id="page-wrapper">
		<div class="row">
		<div class="col-lg-12">
			<div class="panel-body text-right">
				<a class="btn btn-social btn-google-plus" href="add.html"> <i
					class="fa fa-google-plus"></i>添加
				</a>
			</div>
			<!-- /.panel -->
		</div>
	</div>
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading">用户</div>
				<!-- /.panel-heading -->
				<div class="panel-body">
					<div class="dataTable_wrapper">
						<table class="table table-striped table-bordered table-hover"
							id="dataTables">
							<thead>
								<tr>
									<th>id</th>
									<th>username</th>
									<th>nickname</th>
									<th>password</th>
									<th>type</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${users }" var="u">
									<tr>
										<td>${u.id }</td>
										<td>${u.username }</td>
										<td>${u.nickname }</td>
										<td>${u.password }</td>
										<td>${u.type==1?'管理员':'普通用户'}</td>
										<td class="center"><button
												class="btn btn-primary btn-xs delBtn" data-id="${u.id }">
												<i class="fa fa-google-plus"></i>删除
											</button>&nbsp;
											<button class="btn btn-success btn-xs updateBtn">
												<i class="fa fa-github" data-id="${u.id }"></i>更新
											</button></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>

				</div>
				<!-- /.panel-body -->
			</div>
			<!-- /.panel -->
		</div>
		<!-- /.col-lg-12 -->
	</div>
	</section>
</body>
</html>