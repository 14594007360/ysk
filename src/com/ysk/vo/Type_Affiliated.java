package com.ysk.vo;

public class Type_Affiliated {
	private Integer affi_id;
	private String affi_name;
	private Integer childtype_id;
	
	private Type_Child child;
	
	public Type_Affiliated() {
		
	}
	
	public Type_Affiliated(Integer affi_id, String affi_name,
			Integer childtype_id, Type_Child child) {
		this.affi_id = affi_id;
		this.affi_name = affi_name;
		this.childtype_id = childtype_id;
		this.child = child;
	}

	public Type_Child getChild() {
		return child;
	}

	public void setChild(Type_Child child) {
		this.child = child;
	}

	public Integer getAffi_id() {
		return affi_id;
	}
	public void setAffi_id(Integer affi_id) {
		this.affi_id = affi_id;
	}
	public String getAffi_name() {
		return affi_name;
	}
	public void setAffi_name(String affi_name) {
		this.affi_name = affi_name;
	}
	public Integer getChildtype_id() {
		return childtype_id;
	}
	public void setChildtype_id(Integer childtype_id) {
		this.childtype_id = childtype_id;
	}
}
