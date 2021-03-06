package com.ysk.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ysk.dao.ReserDao;
import com.ysk.service.ReserService;
import com.ysk.vo.Reservation;
@Service("reserService")
public class ReserServiceImpl implements ReserService {
	@Resource
	private ReserDao reserDao;
	
	/**
	 * 获取所有预订信息
	 * @return
	 */
	public List<Reservation> queryAllReser() {
		
		return reserDao.queryAllReser();
	}

	/**
	 * 根据id获取预订信息
	 * @return
	 */
	public Reservation queryById(int reserId) {
		
		return reserDao.queryById(reserId);
	}

	/**
	 * 根据名称获取预订信息
	 * @param reserName
	 * @return
	 */
	public List<Reservation> queryByName(String reserName){
		
		return reserDao.queryByName(reserName);
	}

	/**
	 * 添加预订信息
	 * @param reser
	 */
	public void addReser(Reservation reser){
		reserDao.addReser(reser);
	}
}
