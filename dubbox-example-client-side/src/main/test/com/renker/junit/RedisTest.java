package com.renker.junit;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.alibaba.dubbo.config.annotation.Reference;
import com.renker.example.client.Application;
import com.renker.example.person.model.Person;
import com.renker.example.person.service.IPersonService;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = Application.class)
public class RedisTest {
	
	@Reference(group="example")
	private IPersonService personService;
	
	@Test
	public void getRedis(){
		Person p = getPerson("root");
		System.out.println("1........"+p.getAccount());
		
		
		p = getPerson("root");
		System.out.println("2........"+p.getAccount());
	}
	
	@Cacheable
	public Person getPerson(String account){
		Person a = new Person();
		a.setAccount("root");
		a.setId("aesefsfse");
		return a;
	}
}
