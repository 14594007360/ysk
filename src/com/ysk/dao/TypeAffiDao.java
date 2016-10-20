package com.ysk.dao;

import java.util.List;

import com.ysk.vo.Type_Affiliated;

public interface TypeAffiDao {
	/**
	 * 获取所有从类
	 * @return
	 */
	public List<Type_Affiliated> queryAllAffi();
	
	/**
	 * 根据id获取从类
	 * @param affiId
	 * @return
	 */
	public Type_Affiliated queryById(int affiId);
	
	public List<Type_Affiliated> queryByChildId(int childId);
}
