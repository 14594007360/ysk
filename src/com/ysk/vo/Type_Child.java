package com.ysk.vo;

import java.util.List;

public class Type_Child {
	private Integer child_id;
	private String child_name;
	private Integer type_id;
	
	private Type type;
	private List<Type_Affiliated> affis;
	
	public Type_Child() {
		
	}
	
	public Type_Child(Integer child_id, String child_name, Integer type_id,
			Type type, List<Type_Affiliated> affis) {
		this.child_id = child_id;
		this.child_name = child_name;
		this.type_id = type_id;
		this.type = type;
		this.affis = affis;
	}

	public List<Type_Affiliated> getAffis() {
		return affis;
	}

	public void setAffis(List<Type_Affiliated> affis) {
		this.affis = affis;
	}

	public Type getType() {
		return type;
	}

	public void setType(Type type) {
		this.type = type;
	}

	public Integer getChild_id() {
		return child_id;
	}
	public void setChild_id(Integer child_id) {
		this.child_id = child_id;
	}
	public String getChild_name() {
		return child_name;
	}
	public void setChild_name(String child_name) {
		this.child_name = child_name;
	}
	public Integer getType_id() {
		return type_id;
	}
	public void setType_id(Integer type_id) {
		this.type_id = type_id;
	}
	
}
