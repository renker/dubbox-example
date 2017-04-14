package com.renker.example.client.controller.person;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
	public List<Permission> list(Page<Permission> page,String id){
		if(StringUtils.isNotBlank(id)){
			return new ArrayList<Permission>();
		}
		return permissionService.listAll();
	}
	
	@RequestMapping("toCreate/ignore")
	public String toCreate(String type,Model model){
		model.addAttribute(type, type);
		return "manage/person/permission_edit";
	}
	
	@RequestMapping("create")
	@ResponseBody
	public AjaxResult create(){
		return ajaxResult(Status.ERROR);
	}
}
