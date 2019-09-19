package com.sale.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.sale.mapper.Marketingci;

public class SaleDaoImp extends SqlSessionDaoSupport implements ISaleDao{

	public PageInfo<Marketingci> selectAllMarketingci(int pageNum,int pageSize) {
		PageHelper.startPage(pageNum,pageSize);
		List<Marketingci> list = this.getSqlSession().selectList("com.sale.selectMarketingci");
		return new PageInfo<Marketingci>(list);
	}

}
