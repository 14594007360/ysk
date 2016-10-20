package com.ysk.dao;

import com.ysk.vo.User;

public interface UserDao {
	/**
	 * ��¼��֤
	 * @param user
	 * @return
	 */
	public int login(User user);
	
	/**
	 * ע���û�
	 * @param user
	 */
	public void register(User user);
	
	/**
	 * �����û���Ϣ
	 * @param user
	 */
	public void updateUser(User user);
}
