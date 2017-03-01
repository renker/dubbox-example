package com.renker.example.person.service;

import javax.annotation.Resource;

import org.springframework.transaction.annotation.Transactional;

import com.alibaba.dubbo.config.annotation.Service;
import com.renker.example.person.mapper.PermissionMapper;
import com.renker.example.person.model.Permission;

@Service(group="example",protocol={"dubbo"})
@Transactional
public class PermissionService implements IPermissionService {
	@Resource
	private PermissionMapper permissionMapper;

	@Override
	public int deleteByPrimaryKey(String id) {
		
		return permissionMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Permission record) {
		return permissionMapper.insert(record);
	}

	@Override
	public int insertSelective(Permission record) {
		return permissionMapper.insertSelective(record);
	}

	@Override
	public Permission selectByPrimaryKey(String id) {
		return permissionMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Permission record) {
		return permissionMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Permission record) {
		return permissionMapper.updateByPrimaryKey(record);
	}

}
