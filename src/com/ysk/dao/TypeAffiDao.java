package com.ysk.dao;

import java.util.List;

import com.ysk.vo.Type_Affiliated;

public interface TypeAffiDao {
	/**
	 * ��ȡ���д���
	 * @return
	 */
	public List<Type_Affiliated> queryAllAffi();
	
	/**
	 * ����id��ȡ����
	 * @param affiId
	 * @return
	 */
	public Type_Affiliated queryById(int affiId);
	
	public List<Type_Affiliated> queryByChildId(int childId);
}
