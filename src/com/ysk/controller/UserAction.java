package com.ysk.controller;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.ysk.service.UserService;
import com.ysk.vo.User;
@Controller
@Scope("prototype")
public class UserAction extends ActionSupport {
	@Resource
	private UserService userService;
	
	private User loginUser;				//��¼�û�
	private User registerUser;			//ע���û�
	private User updateUser;			//�޸��û�
	
	/**
	 * ��¼��֤
	 * @param loginUser
	 * @return
	 */
	public String login(){
		
		int result = userService.login(loginUser);
		
		return SUCCESS;
	}

	/**
	 * ע���û�
	 * @param registerUser
	 */
	public String register(){
		
		userService.register(registerUser);
		
		return SUCCESS;
	}
	
	/**
	 * ע���û�
	 * @param updateUser
	 */
	public String updateUser(){
		
		userService.updateUser(updateUser);
		
		return SUCCESS;
	}
	
	public User getLoginUser() {
		return loginUser;
	}

	public void setLoginUser(User loginUser) {
		this.loginUser = loginUser;
	}

	public User getRegisterUser() {
		return registerUser;
	}

	public void setRegisterUser(User registerUser) {
		this.registerUser = registerUser;
	}

	public User getUpdateUser() {
		return updateUser;
	}

	public void setUpdateUser(User updateUser) {
		this.updateUser = updateUser;
	}
	
}
