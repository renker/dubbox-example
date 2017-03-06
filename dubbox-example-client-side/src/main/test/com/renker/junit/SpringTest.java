package com.renker.junit;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.renker.example.client.Application;
import com.renker.example.client.spring.SpringContextUtil;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = Application.class)
public class SpringTest {
	@Resource
	private SpringContextUtil util;
	
	@Test
	public void scan(){
		util.autoScanResource();
	}
}
