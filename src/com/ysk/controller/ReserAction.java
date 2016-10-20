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
	
	private List<Reservation> reserList;  //Ԥ����Ϣ�б�
	
	private int reserId;			 	  //Ԥ��id
	private Reservation reserInfo;		  //Ԥ����Ϣ
	
	/**
	 * ��ȡ����Ԥ����Ϣ
	 * @return
	 */
	public String queryAllReser(){
		
		reserList = reserService.queryAllReser();
		
		return SUCCESS;
	}
	
	/**
	 * ����id��ȡԤ����Ϣ
	 * @return
	 */
	public String queryById(){
		
		reserInfo = reserService.queryById(reserId);
		
		return SUCCESS;
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
