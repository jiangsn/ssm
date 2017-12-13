package com.snow.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.snow.service.ISysGoodsService;
import com.snow.util.DatetUtil;
import com.snwo.pojo.TBSysGoods;

@Controller
@RequestMapping("/sysGoods")
public class TBSysGoodsController {
	
	@Autowired
	private	ISysGoodsService service ;
	
	@RequestMapping("/findSysGoods")
	public ModelAndView findSysGoods() {
		List<TBSysGoods> readSysGoods = service.findSysGoods();
		ModelAndView modelandview = new ModelAndView() ;
		modelandview.addObject("GoodList", readSysGoods) ;
		modelandview.setViewName("goodList");
		return modelandview;
	}
	
	/*
	 * 添加商品
	 *   
	 */
	@RequestMapping("/addSysGoods")
	public ModelAndView addSysGoods(TBSysGoods SysGoods) {
		
		SysGoods.setCtime(DatetUtil.getDataString(new Date()));
		 service.addSysGoods(SysGoods) ;
		ModelAndView modelandview = new ModelAndView() ;
		List<TBSysGoods> readSysGoods = service.findSysGoods();
		modelandview.addObject("GoodList", readSysGoods) ;
		modelandview.setViewName("goodList");
		return modelandview;
	}
	/*
	 * 删除商品
	 */
	@RequestMapping("/deteleSysGoods")
	public ModelAndView deteleSysGoods(Integer id) {
		System.out.println(id+ "!!!!!");
		service.deteleSysGoods(id) ;
		
		ModelAndView modelandview = new ModelAndView() ;
		
		List<TBSysGoods> readSysGoods = service.findSysGoods();
		modelandview.addObject("GoodList", readSysGoods) ;
		modelandview.setViewName("goodList");
		return modelandview;
	}
	@RequestMapping("/updateSysGoods")
	public ModelAndView updateSysGoods(TBSysGoods Goods) {

		Goods.setCtime(DatetUtil.getDataString(new Date()));	
		service.updateGood(Goods) ;
		
		ModelAndView modelandview = new ModelAndView() ;
		
		List<TBSysGoods> readSysGoods = service.findSysGoods();
		modelandview.addObject("GoodList", readSysGoods) ;
		modelandview.setViewName("goodList");
		return modelandview;
	}
}
