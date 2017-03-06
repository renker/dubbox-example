package com.renker.example.client.controller.person;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("manage/permission")
public class PermissionController {
	@RequestMapping("index")
	public String index(){
		return "manage/person/permission_index";
	}
	
	@RequestMapping("list")
	public String list(){
		return null;
	}
}
