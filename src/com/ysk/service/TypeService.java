package com.ysk.service;

import java.util.List;

import com.ysk.vo.Type;

public interface TypeService {
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
