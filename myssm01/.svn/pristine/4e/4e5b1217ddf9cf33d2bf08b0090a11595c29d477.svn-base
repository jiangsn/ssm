package com.snow.controller;

import java.lang.ProcessBuilder.Redirect;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.snow.service.ISysRoleService;
import com.snow.service.ISysUserService;
import com.snow.util.DatetUtil;
import com.snwo.pojo.TBSysRole;
import com.snwo.pojo.TBSysUser;

@Controller
@RequestMapping("/sysRole")
public class TBSysRoleController {
	
	//查询所有角色
	@Autowired
	private ISysRoleService sysroleservice ;

	@RequestMapping("findSysRole")
	public ModelAndView findSysRole() {
		List<TBSysRole> SysRole = sysroleservice.readSysRole() ;
		ModelAndView modelandview = new ModelAndView() ;
		modelandview.addObject("sysRoleList", SysRole) ;
		modelandview.setViewName("sysRoleList");
		
		return modelandview;
	}
	//添加角色
	
	@RequestMapping("addSysRole")
	public ModelAndView addSysRole(TBSysRole tbsysrole) {
		
		tbsysrole.setCtime(DatetUtil.getDataString(new Date()));
		
		sysroleservice.addSysRole(tbsysrole) ;
		List<TBSysRole> readSysRole = sysroleservice.readSysRole() ;

		ModelAndView modelandview = new ModelAndView() ;
		modelandview.addObject("sysRoleList", readSysRole) ;
		modelandview.setViewName("sysRoleList");
		
		return modelandview;
	}
	// 删除角色
	@RequestMapping("deleteSysRole")
	public ModelAndView deleteSysRole(TBSysRole tbsysrole) {
		sysroleservice.deleteSysRole(tbsysrole) ;
		ModelAndView modelandview = new ModelAndView() ;
	
		List<TBSysRole> SysRole = sysroleservice.readSysRole() ;
	
		modelandview.addObject("sysRoleList", SysRole) ;
		modelandview.setViewName("sysRoleList");
		return modelandview;
	}
	//修改角色
	
	@RequestMapping("editSysRole")
	public ModelAndView editSysRole(Integer id) {
		TBSysRole SysRole = sysroleservice.updateSysRole(id) ;
		ModelAndView modelandview = new ModelAndView() ;
		modelandview.addObject("SysRole", SysRole) ;
		modelandview.setViewName("editSysRole");
		return modelandview;
	}
	//修改角色提交 
	@RequestMapping("editSysRoleSubmit")
	public ModelAndView editSysRoleSubmit(TBSysRole tbsysrole) {
		tbsysrole.setCtime(DatetUtil.getDataString(new Date()));
		sysroleservice.updateSysRolectime(tbsysrole) ;
		ModelAndView modelandview = new ModelAndView() ;
		List<TBSysRole> SysRole = sysroleservice.readSysRole() ;
		modelandview.addObject("sysRoleList", SysRole) ;
		modelandview.setViewName("sysRoleList");
		
		return modelandview;
	}
}
