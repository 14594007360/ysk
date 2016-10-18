package com.ysk.dao;

import com.ysk.vo.User;

public interface UserDao {
	/**
	 * 登录验证
	 * @param user
	 * @return
	 */
	public int login(User user);
	
	/**
	 * 注册用户
	 * @param user
	 */
	public void register(User user);
}
