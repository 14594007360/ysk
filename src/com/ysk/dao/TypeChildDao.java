package com.ysk.dao;

import java.util.List;

import com.ysk.vo.Type_Child;

public interface TypeChildDao {
	/**
	 * ��ȡ�����ӷ���
	 * @return
	 */
	public List<Type_Child> queryAllChild();
	
	/**
	 * ����id��ȡ�ӷ���
	 * @param childId
	 * @return
	 */
	public Type_Child queryByTypeId(int typeId);
}
