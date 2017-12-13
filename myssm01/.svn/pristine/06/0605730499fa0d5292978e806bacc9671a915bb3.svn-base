package com.snow.aop;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.Signature;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.beans.factory.annotation.Autowired;

import com.snow.service.ISysLogService;
import com.snow.util.DatetUtil;
import com.snwo.pojo.TBSysLogs;
import com.snwo.pojo.TBSysUser;


@Aspect
public class LogAsperct {

	@Autowired
	private HttpServletRequest req;
	@Autowired
	private ISysLogService logService ;
	
	@AfterReturning(pointcut = "execution(* com.snow.service.impl.TBSys*.*(..))") 
	public void serviceCall(JoinPoint joinPoint) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
		Signature signature = joinPoint.getSignature();
	
		TBSysUser user = (TBSysUser) req.getSession().getAttribute("SysUser") ;
		
		
		String name = signature.getName() ;
		
		Object[] args = joinPoint.getArgs() ;
		
		TBSysLogs logs = new TBSysLogs() ;		
		
		if(name.indexOf("add") >= 0 ) {
			String content = content(args, name);
			logs.setSysuser_id(user.getSysuser_id().toString());
			logs.setSysname(user.getUsername());
			logs.setLog_time(DatetUtil.getDataString(new Date()));
			logs.setContent(content);
			
			logService.saveSysLog(logs) ;
		} else if(name.indexOf("delete") >= 0){
			logs.setSysuser_id(user.getSysuser_id().toString());
			logs.setSysname(user.getUsername());
			logs.setLog_time(DatetUtil.getDataString(new Date()));
			logs.setContent(name + Arrays.toString(args));
			
			logService.saveSysLog(logs) ;
		}	
	}

	private String content(Object[] args, String mothodName) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
		if (args == null || args.length == 0 ) {
			return null;
		}
		System.out.println(Arrays.toString(args));
		
		StringBuffer sb = new StringBuffer();
		
		sb.append(mothodName + "参数类型:");
		
		System.out.println(sb);
		
		
		for (Object object : args) {
			if (object == null) {
				return null;
			}
			
			String argsName = object.getClass().getName();
			
			String name = argsName.substring(argsName.lastIndexOf(".") + 1);
			
			sb.append(name + " [");
			
			Method[] methods = object.getClass().getDeclaredMethods();
			
			
			for (Method method : methods) {
				if(method.getName().indexOf("get") == -1) {
					continue;
				}
				Object invoke = method.invoke(object);
				
				if(invoke != null) {
					sb.append( invoke + ",");
				}
			}
			sb.append("]");
		}
		return sb.toString();
	}
}
