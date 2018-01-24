<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/jquery.validate.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/core/jquery.travel.validate.js"></script>
<script type="text/javascript">
$(function (){
	$(".updateBtn").click(function (){
		//$("#addForm").cmsvalidate();
		$("#addForm").submit();
	});
})
</script>
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
		                            	系统管理>>修改网站基本信息
		                        </div>
		                        <!-- /.panel-heading -->
		                        <form id="addForm" method="post">
		                        <div class="panel-body">
									<div class="row">
											<div class="col-lg-12">
												<div class="form-group">
													<label>备案号</label>
													<input class="form-control" name="ICPRecord" value="${baseInfo.ICPRecord}">
													<p class="help-block">如：京ICP备11015476号</p>
												</div>
												<div class="form-group">
													<label>备案证号</label>
													<input class="form-control" name="ICPConfirm" value="${baseInfo.ICPConfirm}">
													<p class="help-block">如：京ICP证110318号</p>
												</div>
												<div class="form-group">
													<label>公网安备号</label>
													<input class="form-control" name="networkRecord" value="${baseInfo.networkRecord}">
													<p class="help-block">如：京公网安备110105013401号</p>
												</div>
												<div class="form-group">
													<label>新出网证号</label>
													<input class="form-control" name="networkConfirm" value="${baseInfo.networkConfirm}">
													<p class="help-block">如：新出网证(京)字242号</p>
												</div>
												<div class="form-group">
													<label>版权说明</label>
													<input class="form-control" name="copyright" value="${baseInfo.copyright }">
													<p class="help-block">如：© 2015 Mafengwo.cn</p>
												</div>
												<div class="form-group">
													<label>联系电话</label>
													<input class="form-control" name="contactPhone" value="${baseInfo.contactPhone }">
													<p class="help-block">如：400 166 6866</p>
												</div>
												<div class="form-group">
													<label>域名</label>
													<input class="form-control" name="domainName" value="${baseInfo.domainName }">
													<p class="help-block">如：http://www.mafengwo.cn/</p>
												</div>
												<div class="form-group">
													<label>首页图片宽度（数字）</label>
													<input class="form-control" name="indexPicWidth" value="${baseInfo.indexPicWidth }">
													<p class="help-block">如：1680</p>
												</div>
												<div class="form-group">
													<label>首页图片高度（数字）</label>
													<input class="form-control" name="indexPicHeight" value="${baseInfo.indexPicHeight }">
													<p class="help-block">如：634</p>
												</div>
												<div class="form-group">
													<label>首页图片数量</label>
													<input class="form-control" name="indexPicNumber" value="${baseInfo.indexPicNumber }">
													<p class="help-block">如：5</p>
												</div>
											</div>
									</div>
		                        </div>
		                        <!-- /.panel-body -->
		                        <div class="panel-footer"> 
		                        	<div class="row">
		                        		<div class="col-lg-2 col-lg-offset-10">
		                        			<a class="btn btn-social updateBtn">
			                                <i class="fa fa-github"></i>确认修改
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
</body>
</html>