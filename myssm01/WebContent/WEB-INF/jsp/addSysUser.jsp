<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
	
	
    <title>系统用户编辑</title>
    <meta name="keywords" content="">
    <meta name="description" content="">

    <link rel="${pageContext.request.contextPath }/shortcut icon" href="favicon.ico"> 
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
                        <h5>系统用户管理 <small>编辑系统用户</small></h5>
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
                        <form action="${pageContext.request.contextPath }/sysUser/regSysUser" id="signupForm"  method="post" class="form-horizontal">
                        
                        	<!-- 用户名输入框 -->
                            <div class="form-group">
                                <label class="col-sm-2 control-label">用户名</label>

                                <div class="col-sm-4">
                                    <input type="text" id="username" name="username" value="${sysUser.username}" class="form-control">
                                  
                                    <span id="error"></span>
                                </div>
                            </div>
                            
                            <div class="hr-line-dashed"></div>
                            
                            <!-- 角色下拉 -->
                            <div class="form-group">
                                <label class="col-sm-2 control-label">角色</label>

                                <div class="col-sm-4">
                                    <select name="role_id" class="form-control m-b" name="account">
                          	           <option value="0">请选择角色</option>
                                    	<c:forEach items="${SysRole}" var="role">
                                        <option value="1" value="${role.role_id}">${role.name}</option>
                                        
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                            
                            <div class="hr-line-dashed"></div>
                            
                            <!-- 密码输入框 -->
                            <div class="form-group">
                                <label class="col-sm-2 control-label">密码</label>

                                <div class="col-sm-4">
                                    <input id="password" name="password" type="password" class="form-control">
                                </div>
                            </div>
                            
                            <div class="hr-line-dashed"></div>
                            
                            <!-- 确认密码输入框 -->
                            <div class="form-group">
                                <label class="col-sm-2 control-label">确认密码</label>

                                <div class="col-sm-4">
                                    <input id="rePassWord" name="rePassWord" type="password" class="form-control">
                                </div>
                            </div>
                            
                            <div class="hr-line-dashed"></div>
                            
                            <!-- 姓名输入框 -->
                            <div class="form-group">
                                <label class="col-sm-2 control-label">姓名</label>

                                <div class="col-sm-4">
                                    <input id="name" name="name" value="${sysUser.name}" type="text" class="form-control">
                                    
                                </div>
                            </div>
                            
                            <div class="hr-line-dashed"></div>
                            
                            <!-- 手机输入框 -->
                            <div class="form-group">
                                <label class="col-sm-2 control-label">手机</label>

                                <div class="col-sm-4">
                                    <input id="phone" name="phone" value="${sysUser.phone}" type="text" class="form-control">
                                </div>
                            </div>
                            
                            
                            <div class="hr-line-dashed"></div>
                            
                            <!-- 邮箱输入框 -->
                            <div class="form-group">
                                <label class="col-sm-2 control-label">邮箱</label>

                                <div class="col-sm-4">
                                    <input name="email" value="${sysUser.email}" type="text" class="form-control">
                                </div>
                            </div>
                            
                            <div class="hr-line-dashed"></div>
                            
                            <div class="form-group">
                                <div class="col-sm-4 col-sm-offset-2">
                                    <button class="btn btn-primary" type="submit">保存</button>
                                    <button class="btn btn-white" >取消</button>
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
                                    <button class="btn btn-sm btn-primary pull-right m-t-n-xs" type="submit" onclick="return checkuser()"><strong>登录</strong>
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
    <script src="${pageContext.request.contextPath }/js/jquery.min.js?v=2.1.4"></script>
    <script src="${pageContext.request.contextPath }/js/bootstrap.min.js?v=3.3.5"></script>
    <script src="${pageContext.request.contextPath }/js/content.min.js?v=1.0.0"></script>
    <script src="${pageContext.request.contextPath }/js/plugins/iCheck/icheck.min.js"></script>
    <script src="${pageContext.request.contextPath }/js/sysuser.js"></script>
    <script src="${pageContext.request.contextPath }/js/jquery.validate.min.js"></script>
    <script src="${pageContext.request.contextPath }/js/formValidate.js"></script>
    <script src="${pageContext.request.contextPath }/js/messages_zh.js"></script>
    <script>
       
    $(document).ready(function(){$(".i-checks").iCheck({checkboxClass:"icheckbox_square-green",radioClass:"iradio_square-green",})});
  
	
	$(function () {
		$("#username").blur(function() {
			var username = $("#username").val() ;
			username = $.trim(username)
			if(username != "") {
				$.ajax({					
					url:"/myssm01/sysUser/findSysUserByUsername",
					data:{Username:username},
					type:"post",
					dataType:"json",
					success:function(data){
						if(data.message == "no") {
							$("#error").html("<font color='red'>用户已经存在</font>")
						} else {
							$("#error").html("")											
						}
					}
				});
			}
		});
	});	
    </script>
</body>

</html>