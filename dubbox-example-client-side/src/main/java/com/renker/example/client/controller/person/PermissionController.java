package com.renker.example.client.controller.person;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.dubbo.config.annotation.Reference;
import com.renker.common.mvc.AjaxResult;
import com.renker.common.mvc.BaseController;
import com.renker.common.mvc.Page;
import com.renker.common.mvc.Status;
import com.renker.example.person.model.Permission;
import com.renker.example.person.service.IPermissionService;

@Controller
@RequestMapping("manage/permission")
public class PermissionController extends BaseController{
	
	@Reference(group="example")
	private IPermissionService permissionService;
	
	@RequestMapping("index")
	public String index(){
		return "manage/person/permission_index";
	}
	
	@RequestMapping("list")
	@ResponseBody
	public List<Permission> list(Page<Permission> page){
		return permissionService.listAll();
	}
	
	@RequestMapping("toCreate/ignore")
	public String toCreate(){
		return "manage/person/permission_edit";
	}
	
	@RequestMapping("create")
	@ResponseBody
	public AjaxResult create(){
		return ajaxResult(Status.ERROR);
	}
}
