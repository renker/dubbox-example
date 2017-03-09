package com.renker.example.person.mapper;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.renker.example.person.model.Resource;

public interface ResourceMapper {
    int deleteByPrimaryKey(String id);

    int insert(Resource record);

    int insertSelective(Resource record);

    Resource selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Resource record);

    int updateByPrimaryKey(Resource record);
    
    
    List<Resource> listPage(PageBounds pageBounds);
    int listPageCount();
}