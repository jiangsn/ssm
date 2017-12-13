<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<base href="<%=basePath%>">
 
	
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    

    <title>系统用户编辑</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <link rel="shortcut icon" href="favicon.ico"> <link href="css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/css/animate.min.css" rel="stylesheet">
    <link href="css/style.min.css?v=4.0.0" rel="stylesheet">
    
    <script src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath }/js/bootstrap.min.js?v=3.3.5"></script>
    <script src="${pageContext.request.contextPath }/js/content.min.js?v=1.0.0"></script>
    <script src="${pageContext.request.contextPath }/js/plugins/iCheck/icheck.min.js"></script>
    <script src="${pageContext.request.contextPath }/js/plugins/layer/layer.js"></script>
    <script src="${pageContext.request.contextPath }/js/jquery-1.8.3.js"></script>
    		<script>
    		$(function () {		
    			$("#selCategory").change(function() {
    				alert("1") ;
    				var val = $(this).val();
    				var pid= $("#Category");
    				if(val == -1){
    					pid.empty();
    					pid.attr("disabled","disabled");
    					pid.append("<option value='0'>请选择</option>");
    				}				
    				if(val > -1){
    					//异步的获取子菜单列表
    					$.ajax({
    						url:"/myssm01/findGoodCategory",
    						data:{ID : val},
    						dataType:"json",
    						type:"post",
    						success:function(data){
    							if(data.length == 0){
    								pid.empty();
    								pid.append("<option value='0'>不能创建该菜单，先创建上级菜单</option>");
    								pid.attr("disabled","disabled");
    							}else{
    								pid.empty();
    								for(i = 0;i < data.length;i++){
    								
    									pid.append("<option  value="+data[i].category_id+">"+ data[i].category_name+"</option>");								
    								}
    								pid.removeAttr("disabled");
    							}
    													
    						}
    					});
    				}
    			});
    			
    			
    		});
    </script>
    
    
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/jQuery/jquery.validate.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/jQuery/messages_zh.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/jQuery/addgoods.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/plugins/ckeditor/ckeditor.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/jquery.min.js"></script>
    

</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content animated fadeInRight">
        
       
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>商品管理 <small>添加商品</small></h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                            <a class="dropdown-toggle" data-toggle="dropdown" href="form_basic.html#">
                                <i class="fa fa-wrench"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">
                        <form action="${pageContext.request.contextPath }/sysGoods/addSysGoods" method="post" class="form-horizontal" id="addgoods">
                        	<!-- 用户名输入框 -->
                            <div class="form-group">
                                <label class="col-sm-2 control-label">商品名称</label>
                                <div class="col-sm-4">
                                    <input type="text" name="goods_name" class="form-control" id="goods"><span class="help-block m-b-none"></span>
                                    <input type="hidden" name="sysuser_id" value="${SysUser.sysuser_id} " >
                                </div>
                            </div>
                            
                             <div class="hr-line-dashed"></div>
                            
                            <!-- 密码输入框 -->
                            <div class="form-group">
                                <label class="col-sm-2 control-label">商品简介</label>
                                <div class="col-sm-4">
                                    <input type="text" name="goods_info" class="form-control" />
                                </div>
                            </div>
                            
                            <div class="hr-line-dashed"></div>
                            
                            <!-- 密码输入框 -->
                            <div class="form-group">
                                <label class="col-sm-2 control-label">商品图片上传</label>
                                <div class="col-sm-4">
                                    <input type="file" name="goods_pic" class="form-control" />
                                </div>
                            </div>
                            
                            <div class="hr-line-dashed"></div>
                            
							<div class="form-group">
								<label class="col-sm-2 control-label">分类：</label>
								<div class="col-sm-2">
									<select id="selCategory" class="form-control" name="selCategory">
											
										<option value="-1">请选择</option>
										<c:forEach items="${Category}" var="gc">
											<c:if test="${ gc.pre_id == 0}">
											<option id="Categoryid" value="${gc.category_id}">${gc.category_name}</option>
											</c:if>
										</c:forEach>
									</select>
									
									<select id="Category" class="form-control" name="category_id" >
										<option value="-1">请选择</option>
									</select>
										<c:if test="${category_id} == -1 ">
											<input type="hidden" value="3" name="category_id">
										</c:if>
										
								</div>
							</div>
						
						<div id="propv">
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label"></label>
							<div id="propv">
							</div>
							<div class="col-sm-2">
								<button type="button" id="show" disabled class="btn btn-w-m btn-success">增加属性</button>
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-2 control-label">标签：</label>
							<label>热门</label><input type="checkbox" name="goods_tag" value="9" />
						</div>
                            
                            <div class="hr-line-dashed"></div>
                            
                            <!-- 角色下拉 -->
                            <div class="form-group">
                                <label class="col-sm-2 control-label">商品原价</label>
                                <div class="col-sm-4">
                                    <input type="text" name="goods_price" class="form-control">
                                </div>
                            </div>
                            
                            <div class="hr-line-dashed"></div>
                            
                            <!-- 角色下拉 -->
                            <div class="form-group">
                                <label class="col-sm-2 control-label">商品售价</label>
                                <div class="col-sm-4">
                                    <input type="text" name="goods_sale_price" class="form-control">
                                </div>
                            </div>
                            
                            <div class="hr-line-dashed"></div>
                            
                            <!-- 角色下拉 -->
                            <div class="form-group">
                                <label class="col-sm-2 control-label">商品详情</label>
                                <div class="col-sm-4">
                                    <textarea rows="5" cols="6" name="goods_desc" id="goodsDesc" class="form-control"></textarea>
                                </div>
                            </div>
                            
                            <div class="hr-line-dashed"></div>
                            
                            <!-- 角色下拉 -->
                            <div class="form-group">
                                <label class="col-sm-2 control-label">库存</label>
                                <div class="col-sm-4">
                                    <input type="text" name="goods_count" class="form-control">
                                </div>
                            </div>
                                    
                            <div class="hr-line-dashed"></div>
                            
                            <div class="form-group">
                                <div class="col-sm-4 col-sm-offset-2">
                                    <button class="btn btn-primary" type="submit">保存</button>
                                    <button class="btn btn-white" type="submit">取消</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div id="modal-form" class="modal fade" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-body">
                    <div class="row">
                        <div class="col-sm-6 b-r">
                            <h3 class="m-t-none m-b">登录</h3>

                            <p>欢迎登录本站(⊙o⊙)</p>

                            <form role="form">
                                <div class="form-group">
                                    <label>用户名：</label>
                                    <input type="email" placeholder="请输入用户名" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>密码：</label>
                                    <input type="password" placeholder="请输入密码" class="form-control">
                                </div>
                                <div>
                                    <button class="btn btn-sm btn-primary pull-right m-t-n-xs" type="submit"><strong>登录</strong>
                                    </button>
                                    <label>
                                        <input type="checkbox" class="i-checks">自动登录</label>
                                </div>
                            </form>
                        </div>
                        <div class="col-sm-6">
                            <h4>还不是会员？</h4>
                            <p>您可以注册一个账户</p>
                            <p class="text-center">
                                <a href="form_basic.html"><i class="fa fa-sign-in big-icon"></i></a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
</body>

</html>