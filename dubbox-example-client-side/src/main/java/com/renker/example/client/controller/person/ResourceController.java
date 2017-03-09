package com.renker.example.client.controller.person;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.dubbo.config.annotation.Reference;
import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.github.miemiedev.mybatis.paginator.domain.PageList;
import com.renker.common.mvc.AjaxResult;
import com.renker.common.mvc.BaseController;
import com.renker.common.mvc.Page;
import com.renker.common.mvc.Status;
import com.renker.example.client.spring.SpringContextUtil;
import com.renker.example.person.model.Resource;
import com.renker.example.person.service.IResourceService;

@RequestMapping("manage/resource")
@Controller
public class ResourceController extends BaseController{
	
	@Reference(group="example")
	private IResourceService resourceService;
	
	@javax.annotation.Resource
	private SpringContextUtil util;
	
	@RequestMapping(value="index",name="资源_列表")
	public String index(){
		
		return "manage/resource/resource_index";
	}
	
	@RequestMapping(value="list",name="资源_列表_加载数据")
	@ResponseBody
	public Page<Resource> list(Integer page,Integer pageSize){
		Page<Resource> pageList = resourceService.listPage(new PageBounds(page, pageSize));
		return pageList;
	}
	
	/**
	 * 自动扫描资源
	 * @return
	 */
	@RequestMapping(value="scan")
	@ResponseBody
	public AjaxResult scan(){
		
		List<Resource> list  = util.autoScanResource();
		Date currentDate = new Date();
		for (Resource resource : list) {
			resource.setCreateTime(currentDate);
			resource.setStatus(1);
			resourceService.insert(resource);
		}
		
		return ajaxResult(Status.SUCCESS);
	}
}
