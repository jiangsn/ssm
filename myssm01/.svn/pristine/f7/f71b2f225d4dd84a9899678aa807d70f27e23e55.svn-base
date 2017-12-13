package com.snow.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.snow.dao.SysRole;
import com.snow.dao.SysUser;
import com.snow.service.ISysRoleService;
import com.snow.service.ISysUserService;
import com.snwo.pojo.TBSysRole;
import com.snwo.pojo.TBSysUser;
@Service
public class SysRoleServiceImpl implements ISysRoleService {

	@Autowired
	private SysRole sysrole ;
	
	@Override
	public List<TBSysRole> readSysRole() {
		return sysrole.readSysRole();
	}

	@Override
	public int addSysRole(TBSysRole tbsysrole) {
		return sysrole.addSysRole(tbsysrole) ;
	}

	@Override
	public int deleteSysRole(TBSysRole tbsysrole) {
		// TODO Auto-generated method stub
		return sysrole.deleteSysRole(tbsysrole);
	}

	@Override
	public TBSysRole updateSysRole(Integer id) {
		// TODO Auto-generated method stub
		return sysrole.updateSysRole(id);
	}

	@Override
	public int updateSysRolectime(TBSysRole tbsysrole) {
		// TODO Auto-generated method stub
		return sysrole.updateSysRolectime(tbsysrole);
	}



	
	

}
