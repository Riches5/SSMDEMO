package com.user.dao;

import com.github.pagehelper.PageInfo;
import com.user.mapper.UserMapper;

public interface IUserDao {
	/**
	 * �����û����������ѯ��¼�Ƿ����
	 * @param username  �û���
	 * @param userpwd   ����
	 * @return
	 */
	public Boolean selectUserExtis(String username,String userpwd);
	
	
	public PageInfo<UserMapper> selectUser();
	

}
