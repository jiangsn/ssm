package com.snow.dao;

import java.util.List;

import com.snwo.pojo.TBSysGoods;

public interface SysGoods {
	
	public List<TBSysGoods> readSysGoods() ; 
	
	//添加商品
	public int addSysGoods(TBSysGoods SysGoods) ;
	
	//删除商品
	
	public int deteleSysGoods(Integer id ) ;

	public TBSysGoods selectbyId(Integer id);
	
	//修改商品
	public int updateGood(TBSysGoods SysGoods);
	
	
	
}
