<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/jquery-ui-1.10.4.custom.min.css" />
<link href="<%=request.getContextPath()%>/resources/css/uploadify.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/resources/css/core/jquery.keywordinput.css" rel="stylesheet">

<script src="<%=request.getContextPath()%>/resources/js/jquery-ui-1.10.4.custom.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/jquery.validate.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/jquery.uploadify.js"></script>

<script src="<%=request.getContextPath()%>/resources/js/core/travel.admin.plugins.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/core/travel.add.strategy.js"></script>
<title>更新攻略</title>
</head>
<body>
	<input type="hidden" id="sid" value="<%=session.getId()%>"/>
		<input type="hidden" id="ctx" value="<%=request.getContextPath()%>"/>
		<section id="page-wrapper">
				<div class="row">
					<div class="col-lg-12">
							<hr>
					</div>
               		 <div class="col-lg-12">
		                    <div class="panel panel-primary">
		                        <div class="panel-heading">
		                            	攻略管理>>更新攻略
		                        </div>
		                        <!-- /.panel-heading -->
		                        <form id="addForm" method="post">
		                        <div class="panel-body">
									<div class="row">
											<div class="col-lg-12">
												<div class="form-group">
													<label>攻略名称</label>
													<input class="form-control" name="name" value="${strategy.name }">
													<p class="help-block">如：成都</p>
												</div>
												<div class="form-group">
													<label>攻略简介</label>
													<textarea class="form-control" rows="3" name="brief">${strategy.brief }</textarea>
												</div>
												<div class="form-group">
													<label>关键字</label>
													<div id="keyword-exists">
														<c:forEach items="${keywords }" var="k">
															<span>${k }</span>
														</c:forEach>
													</div>
													<input class="form-control" id="keyword" name="keyword">
												</div>
												<div class="row">
													<div class="col-lg-2">
														<div class="form-group">
															<label>攻略封皮</label>
															<input type="file" id="pictype">
														</div>
													</div>
													<div class="col-lg-10">
														<div class="form-group">
															<label></label>
														</div>
														<button class="btn btn-primary" type="button" id="picBtn">上传封皮</button>	
													</div>
												</div>
												<div class="row">
														<div class="col-lg-2">
															<div class="form-group">
																<label>攻略附件</label>
																<input type="file" id="attach">
															</div>
														</div>
														<div class="col-lg-10">
															<div class="form-group">
																<label></label>
															</div>
															<button class="btn btn-primary" type="button" id="attBtn">上传附件</button>	
														</div>
												</div>
											</div>
									</div>
									<hr />
				                    <div class="dataTable_wrapper">
		                                <table  id="ok_attach" class="table table-striped table-bordered table-hover">
		                                    <thead>
		                                        <tr>
		                                            <th>缩略图</th>
		                                            <th>文件名</th>
													<th>文件大小</th>
		                                            <th>操作</th>
		                                        </tr>
		                                    </thead>
		                                    <tbody>
		                                 	   <c:forEach items="${atts }" var="attach">
														<tr>
														<c:if test="${attach.type==1 }">
															<td>
																<img src="<%=request.getContextPath() %>/resources/upload/thumbnail/${attach.newName }"/>
															</td>
														</c:if>
														<c:if test="${attach.type != 1 }">
															<td>
																普通附件
															</td>
														</c:if>
															<td>${attach.oldName}</td>
															<td>${attach.size/1024}K</td>
															<td><a href='#' title='${attach.id }'>删除附件</a></td>
														</tr>
													</c:forEach>
		                                    </tbody>
		                                </table>
		                            </div>
		                        </div>
		                        <!-- /.panel-body -->
		                        <div class="panel-footer"> 
		                        	<div class="row">
		                        		<div class="col-lg-2 col-lg-offset-10">
		                        			<a class="btn btn-social" id="addBtn">
			                                <i class="fa fa-github"></i>更新攻略
				                          </a>
				                          <a class="btn btn-social">
				                              <i class="fa fa-twitter"></i>取消
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

	<div>
</body>
</html>