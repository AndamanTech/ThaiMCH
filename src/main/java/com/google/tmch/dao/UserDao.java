package com.google.tmch.dao;

import java.util.List;

import com.google.tmch.model.User;

public interface UserDao {
	public List<User> findAllUser()throws Exception;
}
