package com.user.service;

import com.github.pagehelper.PageInfo;
import com.user.mapper.UserMapper;

public interface IUserService {
	
	/**
	 * µÇÂ¼ÒµÎñ
	 * @param name
	 * @param pwd
	 * @return
	 */
	public Boolean userLogin(String name,String pwd);
	
	
	public PageInfo<UserMapper> queryUserInfo() ;

}
