package com.user.dao;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.github.pagehelper.PageInfo;
import com.user.mapper.UserMapper;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

public class UserDao extends SqlSessionDaoSupport implements IUserDao {
	private final String MAPPER_NAMESPACE="com.user.";
	/**
	 * �����û����������ѯ��¼�Ƿ����
	 * @param username  �û���
	 * @param userpwd   ����
	 * @return
	 */
	public Boolean selectUserExtis(String username, String userpwd) {
		Integer row = this.getSqlSession().selectOne(MAPPER_NAMESPACE.concat("loginSQL"),
				new UserMapper(username, userpwd));
		return row>0?true:false;
	}
	public PageInfo<UserMapper> selectUser() {
		List<UserMapper> list = this.getSqlSession().selectList("", "");
		return new PageInfo(list);
	}

}
