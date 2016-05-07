<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>旅游攻略</title>
</head>
<body>

	<!-- Right Content-->
	<section id="page-wrapper">
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">攻略管理》攻略详情</div>
					<!-- /.panel-heading -->
					<div class="panel-body">
						<div class="dataTable_wrapper">
							<table class="table table-striped table-bordered table-hover"
								id="dataTables-example">
								<tbody>
									<tr>
										<td>攻略名称</td>
										<td>${travelStrategy.name}</td>
									</tr>
										<tr>
								<td>攻略封皮</td>
								<td>
									<c:forEach items="${atts }" var="att">
										<c:if test="${att.type == 1 }">
											<a href="<%=request.getContextPath() %>/resources/upload/tspics/${att.newName}"><img src="<%=request.getContextPath() %>/resources/upload/thumbnail/${att.newName}" title="${att.oldName }"></a>
										</c:if>
									</c:forEach>
								</td>
							</tr>
							<tr>
								<td>关键字</td>
								<td>${travelStrategy.keyword }</td>
							</tr>
							<tr>
								<td>简介</td>
								<td>${travelStrategy.brief}</td>
							</tr>
							<tr>
								<td>创建/修改日期</td>
								<td><fmt:formatDate value="${travelStrategy.createDate}" pattern="yyyy-MM-dd HH:mm"/>(<fmt:formatDate value="${travelStrategy.modifyDate}" pattern="yyyy-MM-dd HH:mm"/>)</td>
							</tr>
							<tr>
								<td>添加人</td>
								<td>${travelStrategy.userId }</td>							
							</tr>
							<tr>
								<td>文章附件</td>
								<td>
									<c:forEach items="${atts }" var="att">
										<c:if test="${att.type != 1 }">
											<a href="<%=request.getContextPath() %>/resources/upload/${att.newName}">${att.oldName }</a>&nbsp;
										</c:if>
									</c:forEach>
								</td>
							</tr>
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