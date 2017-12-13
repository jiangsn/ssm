package com.snow.dao;

import java.util.List;

import com.snwo.pojo.TBSysMenu;

public interface SysMenu {
	//查询所有
	public List<TBSysMenu> readSysMenu() ;
	
	//通过 id查询菜单
	public List<TBSysMenu> readSysMenuByid(Integer id);
	
	
	//添加菜单
	
	public int addSysMenu(TBSysMenu menu) ;
	
	
}
