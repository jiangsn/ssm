package com.snow.service;

import java.util.List;

import com.snwo.pojo.TBSysUser;

public interface ISysUserService {
	public int addSysUser(TBSysUser SysUser) ;
	
	
	public TBSysUser loginSysUser(TBSysUser SysUser) ;
	
	
	//查询用户
	
	
	public List<TBSysUser> findSysUser() ;
	
	
	//删除用户
	
	public int deleteSysUser(TBSysUser SysUser) ;
	
	
	//查询要修改的用户
	
	public TBSysUser readSysUserById(Integer id) ;
	
	//更改查询到的数据
	
	public int updateSysUser(TBSysUser SysUser) ;
	
	//更新用户登录时间
	
	public int updateSysUserltime(TBSysUser SysUser) ;
	
	//模糊查询
	
	public List<TBSysUser> readSysUselikename(TBSysUser SysUser) ;
	
	
	//查询用户名是否可用
	public TBSysUser findSysUserByUsername(String name) ;
	
	
	
	
	
}
