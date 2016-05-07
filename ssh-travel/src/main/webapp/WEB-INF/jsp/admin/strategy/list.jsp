<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
			dwrService.deleteTravelNote(id, function(data) {
				if(confirm("真的要删除用户游记及游记所有信息吗！！此操作不可逆，确认删除吗？")){
					$(ad).parent("td").parent("tr").remove();
				}
			});
		});
	})
</script>

<script src="<%=request.getContextPath()%>/resources/js/core/travel.admin.plugins.js"></script>
<script type="text/javascript">
	$(function(){
		$("td.brief").formatTopic();
	});
</script>
<title>旅游攻略</title>
</head>
<body>


	<!-- Right Content-->
	<section id="page-wrapper">
	<div class="row">
		<div class="col-lg-12">
			<div class="panel-body text-right">
				<a class="btn btn-social btn-google-plus" href="add"> <i
					class="fa fa-google-plus"></i> 添加攻略
				</a> <a class="btn btn-social btn-facebook" href="strategys"> <i
					class="fa fa-facebook"></i> 攻略列表
				</a> 
			</div>
			<!-- /.panel -->
		</div>
	</div>
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
		        <div class="panel-heading">
                            	攻略管理>>攻略列表
                 </div>
				<!-- /.panel-heading -->
				<div class="panel-body">
					<div class="dataTable_wrapper">
						<table class="table table-striped table-bordered table-hover" id="dataTable">
							<thead>
								<tr>
									<th>攻略名称</th>
									<th>关键字</th>
									<th>简介</th>
									<th>创建时间</th>
									<th>修改时间</th>
									<th>添加人</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${pages.datas}" var="s">
									<tr>
										<td><a
											href="show/${s.id }">${s.name}</a></td>
										<td>${s.keyword }</td>
										<td class="brief">${s.brief}</td>
										<td><fmt:formatDate value="${s.createDate}"
												pattern="yyyy-MM-dd HH:mm" /></td>
										<td><fmt:formatDate value="${s.modifyDate}"
												pattern="yyyy-MM-dd HH:mm" /></td>
										<td>${s.userId }</td>
										<td>
											<a class="btn btn-danger delBtn" data-id="${s.id }">删除</a>&nbsp;
										    <a class="btn btn-success updateBtn" href="<%=request.getContextPath() %>/admin/strategy/update/${s.id }">更新</a>
										</td>
									</tr>
								</c:forEach>
							</tbody>
							<tfoot>
								<tr>
									<td colspan="7"><jsp:include page="/jsp/pager/pager.jsp">
											<jsp:param value="${pages.total }" name="totalRecord" />
											<jsp:param value="strategys" name="url" />
										</jsp:include></td>
								</tr>
							</tfoot>
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