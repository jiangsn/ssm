package com.snow.service;

import java.util.List;

import com.snwo.pojo.TBSysLogs;

public interface ISysLogService {
	public Integer saveSysLog(TBSysLogs tbSysLog);
	
	public List<TBSysLogs> showSysLog() ;
	
	
}
