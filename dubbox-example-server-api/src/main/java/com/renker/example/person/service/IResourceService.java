package com.renker.example.person.service;

import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.github.miemiedev.mybatis.paginator.domain.PageList;
import com.renker.common.mvc.Page;
import com.renker.example.person.model.Resource;

public interface IResourceService {
	int deleteByPrimaryKey(String id);

    int insert(Resource record);

    int insertSelective(Resource record);

    Resource selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Resource record);

    int updateByPrimaryKey(Resource record);
    
    Page<Resource> listPage(Page<Resource> page);
}
