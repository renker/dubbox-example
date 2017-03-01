package com.renker.example.client.controller.person;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("manage/resource")
@Controller
public class ResourceController {
	@RequestMapping(value="index",name="资源首页")
	public String index(){
		
		return "manage/resource/resource_index";
	}
}
