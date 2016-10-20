package com.ysk.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ysk.dao.TypeDao;
import com.ysk.service.TypeService;
import com.ysk.vo.Type;
@Service("typeService")
public class TypeServiceImpl implements TypeService {
	@Resource
	private TypeDao typeDao;
	
	/**
	 * ��ȡ���и�����
	 * @return
	 */
	public List<Type> queryAllType() {
		
		return typeDao.queryAllType();
	}

	/**
	 * ����id��ȡ������
	 * @param typeId
	 * @return
	 */
	public Type queryById(int typeId) {
		
		return typeDao.queryById(typeId);
	}

}
