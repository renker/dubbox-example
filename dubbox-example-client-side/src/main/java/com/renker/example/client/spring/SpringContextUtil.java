package com.renker.example.client.spring;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.renker.common.utils.PatternUtil;
import com.renker.example.person.model.Resource;

@Component
public class SpringContextUtil implements ApplicationContextAware{
	private ApplicationContext applicationContext;
	
	public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
		this.applicationContext = applicationContext;
	}
	
	public List<Resource> autoScanResource(){
		List<Resource> list = new  ArrayList<Resource>();
		Map<String, Object> beans = applicationContext.getBeansWithAnnotation(Controller.class);
		for (String key : beans.keySet()) {
			Object bean = beans.get(key);
			
			if(bean.getClass().isAnnotationPresent(RequestMapping.class)){
				RequestMapping crm = bean.getClass().getAnnotation(RequestMapping.class);
				String [] vrmVal = crm.value();
				
				Method [] methods = bean.getClass().getMethods();
				for (Method method : methods) {
					if(method.isAnnotationPresent(RequestMapping.class)){
						RequestMapping mrm = method.getAnnotation(RequestMapping.class);
						String [] mrmVal = mrm.value();
						if(mrmVal != null && mrmVal.length>0){
							String url = ((vrmVal != null && vrmVal.length>0) ?vrmVal[0]:"")+"/"+mrmVal[0];
							
							String pattern = PatternUtil.resourceKey(url);
							String exurl = PatternUtil.resourcePattern(url);
							
							System.out.println(pattern+"\t"+exurl+"\t"+bean.getClass().getName()+"\t"+method.getName());
							
							Resource res = new Resource();
							res.setClasspath(bean.getClass().getName());
							res.setMethod(method.getName());
							res.setPattern(pattern);
							res.setUrl(exurl);
							res.setRemark(mrm.name());
							list.add(res);
						}
					}
				}
			}
		}
		
		return list;
	}

}
