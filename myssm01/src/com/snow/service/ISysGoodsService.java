package com.snow.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.snwo.pojo.TBSysGoods;

public interface ISysGoodsService {
	
	
	//查询所有商品
	public List<TBSysGoods> findSysGoods() ; 
	//添加商品
	public int addSysGoods(TBSysGoods SysGoods) ;
	
	//删除商品
	public int deteleSysGoods(Integer id ) ;
	
	//查询商品通过商品id
	public TBSysGoods findSysGoodById(Integer id);
	
	//修改商品
	public int updateGood(TBSysGoods goods);
	
}
