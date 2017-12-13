package com.snow.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.snow.dao.SysUser;
import com.snow.service.ISysUserService;
import com.snwo.pojo.TBSysUser;
@Service
public class TBSysUserServiceImpl implements ISysUserService {
	
	@Autowired
	private SysUser sysuser;

	@Override
	public int addSysUser(TBSysUser SysUser) {
		return sysuser.createSysUser(SysUser);
	}

	@Override
	public TBSysUser loginSysUser(TBSysUser SysUser) {
		return sysuser.readSysUser(SysUser);
	}

	@Override
	public List<TBSysUser> findSysUser() {
		return sysuser.findSysUser();
	}

	@Override
	public int deleteSysUser(TBSysUser SysUser) {
		return sysuser.deleteSysUser(SysUser);
	}

	@Override
	public TBSysUser readSysUserById(Integer id) {
		return sysuser.readSysUserById(id);
	}

	@Override
	public int updateSysUser(TBSysUser SysUser) {
		return sysuser.updateSysUser(SysUser);
	}

	@Override
	public int updateSysUserltime(TBSysUser SysUser) {
		return sysuser.updateSysUserltime(SysUser);
	}

	@Override
	public List<TBSysUser> readSysUselikename(TBSysUser SysUser) {
		return sysuser.readSysUselikename(SysUser);
	}

	@Override
	public TBSysUser findSysUserByUsername(String name) {
		// TODO Auto-generated method stub
		return sysuser.findSysUserByUsername(name);
	}

}
