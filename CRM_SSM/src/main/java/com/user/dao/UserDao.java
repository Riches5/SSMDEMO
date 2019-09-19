package com.user.dao;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.github.pagehelper.PageInfo;
import com.user.mapper.UserMapper;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

public class UserDao extends SqlSessionDaoSupport implements IUserDao {
	private final String MAPPER_NAMESPACE="com.user.";
	/**
	 * 根据用户名和密码查询记录是否存在
	 * @param username  用户名
	 * @param userpwd   密码
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
