package com.renker.example.person.service;

import javax.annotation.Resource;

import org.springframework.cache.annotation.Cacheable;
import org.springframework.transaction.annotation.Transactional;

import com.alibaba.dubbo.config.annotation.Service;
import com.renker.example.person.mapper.PersonMapper;
import com.renker.example.person.model.Person;

@Service(protocol={"dubbo"},group="example")
@Transactional
public class PersonServiceImpl implements IPersonService{
	@Resource
	private PersonMapper personMapper;

	public int deleteByPrimaryKey(String id) {
		return personMapper.deleteByPrimaryKey(id);
	}

	public int insert(Person record) {
		return personMapper.insert(record);
	}

	@Cacheable(value="personCache")
	public Person selectByPrimaryKey(String id) {
		return personMapper.selectByPrimaryKey(id);
	}

	public int updateByPrimaryKey(Person record) {
		return personMapper.updateByPrimaryKey(record);
	}

	public Person login(String account) {
		return personMapper.findByAccount(account);
	}

	public Person login(String account, String password) {
		return personMapper.findByAccountAndPassword(account, password);
	}
}
