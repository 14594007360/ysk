package com.ysk.vo;

import java.util.List;

public class Type {
	private Integer type_id;
	private String type_name;
	
	private List<Type_Child> childs;
	
	public Type(Integer type_id, String type_name, List<Type_Child> childs) {
		this.type_id = type_id;
		this.type_name = type_name;
		this.childs = childs;
	}

	public Type() {
		
	}
	
	public List<Type_Child> getChilds() {
		return childs;
	}

	public void setChilds(List<Type_Child> childs) {
		this.childs = childs;
	}

	public Integer getType_id() {
		return type_id;
	}
	public void setType_id(Integer type_id) {
		this.type_id = type_id;
	}
	public String getType_name() {
		return type_name;
	}
	public void setType_name(String type_name) {
		this.type_name = type_name;
	}
}
