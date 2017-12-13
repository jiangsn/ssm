package com.snow.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.snow.service.ISysMenuService;
import com.snow.util.DatetUtil;
import com.snwo.pojo.TBSysMenu;

@Controller
@RequestMapping("/sysmenu")
public class TBSysMenuController {
	@Autowired
	private ISysMenuService sysMenuService ;
	
	@RequestMapping(value="/findMenubyid",produces = "application/json;charset=utf-8")
	@ResponseBody
	public String findMenubyid(Integer menuType) {
		List<TBSysMenu> Menu = sysMenuService.findMenuById(menuType) ;
		
		String jsonString = JSON.toJSONString(Menu);
		System.out.println(jsonString);
		return jsonString ;
	}
	
	
	@RequestMapping("addSysMenu")
	public ModelAndView addSysMenu(TBSysMenu menu) {
		menu.setCtime(DatetUtil.getDataString(new Date()));
		
		 sysMenuService.addSysMenu(menu) ;
		
		ModelAndView view = new ModelAndView() ;
		List<TBSysMenu> Menu = sysMenuService.readSysMenu();
		view.addObject("tbsysmenu", Menu) ;
		view.setViewName("sysmenulist");
		
		return view;
	}
	
	
	
}
