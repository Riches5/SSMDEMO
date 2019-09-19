package com.sale.dao;

import com.github.pagehelper.PageInfo;
import com.sale.mapper.Marketingci;

public interface ISaleDao {
	
	public PageInfo<Marketingci> selectAllMarketingci(int pageNum,int pageSize);
}
