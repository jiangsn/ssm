package com.snow.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.snwo.pojo.TBSysUser;

public class loginInterceptor implements  HandlerInterceptor {

	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		
	}

	@Override
	public boolean preHandle(HttpServletRequest req, HttpServletResponse resp, Object arg2) throws Exception {
		
		TBSysUser sysuser = (TBSysUser) req.getSession().getAttribute("SysUser") ;
		
		if (sysuser != null) {
			
			return true;
		}
		req.getRequestDispatcher("/WEB-INF/jsp/login.jsp").forward(req, resp);
		return false;
	}

}
