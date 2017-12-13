package com.snow.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.snow.service.ISysCategoryService;
import com.snwo.pojo.TBSysCategory;

@Controller

public class TBSysCategoryController {
	@Autowired
	private ISysCategoryService service;

	
	@RequestMapping("findCategory")
	@ResponseBody
	public String findCategory(Integer ID) {
		List<TBSysCategory> Category = service.findCategorybyId(ID);
		String jsonString = JSON.toJSONString(Category) ;
		
		return jsonString;
	}
	
	@RequestMapping(value="/findGoodCategory",produces = "application/json;charset=utf-8")
	@ResponseBody
	public String findGoodCategory(Integer ID) {
		List<TBSysCategory> Category = service.findGoodCategorybyId(ID) ;
		String jsonString = JSON.toJSONString(Category) ;
		System.out.println(jsonString);
		return jsonString;
	}
	
	
	
	
}
