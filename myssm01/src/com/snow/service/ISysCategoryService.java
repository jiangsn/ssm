package com.snow.service;

import java.util.List;

import com.snwo.pojo.TBSysCategory;

public interface ISysCategoryService {
	
	
	//查询分类
	public List<TBSysCategory> findCategory() ;

	public List<TBSysCategory> findCategorybyId(Integer id);
	
	//查讯商品分类通过ID
	
	public List<TBSysCategory> findGoodCategorybyId(Integer id);
}
