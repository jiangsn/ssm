package com.snow.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.snow.dao.SysLogs;
import com.snow.service.ISysLogService;
import com.snwo.pojo.TBSysLogs;



@Service
public class SysLogServiceImpl implements ISysLogService {
	@Autowired
	private SysLogs log ;
	
	@Override
	public Integer saveSysLog(TBSysLogs tbSysLog) {
		return log.saveSysLog(tbSysLog);
	}

	@Override
	public List<TBSysLogs> showSysLog() {
		// TODO Auto-generated method stub
		return log.selectAll() ;
	}

}
