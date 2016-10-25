package com.ysk.controller;

import java.io.InputStream;
import java.util.Date;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.struts2.interceptor.SessionAware;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.ysk.service.UserService;
import com.ysk.vo.User;
@Controller
@Scope("prototype")
public class UserAction extends ActionSupport implements SessionAware{
	@Resource
	private UserService userService;
	
	private User loginUser;				//登录用户
	private User registerUser;			//注册用户
	private User updateUser;			//修改用户
	private Map<String, Object> session;
	public InputStream inputStream;
	public InputStream getInputStream() {
		return inputStream;
	}
	/**
	 * 登录验证
	 * @param loginUser
	 * @return
	 */
	public String login(){
		
		int result = userService.login(loginUser);
		
		return SUCCESS;
	}

	
	//注册页面的验证码
	public String code;
	public void setCode(String code) {
		this.code = code;
	}
	/**
	 * 注册用户
	 * @param registerUser
	 */
	public String register(){
		String sessionCode = (String) session.get("registerYZM");
		if(sessionCode.equals(code)){
			registerUser.setCreateTime(new Date());
			registerUser.setUserType(0);
			userService.register(registerUser);
			session.put("user", registerUser);
			return SUCCESS;
		}else{
			return "uregister";
		}
		
	}
	
	/**
	 * 注册用户
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
	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	
}
