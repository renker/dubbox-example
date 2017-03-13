package com.renker.example.client.controller.person;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.renker.common.mvc.AjaxResult;
import com.renker.common.mvc.BaseController;
import com.renker.common.mvc.Page;
import com.renker.common.mvc.Status;

@Controller
@RequestMapping("manage/role")
public class RoleController extends BaseController{
	/**
	 * 首页
	 * @return
	 */
	@RequestMapping("index")
	public String index(){
		return "manage/role/index";
	}
	
	/**
	 * 加载数据
	 * @return
	 */
	@RequestMapping(value="list",method=RequestMethod.POST)
	@ResponseBody
	public AjaxResult list(){
		return ajaxResult(Status.SUCCESS);
	}
}
