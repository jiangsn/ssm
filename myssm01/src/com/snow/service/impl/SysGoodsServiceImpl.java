package com.snow.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.snow.dao.SysGoods;
import com.snow.service.ISysGoodsService;
import com.snwo.pojo.TBSysGoods;


@Service
public class SysGoodsServiceImpl implements ISysGoodsService{

	@Autowired
	private SysGoods sysgoods;
	
	


	@Override
	public List<TBSysGoods> findSysGoods() {
		return sysgoods.readSysGoods();
	}




	@Override
	public int addSysGoods(TBSysGoods SysGoods) {
		// TODO Auto-generated method stub
		return sysgoods.addSysGoods(SysGoods);
	}




	@Override
	public int deteleSysGoods(Integer id) {
		// TODO Auto-generated method stub
		return sysgoods.deteleSysGoods(id);
	}




	@Override
	public TBSysGoods findSysGoodById(Integer id) {
		// TODO Auto-generated method stub
		return sysgoods.selectbyId(id);
	}

	@Override
	public int updateGood(TBSysGoods goods) {
		// TODO Auto-generated method stub
		return sysgoods.updateGood(goods);
	}

}
