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
	 * 获取所有父类型
	 * @return
	 */
	public List<Type> queryAllType() {
		
		return typeDao.queryAllType();
	}

	/**
	 * 根据id获取父类型
	 * @param typeId
	 * @return
	 */
	public Type queryById(int typeId) {
		
		return typeDao.queryById(typeId);
	}

}
