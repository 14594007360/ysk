package com.ysk.controller;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.ysk.service.UserService;
@Controller
@Scope("prototype")
public class UserAction extends ActionSupport {
	@Resource
	private UserService userService;
	
	public String login(){
		
		
		
		return SUCCESS;
	}
	
}
