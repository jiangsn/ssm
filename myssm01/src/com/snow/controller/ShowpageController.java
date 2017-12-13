package com.snow.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.snow.service.ISysCategoryService;
import com.snow.service.ISysGoodsService;
import com.snow.service.ISysLogService;
import com.snow.service.ISysMenuService;
import com.snow.service.ISysRoleService;
import com.snwo.pojo.TBSysCategory;
import com.snwo.pojo.TBSysGoods;
import com.snwo.pojo.TBSysLogs;
import com.snwo.pojo.TBSysMenu;
import com.snwo.pojo.TBSysRole;

@Controller
public class ShowpageController {

	@RequestMapping("/index")
	public ModelAndView showIndex() {
		ModelAndView modelandview = new ModelAndView() ;
		modelandview.setViewName("index");
		return modelandview ;
	}
	//登陆页面
	@RequestMapping("/login")
	public ModelAndView showlogin() {
		ModelAndView modelandview = new ModelAndView() ;
		modelandview.setViewName("login");
		return modelandview ;
	}
	
	
	
	//进入用户添加页面
	@RequestMapping("/addSysUserpage")
	public ModelAndView showaddSysUser() {
		ModelAndView modelandview = new ModelAndView() ;
	
		List<TBSysRole> SysRole = roleService.readSysRole() ;
		
		modelandview.addObject("SysRole", SysRole) ;
		modelandview.setViewName("addSysUser");
	
		return modelandview ;
	}
	
	@RequestMapping("/addSysSysRole")
	public ModelAndView showaddSysRole() {
		ModelAndView modelandview = new ModelAndView() ;
		modelandview.setViewName("addSysRole");
			
		return modelandview ;
	}
	@Autowired
	private ISysRoleService roleService ;
	
	@RequestMapping("/editSysSysRole")
	public ModelAndView showeditSysRole() {
	
		ModelAndView modelandview = new ModelAndView() ;
	
	
		modelandview.setViewName("editSysRole");
			
		return modelandview ;
	}
	
	//进入商品添加页面
	@Autowired
	private ISysCategoryService category ;
	@RequestMapping("/showaddSysGoods")
	public ModelAndView showaddSysGoods() {
		
		List<TBSysCategory> Category = category.findCategory() ;
		
		ModelAndView modelandview = new ModelAndView() ;
		modelandview.addObject("Category", Category) ;
		modelandview.setViewName("addgoods");

		return modelandview;
	}
	
	@Autowired
	private ISysMenuService menuService;
	
	@RequestMapping("/showSysMenu")
	public ModelAndView showSysMenu() {
		List<TBSysMenu> readSysMenu = menuService.readSysMenu() ;
		
		ModelAndView modelandview = new ModelAndView() ;
		
		modelandview.addObject("tbsysmenu", readSysMenu) ;
		modelandview.setViewName("sysmenulist");
		return modelandview ;
	}
	
	
	@RequestMapping("/showAddMenu")
	public ModelAndView showAddMenu() {
		ModelAndView modelandview = new ModelAndView() ;
		
		modelandview.setViewName("addsysmenu");
		
		return modelandview ;
	}
	
	@Autowired
	private ISysLogService service;
	
	@RequestMapping("/showlog")
	public ModelAndView ShowLog() {
		ModelAndView modelandview = new ModelAndView() ;
		List<TBSysLogs> shwoSysLog = service.showSysLog();
		
		modelandview.addObject("syslog", shwoSysLog) ;	
		modelandview.setViewName("log");
		return modelandview;
	}
	
	/*
	 * 修改商品
	 */
	@Autowired
	private ISysGoodsService sysGoodsservice;
	@RequestMapping(value="/showeditGood")
	public ModelAndView showeditGood(Integer id) {
		ModelAndView modelandview = new ModelAndView() ;
		TBSysGoods SysGood = sysGoodsservice.findSysGoodById(id) ;
		modelandview.addObject("goods",SysGood);
		modelandview.setViewName("editgoods");
		
		
		return modelandview;
	}
}
