package com.ysk.vo;

import java.util.Date;

public class User {
	private Integer user_id;
	private String loginCode;
	private String password;
	private String userName;
	private Date birthday;
	private String idCard;
	private String mobile;
	private String email;
	private String userAddress;
	private Date createTime;
	private Integer userType;
	
	public User() {
		
	}
	
	public User(Integer user_id, String loginCode, String password,
			String userName, Date birthday, String idCard, String mobile,
			String email, String userAddress, Date createTime, Integer userType) {
		this.user_id = user_id;
		this.loginCode = loginCode;
		this.password = password;
		this.userName = userName;
		this.birthday = birthday;
		this.idCard = idCard;
		this.mobile = mobile;
		this.email = email;
		this.userAddress = userAddress;
		this.createTime = createTime;
		this.userType = userType;
	}

	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public String getLoginCode() {
		return loginCode;
	}
	public void setLoginCode(String loginCode) {
		this.loginCode = loginCode;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getIdCard() {
		return idCard;
	}
	public void setIdCard(String idCard) {
		this.idCard = idCard;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUserAddress() {
		return userAddress;
	}
	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public Integer getUserType() {
		return userType;
	}
	public void setUserType(Integer userType) {
		this.userType = userType;
	}
}
