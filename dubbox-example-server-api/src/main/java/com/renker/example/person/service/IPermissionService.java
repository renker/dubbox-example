package com.renker.example.person.service;

import com.renker.common.mvc.Page;
import com.renker.example.person.model.Permission;

public interface IPermissionService {
	
	int deleteByPrimaryKey(String id);

    int insert(Permission record);

    int insertSelective(Permission record);

    Permission selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Permission record);

    int updateByPrimaryKey(Permission record);
    
    Page<Permission> listPage(Page<Permission> page);
}
