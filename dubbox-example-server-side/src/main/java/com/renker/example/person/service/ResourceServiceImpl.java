package com.renker.example.person.service;

import org.springframework.transaction.annotation.Transactional;

import com.alibaba.dubbo.config.annotation.Service;
import com.renker.example.person.mapper.ResourceMapper;
import com.renker.example.person.model.Resource;

@Service(group="example",protocol={"dubbo"})
@Transactional
public class ResourceServiceImpl implements IResourceService {

	@javax.annotation.Resource
	private ResourceMapper resourceMapper;
	
	@Override
	public int deleteByPrimaryKey(String id) {
		return resourceMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Resource record) {
		return resourceMapper.insert(record);
	}

	@Override
	public int insertSelective(Resource record) {
		return resourceMapper.insertSelective(record);
	}

	@Override
	public Resource selectByPrimaryKey(String id) {
		return resourceMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Resource record) {
		return resourceMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Resource record) {
		return resourceMapper.updateByPrimaryKey(record);
	}

}
