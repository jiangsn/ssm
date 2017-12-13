package com.snow.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.snow.dao.SysMenu;
import com.snow.service.ISysMenuService;
import com.snwo.pojo.TBSysMenu;
@Service
public class SysMenuServiceImpl implements ISysMenuService {
	
	@Autowired
	private SysMenu sysmenu ;
	
	
	@Override
	public List<TBSysMenu> readSysMenu() {
		return sysmenu.readSysMenu();
	}


	@Override
	public List<TBSysMenu> findMenuById(Integer id) {
		// TODO Auto-generated method stub
		return sysmenu.readSysMenuByid(id);
	}


	@Override
	public int addSysMenu(TBSysMenu menu) {

		return sysmenu.addSysMenu(menu);
	}

}
