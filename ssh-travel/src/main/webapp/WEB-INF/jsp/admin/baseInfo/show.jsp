<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
					<div class="panel-heading">网站基本信息</div>
					<div class="panel-body">
						<div class="dataTable_wrapper">
							<table class="table table-striped table-bordered table-hover">
								<tbody>
									<tr>
										<td>备案号</td>
										<td>${baseInfo.ICPRecord}</td>
									</tr>
									<tr>
										<td>备案证号</td>
										<td>${baseInfo.ICPConfirm }</td>
									</tr>
									<tr>
										<td>公网安备号</td>
										<td>${baseInfo.networkRecord}</td>
									</tr>
									<tr>
										<td>新出网证号</td>
										<td>${baseInfo.networkConfirm}</td>
									</tr>
									<tr>
										<td>版权说明</td>
										<td>${baseInfo.copyright }</td>
									</tr>
									<tr>
										<td>联系电话</td>
										<td>${baseInfo.contactPhone }</td>
									</tr>
									<tr>
										<td>域名</td>
										<td>${baseInfo.domainName }</td>
									</tr>
									<tr>
										<td>首页图片宽度（数字）</td>
										<td>${baseInfo.indexPicWidth }</td>
									</tr>
									<tr>
										<td>首页图片高度（数字）</td>
										<td>${baseInfo.indexPicHeight }</td>
									</tr>
									<tr>
										<td>首页图片数量</td>
										<td>${baseInfo.indexPicNumber }</td>
									</tr>
								</tbody>
								<tfoot>
									<tr>
										<td colspan="2" class="left">
		                        			<a class="btn btn-social" href="update">
			                               		 <i class="fa fa-github"></i>修改网站基本信息
				                        	 </a>
										</td>
									</tr>
								</tfoot>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>