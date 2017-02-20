package com.renker.example.client.cache;

import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import com.alibaba.dubbo.config.annotation.Reference;
import com.renker.example.person.model.Person;
import com.renker.example.person.service.IPersonService;

@Service
public class CacheService implements ICacheService {
	@Reference(group="example")
	IPersonService personService;
	
	@Cacheable(value="login",keyGenerator="wiselyKeyGenerator")
	public Person login(String account) {
		return personService.login(account);
	}

}
