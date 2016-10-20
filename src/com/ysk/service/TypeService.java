package com.ysk.service;

import java.util.List;

import com.ysk.vo.Type;

public interface TypeService {
	/**
	 * 获取所有父类型
	 * @return
	 */
	public List<Type> queryAllType();
	
	/**
	 * 根据id获取父类型
	 * @param typeId
	 * @return
	 */
	public Type queryById(int typeId);
}
