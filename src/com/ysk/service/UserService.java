package com.ysk.service;

import com.ysk.vo.User;

public interface UserService {
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
	
	/**
	 * 更新用户信息
	 * @param user
	 */
	public void updateUser(User user);
}
