package com.snow.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.snow.dao.SysCategory;
import com.snow.service.ISysCategoryService;
import com.snwo.pojo.TBSysCategory;

@Service
public class SysCategoryServiceImpl implements ISysCategoryService{
	
	
	@Autowired
	private SysCategory syscategory ;
	
	
	
	@Override
	public List<TBSysCategory> findCategory() {
		// TODO Auto-generated method stub
		return syscategory.findCategory();
	}



	@Override
	public List<TBSysCategory> findCategorybyId(Integer id) {
		// TODO Auto-generated method stub
		return syscategory.findCategorybyId(id);
	}



	@Override
	public List<TBSysCategory> findGoodCategorybyId(Integer id) {
		// TODO Auto-generated method stub
		return syscategory.findGoodCategorybyId(id);
	}

}
