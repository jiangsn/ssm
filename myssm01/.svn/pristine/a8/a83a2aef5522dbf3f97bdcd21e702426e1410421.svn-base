<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<title>菜单</title>
<meta name="keywords" content="">
<meta name="description" content="">
<link rel="shortcut icon" href="favicon.ico">
<link href="${pageContext.request.contextPath }/css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
<link href="${pageContext.request.contextPath }/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
<link href="${pageContext.request.contextPath }/css/plugins/iCheck/custom.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/css/animate.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/css/style.min.css?v=4.0.0" rel="stylesheet">

<script type="text/javascript">
	/*window.onload = function() {
		
		if(${msg == 1}){
			alert("修改成功");
		}else if(${msg == 2}){
			alert("修改失败");
		}
	};*/
</script>
</head>

<body class="gray-bg">
	<div class="wrapper wrapper-content animated fadeInRight">

		<div class="row">
			<div class="col-sm-12">
				<div class="ibox float-e-margins">
					<div class="ibox-title">
						<div class="ibox-tools">
							<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
							</a> <a class="dropdown-toggle" data-toggle="dropdown"
								href="table_basic.html#"> <i class="fa fa-wrench"></i>
							</a>
						</div>
					</div>
					<div class="ibox-content">
						<form action="${pageContext.request.contextPath }/sysmenu/findAllmenu">
							<div class="row">
								
								<div class="col-sm-3">
									<div class="input-group">
										<input type="text" placeholder="请输入关键词"
											class="input-sm form-control" name = "name"> <span
											class="input-group-btn">
											<button type="submit" class="btn btn-sm btn-primary" >
												搜索菜单</button>
										</span>
									</div>
								</div>
								
							</div>
							
						</form>
						<div class="table-responsive">
							<table class="table table-striped">
								<thead>
									<tr>
										<th>序号</th>
										<th>名称</th>
										<th>链接</th>
										<th>父菜单编号</th>
										<th>类型</th>
										<th>图标</th>
										<th>排序</th>
										<th>状态</th>
										<th>修改时间</th>
										<th>创建时间</th>
									</tr>
								</thead>
								<tbody>

									<c:choose>
										<c:when test="${not empty tbsysmenu}">
										
											<c:forEach items="${tbsysmenu}" var="sysmenu" varStatus="stat">
												<tr>
													<td>${stat.count}</td>
													<td>${sysmenu.name}</td>
													<td>${sysmenu.url}</td>
													<td>${sysmenu.parent_id}</td>
													<td>${sysmenu.type}</td>
													<td>${sysmenu.icon}</td>
													<td>${sysmenu.menu_order}</td>
													<td>${sysmenu.status}</td>
													<td>${sysmenu.utime}</td>
													<td>${sysmenu.ctime}</td>
													<td>
														<a href="${pageContext.request.contextPath }/sysmenu/editsysmenu?menuId=${sysmenu.menu_id }">
															<i class="fa fa-edit text-navy">修改</i>
														</a> 
														<a href="${pageContext.request.contextPath }/sysmenu/deletesysmenu?menuId=${sysmenu.menu_id }">
															<i class="fa fa-trash-o text-navy">删除</i>
														</a>
													</td>
												</tr>
											
											</c:forEach>

										</c:when>

										<c:otherwise>
											<tr>
												<td colspan="100" >没有相关数据</td>
											</tr>
										</c:otherwise>

									</c:choose>
								</tbody>
							</table>
						</div>
							<a href="${pageContext.request.contextPath }/showAddMenu">
								<button type="button" class="btn btn-w-m btn-success">
									新增
								</button>
							</a>
					</div>
				</div>
			</div>

		</div>
	</div>
	<script src="${pageContext.request.contextPath }/js/jquery.min.js?v=2.1.4"></script>
	<script src="${pageContext.request.contextPath }/js/bootstrap.min.js?v=3.3.5"></script>
	<script src="${pageContext.request.contextPath }/js/plugins/peity/jquery.peity.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/content.min.js?v=1.0.0"></script>
	<script src="${pageContext.request.contextPath }/js/plugins/iCheck/icheck.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/demo/peity-demo.min.js"></script>
	<script>
		$(document).ready(function() {
			$(".i-checks").iCheck({
				checkboxClass : "icheckbox_square-green",
				radioClass : "iradio_square-green",
			})
		});
	</script>
</body>

</html>