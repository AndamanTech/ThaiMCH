package com.google.tmch.dao.impl;

import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

import com.google.tmch.dao.UserDao;
import com.google.tmch.model.User;

public class UserDaoImpl extends JdbcDaoSupport implements UserDao {

	@Override
	public List<User> findAllUser() throws Exception {
		String sql="select * from user";
		List<User> alluser=getJdbcTemplate().query(sql, new BeanPropertyRowMapper<User>(User.class));
		return alluser;
	}
	
	

}
