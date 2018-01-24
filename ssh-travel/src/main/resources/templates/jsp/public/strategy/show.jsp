<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<title>旅游攻略--${travelStrategy.name }</title>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/core/strategy.css" />
	</head>

	<body>
				<div class="wrapper">
			<div class="site_nav">
				<div class="crumb">
					<a href="/gonglve/">旅游攻略</a> &gt;
					<a href="/gonglve/mdd-sc-0-0-0.html#list">四川</a> &gt;
					<h1>成都</h1>
				</div>
			</div>
			<div style="cursor: pointer" class="mdd_img">
				<c:forEach items="${atts }" var="att">
					<c:if test="${att.type == 1 }">
						<img src="<%=request.getContextPath() %>/resources/upload/tspics/${att.newName}" title="${att.oldName }">
					</c:if>
				</c:forEach>
			</div>
			<div class="middle_de">
				<h1>${travelStrategy.name}</h1>

				<div class="gl_title">
					<c:forEach items="${keywords }" var="kw">
						<span>${kw }</span>
					</c:forEach>
					<div class="clear"></div>
				</div>
				<div class="jianjie">
					<p><strong>简介</strong> ${travelStrategy.brief }</p>
				</div>
				<div class="th_f">
					<p>蚂蜂窝攻略中旅行贴士和照片等信息都来自于旅行者的真实分享，感谢蜂蜂对本攻略的贡献</p>
				</div>
			</div>
			<div class="down_glb">
			    <h2>3862055<span>人下载</span></h2>
			        <div class="down_p">
			        <a href="#" data-bookid="52">下载PDF版本</a>
			        <p>文件大小 9.67 MB</p>
			    </div>
			    <div class="down_p down_p1">
			        <a href="#" data-bookid="52">下载JPG版本</a>
			        <p>文件大小 15.52 MB</p>
			    </div>
			    <div class="up_time">
			        <p>更新时间 ${travelStrategy.modifyDate }</p>
			    </div>
			</div>
			<div class="clear"></div>
			<div class="box_wrap">
				<div class="scroll_wrap scroll-pane">
				</div>
			</div>
		</div>
	
	</body>

</html>