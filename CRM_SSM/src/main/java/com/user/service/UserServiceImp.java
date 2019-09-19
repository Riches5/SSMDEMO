package com.user.service;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;

import com.github.pagehelper.PageInfo;
import com.user.dao.IUserDao;
import com.user.mapper.UserMapper;

public class UserServiceImp implements IUserService{

	@Resource
	private IUserDao userdao;
	/**
	 * 用户登录
	 */
	public Boolean userLogin(String name, String pwd) {
		// 服务层可以在调dao数据方法前作一些验证、过滤等筛选工作
		
		return userdao.selectUserExtis(name, pwd);
	}
	public PageInfo<UserMapper> queryUserInfo() {
		// TODO Auto-generated method stub
		return null;
	}

}
