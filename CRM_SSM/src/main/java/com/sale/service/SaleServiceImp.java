package com.sale.service;

import javax.annotation.Resource;

import com.github.pagehelper.PageInfo;
import com.sale.dao.ISaleDao;
import com.sale.mapper.Marketingci;

public class SaleServiceImp implements ISaleService{
	
	@Resource
	private ISaleDao dao;
	
	public PageInfo<Marketingci> queryMarketingci(int pageNum, int pageSize) {
		PageInfo<Marketingci> pi =   dao.selectAllMarketingci(pageNum,pageSize);
		return pi;
	}
}
