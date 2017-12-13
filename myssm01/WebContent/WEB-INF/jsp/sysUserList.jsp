<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<title>系统用户</title>
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
						<div class="row">
							<div class="col-sm-3 m-b-xs">
								<select class="input-sm form-control input-s-sm inline">
									<option value="0">请选择角色</option>
								</select>
							</div>
						<form action="${pageContext.request.contextPath}/sysUser/readSysUselikename">
							<div class="col-sm-3">
								<div class="input-group">		
									<input type="text" name="username" placeholder="请输入关键词"	class="input-sm form-control" /> 
									<span class="input-group-btn">
										<button type="submit" class="btn btn-sm btn-primary">搜索</button>
									</span>	
								</div>
							</div>
							</form>
						</div>
						<div class="table-responsive">
							<table class="table table-striped">
								<thead>
									<tr>
										<th>多选</th>
										<th>序号</th>
										<th>用户名</th>
										<th>姓名</th>
										<th>角色名</th>
										<th>手机</th>
										<th>邮箱</th>
										<th>最后登录时间</th>
										<th>注册时间</th>
										<th>操作</th>
									</tr>
								</thead>
								<tbody>

									<c:choose>
										<c:when test="${not empty SysUser}">
										
											<c:forEach items="${SysUser}" var="sysUser" varStatus="stat">
												<tr>
													<td><input name="check" type="checkbox" / ></td>
													<td>${stat.count}</td>
													<td>${sysUser.username}</td>
													<td>${sysUser.name}</td>
													<td>${sysUser.role_id}</td>
													<td>${sysUser.phone}</td>
													<td>${sysUser.email}</td>
													<td>${sysUser.ltime}</td>
													<td>${sysUser.ctime}</td>
													<td>
														 <a  href="${pageContext.request.contextPath}/sysUser/toEdit?id=${sysUser.sysuser_id}">
															<button><i class="fa fa-edit text-navy">修改</i></button>
																				</a>
														 
														<a id="but" href="${pageContext.request.contextPath }/sysUser/deleteSysUser?sysuser_id=${sysUser.sysuser_id}">
															<button><i class="fa fa-trash-o text-navy">删除</i></button>
															
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
								<a href="${pageContext.request.contextPath }/addSysUserpage">
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
	   <script src="${pageContext.request.contextPath }/js/hit.js"></script>
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