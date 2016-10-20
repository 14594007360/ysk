package com.ysk.service;

import java.util.List;

import com.ysk.vo.Reservation;

public interface ReserService {
	/**
	 * 获取所有预订信息
	 * @return
	 */
	public List<Reservation> queryAllReser();
	
	/**
	 * 根据id获取预订信息
	 * @return
	 */
	public Reservation queryById(int reserId);
}
