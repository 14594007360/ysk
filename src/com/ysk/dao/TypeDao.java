package com.ysk.dao;

import java.util.List;

import com.ysk.vo.Type;

public interface TypeDao {
	/**
	 * ��ȡ���и�����
	 * @return
	 */
	public List<Type> queryAllType();
	
	/**
	 * ����id��ȡ������
	 * @param typeId
	 * @return
	 */
	public Type queryById(int typeId);
}
