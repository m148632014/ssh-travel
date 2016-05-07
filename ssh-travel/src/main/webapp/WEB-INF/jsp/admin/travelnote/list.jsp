<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="<%=request.getContextPath()%>/dwr/engine.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/dwr/interface/dwrService.js"></script>
<script type="text/javascript">
	$(function() {
		$(".delBtn").on("click", function() {
			var id = $(this).data("id");
			var ad = this;
			dwrService.deleteStrategy(id, function(data) {
				$(ad).parent("td").parent("tr").remove();
			});
		});
	})
</script>
<title>旅游游记</title>
</head>
<body>
	<!-- Right Content-->
	<section id="page-wrapper">
	<div class="row">
		<div class="col-lg-12">
			<div class="panel-body text-right">
				<a class="btn btn-social btn-google-plus" href="add"> <i
					class="fa fa-google-plus"></i> 游记管理
				</a> <a class="btn btn-social btn-facebook" href="strategys"> <i
					class="fa fa-facebook"></i> 游记列表
				</a> 
			</div>
			<!-- /.panel -->
		</div>
	</div>
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading">游记列表</div>
				<!-- /.panel-heading -->
				<div class="panel-body">
					<div class="dataTable_wrapper">
						<table class="table table-striped table-bordered table-hover"
							id="dataTables">
							<thead>
								<tr>
									<th>游记标题</th>
									<th>添加人</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${travelnotes}" var="tn">
									<tr>
										<td><a href="show/${tn.id }">${tn.title}</a></td>
										<td>${s.userId }</td>
										<td><a class="delBtn btn btn-danger" data-id="${tn.id }" href="<%=request.getContextPath() %>/admin/travelnote/delete/${tn.id }">删除</a>
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