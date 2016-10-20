package com.ysk.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.ysk.service.TypeService;
import com.ysk.vo.Type;
@Controller
@Scope("prototype")
public class TypeAction extends ActionSupport {
	@Resource
	private TypeService typeService;
	
	private List<Type> typeList;		//类型列表	
	/**
	 * 获取所有类型
	 * @return
	 */
	public String queryAllType(){
		
		typeList = typeService.queryAllType();
		
		return SUCCESS;
	}

	public List<Type> getTypeList() {
		return typeList;
	}

	public void setTypeList(List<Type> typeList) {
		this.typeList = typeList;
	}
	
}
