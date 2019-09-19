package com.user.dao;

import com.github.pagehelper.PageInfo;
import com.user.mapper.UserMapper;

public interface IUserDao {
	/**
	 * 根据用户名和密码查询记录是否存在
	 * @param username  用户名
	 * @param userpwd   密码
	 * @return
	 */
	public Boolean selectUserExtis(String username,String userpwd);
	
	
	public PageInfo<UserMapper> selectUser();
	

}
