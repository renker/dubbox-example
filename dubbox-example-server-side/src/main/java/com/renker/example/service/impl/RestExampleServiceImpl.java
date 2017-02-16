package com.renker.example.service.impl;

import com.alibaba.dubbo.config.annotation.Service;
import com.renker.example.service.IRestExampleService;

@Service(protocol={"rest"})
public class RestExampleServiceImpl implements IRestExampleService {
	public String hellow(String something) {
		StringBuffer sb = new StringBuffer("Server response:");
		sb.append(something == null?"":something);
		return sb.toString();
	}
}
