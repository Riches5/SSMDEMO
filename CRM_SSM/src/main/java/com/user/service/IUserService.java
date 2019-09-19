package com.user.service;

import com.github.pagehelper.PageInfo;
import com.user.mapper.UserMapper;

public interface IUserService {
	
	/**
	 * ��¼ҵ��
	 * @param name
	 * @param pwd
	 * @return
	 */
	public Boolean userLogin(String name,String pwd);
	
	
	public PageInfo<UserMapper> queryUserInfo() ;

}
