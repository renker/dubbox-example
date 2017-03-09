package com.renker.example.person.service;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.transaction.annotation.Transactional;

import com.alibaba.dubbo.config.annotation.Service;
import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.github.miemiedev.mybatis.paginator.domain.PageList;
import com.renker.common.mvc.Page;
import com.renker.common.utils.UUIDUtil;
import com.renker.example.person.mapper.ResourceMapper;
import com.renker.example.person.model.Person;
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
		if(record.getId() == null || record.getId().equals("")){
			record.setId(UUIDUtil.randomUUID());
		}
		return resourceMapper.insert(record);
	}

	@Override
	public int insertSelective(Resource record) {
		if(record.getId() == null || record.getId().equals("")){
			record.setId(UUIDUtil.randomUUID());
		}
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

	@Override
	public Page<Resource> listPage(PageBounds pageBounds) {
		
		PageBounds pageBounds2 = new PageBounds(pageBounds.getPage(), pageBounds.getLimit());
		List<Resource> list = resourceMapper.listPage(pageBounds2);
		PageList<Resource> pageList = (PageList<Resource>)list;
		
		Page<Resource> page = new Page<Resource>();
		page.setResults(list);
		
		page.setPageSize(pageList.getPaginator().getLimit());
		
		page.setCurrentPage(pageList.getPaginator().getPage());
		
		return page;
	}

}
