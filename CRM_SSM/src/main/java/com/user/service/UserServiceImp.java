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
	 * �û���¼
	 */
	public Boolean userLogin(String name, String pwd) {
		// ���������ڵ�dao���ݷ���ǰ��һЩ��֤�����˵�ɸѡ����
		
		return userdao.selectUserExtis(name, pwd);
	}
	public PageInfo<UserMapper> queryUserInfo() {
		// TODO Auto-generated method stub
		return null;
	}

}
