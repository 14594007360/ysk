package com.ysk.service;

import com.ysk.vo.User;

public interface UserService {
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
