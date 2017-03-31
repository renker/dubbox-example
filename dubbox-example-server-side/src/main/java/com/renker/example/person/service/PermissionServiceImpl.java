package com.renker.example.person.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.transaction.annotation.Transactional;

import com.alibaba.dubbo.config.annotation.Service;
import com.github.miemiedev.mybatis.paginator.domain.PageList;
import com.renker.common.mvc.Page;
import com.renker.example.person.mapper.PermissionMapper;
import com.renker.example.person.model.Permission;

@Service(group="example",protocol={"dubbo"})
@Transactional
public class PermissionServiceImpl implements IPermissionService {
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

	@Override
	public Page<Permission> listPage(Page<Permission> page) {
		PageList<Permission> pageLIst =  (PageList<Permission>) permissionMapper.listPage(page.toPageBounds());
		return page.load(pageLIst);
	}

	@Override
	public List<Permission> listAll() {
		return permissionMapper.listAll();
	}

}
