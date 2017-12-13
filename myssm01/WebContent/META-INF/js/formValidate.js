
$().ready(function() {
// 在键盘按下并释放及提交后验证提交表单
	
  $("#signupForm").validate({
	    rules: {
	    	userName: "required",
	    	userName: {
	        required: true,
	        minlength: 2
	      },
	      password: {
	        required: true,
	        	minlength: 9
	      },
	      rePassWord: {
	        required: true,
	        minlength: 9,
	        equalTo: "#password"
	      },
	      email: {
	        required: true,
	        email: true
	      },
	      phone:{
	    	  required:true,
	    	  digits:true
	      },

	    messages: {
	      firstname: "请输入您的名字",
	      lastname: "请输入您的姓氏",
	      username: {
	        required: "请输入用户名",
	        minlength: "用户名必需由两个字母组成"
	      },
	      password: {
	        required: "请输入密码",
	        minlength: "密码长度不能小于 9 个字母"
	      },
	      rePassWord: {
	        required: "请输入密码",
	        minlength: "密码长度不能小于 5 个字母",
	        equalTo: "两次密码输入不一致"
	      },
	      email: "请输入一个正确的邮箱",
	    }
	    }
	});
});
