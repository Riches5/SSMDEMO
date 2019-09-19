package com.sale.service;

import com.github.pagehelper.PageInfo;
import com.sale.mapper.Marketingci;

public interface ISaleService {
	
	public PageInfo<Marketingci> queryMarketingci(int pageNum,int pageSize);
}
