<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<title>系统角色</title>
<meta name="keywords" content="">
<meta name="description" content="">
<link rel="shortcut icon" href="favicon.ico">
<link href="${pageContext.request.contextPath }/css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
<link href="${pageContext.request.contextPath }/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
<link href="${pageContext.request.contextPath }/css/plugins/iCheck/custom.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/css/animate.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/css/style.min.css?v=4.0.0" rel="stylesheet">

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
						<div class="table-responsive">
							<table class="table table-striped">
								<thead>
									<tr>
										<th>序号</th>
										<th>角色名称</th>
										<th>菜单权限</th>
										<th>新增权限</th>
										<th>修改权限</th>
										<th>删除权限</th>
										<th>查看权限</th>
										<th>修改时间</th>
										<th>创建时间</th>
										<th>状态</th>
									</tr>
								</thead>
								<tbody>

									<c:choose>
										<c:when test="${not empty sysRoleList}">
										
											<c:forEach items="${sysRoleList}" var="sysRole" varStatus="stat">
												<tr>
													<td>${stat.count}</td>
													<td>${sysRole.name}</td>
														
														<td>
														<c:if test="${sysRole.menu_qx == 0}">允许</c:if>
														<c:if test="${sysRole.menu_qx == 1}">不允许</c:if>	
														</td>
														
														<td>
														<c:if test="${sysRole.add_qx == 0}">不允许</c:if>
														<c:if test="${sysRole.add_qx == 1}">允许</c:if>
														</td>
														<td>
														<c:if test="${sysRole.edit_qx == 0}">不允许</c:if>
														<c:if test="${sysRole.edit_qx == 1}">允许</c:if>
														</td>
														<td>
														<c:if test="${sysRole.del_qx == 0}">不允许</c:if>
														<c:if test="${sysRole.del_qx == 1}">允许</c:if>
														</td>
														<td>
														<c:if test="${sysRole.select_qx== 0}">不允许</c:if>
														<c:if test="${sysRole.select_qx == 1}">允许</c:if>
														</td>
												
													<td>${sysRole.utime}</td>
													<td>${sysRole.ctime}</td>
													<td>${sysRole.status}</td>
												
													<td>	
														<a href="${pageContext.request.contextPath }/sysRole/editSysRole?id=${sysRole.role_id}">
														<button ><i class="fa fa-edit text-navy"></i>修改</button>
														</a> 
													
														<a href="${pageContext.request.contextPath }/sysRole/deleteSysRole?role_id=${sysRole.role_id }">
															<button><i class="fa fa-trash-o text-navy"></i>删除</button>
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
							<a href="${pageContext.request.contextPath }/addSysSysRole">
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