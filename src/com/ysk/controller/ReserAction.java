package com.ysk.controller;

import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.ysk.service.ReserService;
import com.ysk.vo.Reservation;
@Controller
@Scope("prototype")
public class ReserAction extends ActionSupport {
	private ReserService reserService;
	
	private List<Reservation> reserList;  		//预订信息列表
	private List<Reservation> searchReserList;	//搜索预订信息列表
	private Reservation addReser;				//添加预订信息
	
	private int reserId;			 	  		//预订id
	private Reservation reserInfo;		  		//预订信息
	private String reserName;					//预订名称
	
	
	/**
	 * 获取所有预订信息
	 * @return
	 */
	public String queryAllReser(){
		
		reserList = reserService.queryAllReser();
		
		return SUCCESS;
	}
	
	/**
	 * 根据id获取预订信息
	 * @return
	 */
	public String queryById(){
		
		reserInfo = reserService.queryById(reserId);
		
		return SUCCESS;
	}

	/**
	 * 根据名称获取预订信息
	 * @param reserName
	 * @return
	 */
	public String queryByName(){
		
		searchReserList = reserService.queryByName(reserName);
		
		return SUCCESS;
	}
	

	/**
	 * 添加预订信息
	 * @param reser
	 */
	public String addReser(Reservation reser){
		
		reserService.addReser(addReser);
		
		return SUCCESS;
	}
	
	
	
	public Reservation getAddReser() {
		return addReser;
	}

	public void setAddReser(Reservation addReser) {
		this.addReser = addReser;
	}

	public List<Reservation> getSearchReserList() {
		return searchReserList;
	}

	public void setSearchReserList(List<Reservation> searchReserList) {
		this.searchReserList = searchReserList;
	}

	public String getReserName() {
		return reserName;
	}

	public void setReserName(String reserName) {
		this.reserName = reserName;
	}

	public int getReserId() {
		return reserId;
	}

	public void setReserId(int reserId) {
		this.reserId = reserId;
	}

	public Reservation getReserInfo() {
		return reserInfo;
	}

	public void setReserInfo(Reservation reserInfo) {
		this.reserInfo = reserInfo;
	}

	public List<Reservation> getReserList() {
		return reserList;
	}

	public void setReserList(List<Reservation> reserList) {
		this.reserList = reserList;
	}
	
}
