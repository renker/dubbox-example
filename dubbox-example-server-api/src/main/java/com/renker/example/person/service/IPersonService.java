package com.renker.example.person.service;

import com.renker.example.person.model.Person;

public interface IPersonService {
	int deleteByPrimaryKey(String id);

    int insert(Person record);
    
    Person selectByPrimaryKey(String id);
    
    int updateByPrimaryKey(Person record);
    
    Person login(String account);
    
    Person login(String account,String password);
}
