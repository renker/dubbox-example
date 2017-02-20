package com.renker.example.client.restcontroller;


import javax.annotation.Resource;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.alibaba.dubbo.config.annotation.Reference;
import com.renker.example.client.cache.CacheService;
import com.renker.example.client.cache.ICacheService;
import com.renker.example.person.model.Person;
import com.renker.example.person.service.IPersonService;
import com.renker.example.service.IRestExampleService;
import com.renker.example.service.IRpcExampleService;

@RestController
@RequestMapping("example")
public class ExampleRestController {
	@Reference(group="example")
	private IRpcExampleService exampleService;
	
	@Reference(group="example")
	private IRestExampleService restExampleService;
	
	@Reference(group="example")
	private IPersonService personService;
	
	@Resource
	private ICacheService cacheService;
	
	@RequestMapping("hellow")
	public String hellow(String thing){
		long start = System.currentTimeMillis();
		String res = exampleService.hellow(thing);
		long end = System.currentTimeMillis();
		
		StringBuffer sb = new StringBuffer(res);
		sb.append("this run takes only ").append(end-start).append(" ms");
		return sb.toString();
	}
	
	@RequestMapping("rest/hellow")
	public String restHellow(String thing){
		long start = System.currentTimeMillis();
		String res = restExampleService.hellow(thing);
		long end = System.currentTimeMillis();
		
		StringBuffer sb = new StringBuffer(res);
		sb.append("this run takes only ").append(end-start).append(" ms");
		return sb.toString();
	}
	
	@RequestMapping("login")
	public String login(String account){
		Person p = personService.login(account);
		return p==null?"no":p.getId();
	}
	
	@RequestMapping("cache/login")
	public String cacheLogin(String account){
		Person p = cacheService.login(account);
		return p.getId();
	}
}
