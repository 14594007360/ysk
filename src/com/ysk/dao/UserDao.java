package com.ysk.dao;

import com.ysk.vo.User;

public interface UserDao {
	/**
	 * ��¼��֤
	 * @param user
	 * @return
	 */
	public int login(User user);
}
