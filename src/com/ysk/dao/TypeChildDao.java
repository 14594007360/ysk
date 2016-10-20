package com.ysk.dao;

import java.util.List;

import com.ysk.vo.Type_Child;

public interface TypeChildDao {
	/**
	 * 获取所有子分类
	 * @return
	 */
	public List<Type_Child> queryAllChild();
	
	/**
	 * 根据id获取子分类
	 * @param childId
	 * @return
	 */
	public Type_Child queryByTypeId(int typeId);
}
