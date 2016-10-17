package com.ysk.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ysk.dao.UserDao;
import com.ysk.service.UserService;
import com.ysk.vo.User;
@Service("userService")
public class UserServiceImpl implements UserService {
	@Resource
	private UserDao userDao;
	
	/**
	 * µÇÂ¼ÑéÖ¤
	 * @param user
	 * @return
	 */
	public int login(User user) {
		
		return userDao.login(user);
	}

}
