package com.renker.example.client.controller.person;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.dubbo.config.annotation.Reference;
import com.renker.common.mvc.AjaxResult;
import com.renker.common.mvc.BaseController;
import com.renker.common.mvc.Page;
import com.renker.common.mvc.Status;
import com.renker.example.person.service.IResourceService;

@RequestMapping("manage/resource")
@Controller
public class ResourceController extends BaseController{
	
	@Reference
	private IResourceService resourceService;
	
	@RequestMapping(value="index",name="资源_列表")
	public String index(){
		
		return "manage/resource/resource_index";
	}
	
	@RequestMapping(value="list",name="资源_列表_加载数据")
	@ResponseBody
	public Page<Resource> list(Page<Resource> page){
		return page;
	}
	
	/**
	 * 自动扫描资源
	 * @return
	 */
	@RequestMapping(value="scan")
	public AjaxResult scan(){
		
		return ajaxResult(Status.SUCCESS);
	}
}
