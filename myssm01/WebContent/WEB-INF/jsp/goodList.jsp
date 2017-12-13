<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<base href="<%=basePath%> %>">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    

    <title>H+ 后台主题UI框架 - 基础表格</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <link rel="shortcut icon" href="favicon.ico"> <link href="css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
    <link href="css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/style.min.css?v=4.0.0" rel="stylesheet">

</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content animated fadeInRight">

        <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                            <a class="dropdown-toggle" data-toggle="dropdown" href="table_basic.html#">
                                <i class="fa fa-wrench"></i>
                            </a>
                            
                            <a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">
                        <div class="row">
                        	
                           
                        </div>
                        <div class="table-responsive">
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th>序号</th>
                                        <th>商品编号</th>
                                        <th>商品名称</th>
                                        <th>商品分类</th>
                                        <th>商品原价</th>
                                        <th>商品折扣价</th>
                                        <th>库存</th>
                                        <th>发布者</th>
                                        <th>操作</th>
                                    </tr>
                                </thead>
                                <tbody>
                                
                                	<c:choose>
                                		<c:when test="${not empty GoodList}">
                                			<c:forEach items="${GoodList}" var="goodslist" varStatus="stat">
                                				<tr>
                                					<td>${stat.count}</td>
                                					<td>${goodslist.goods_id}</td>
                                					<td>${goodslist.goods_name}</td>
                                					<td>${goodslist.category_id}</td>
                                					<td><fmt:formatNumber value="${goodslist.goods_price}" type="currency"></fmt:formatNumber></td>
                                					<td><fmt:formatNumber value="${goodslist.goods_sale_price}" type="currency"></fmt:formatNumber></td>
                                					<td>${goodslist.goods_count}</td>
                                					<td>${goodslist.sysuser_id}</td>
                                					<td>
                                						<a href="${pageContext.request.contextPath}/showeditGood?id=${goodslist.goods_id}" class="btn btn-sm btn-primary">
                                							<i class="fa fa-edit"></i>&nbsp;修改
                                						</a>
                                						<a class="btn btn-sm btn-primary" href="${pageContext.request.contextPath}/sysGoods/deteleSysGoods?id=${goodslist.goods_id}" name="${goodslist.goods_id}">
                                							<i class="fa fa-trash-o"></i>&nbsp;删除
                                						</a>
                                					</td>
                                					
                                				</tr>
                                			</c:forEach>
                                		</c:when>
                                	</c:choose>
                                
                                </tbody>
                            </table>
                            
                            <a href="${pageContext.request.contextPath}/showaddSysGoods">
	                            <button type="button" class="btn btn-w-m btn-success" >
	                            	新增
	                            </button>
                            </a>
                        </div>

                    </div>
                </div>
            </div>

        </div>
    </div>
    <script src="js/jquery.min.js?v=2.1.4"></script>
    <script src="js/bootstrap.min.js?v=3.3.5"></script>
    <script src="js/plugins/peity/jquery.peity.min.js"></script>
    <script src="js/content.min.js?v=1.0.0"></script>
    <script src="js/plugins/iCheck/icheck.min.js"></script>
    <script src="js/demo/peity-demo.min.js"></script>
     <script src="js/plugins/layer/layer.js"></script>
    <script>
        $(document).ready(function(){$(".i-checks").iCheck({checkboxClass:"icheckbox_square-green",radioClass:"iradio_square-green",})});
    </script>

    <script>
    	$(document).ready(function(){
    		$(".but").click(function(){
    			var id = $(this).attr("id");
    			alert(id)
    			layer.confirm("是否删掉此条数据？",{
    				btn:['确定','取消']
    			},function(){
    			
    				window.location.href="${pageContext.request.contextPath }/sysGoods/deteleSysGoods?id="+id;
    			});
    		});
    	});
	</script>
</body>

</html>