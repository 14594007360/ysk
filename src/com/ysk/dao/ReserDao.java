package com.ysk.dao;

import java.util.List;

import com.ysk.vo.Reservation;

public interface ReserDao {
	/**
	 * ��ȡ����Ԥ����Ϣ
	 * @return
	 */
	public List<Reservation> queryAllReser();
	
	/**
	 * ����id��ȡԤ����Ϣ
	 * @return
	 */
	public Reservation queryById(int reserId);
}
