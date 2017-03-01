package com.renker.example.client.controller.person;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.dubbo.config.annotation.Reference;
import com.renker.common.mvc.AjaxResult;
import com.renker.common.mvc.BaseController;
import com.renker.common.mvc.Page;
import com.renker.common.mvc.Status;
import com.renker.common.utils.UUIDUtil;
import com.renker.example.person.condition.PersonCondition;
import com.renker.example.person.model.Person;
import com.renker.example.person.service.IPersonService;
import com.renker.example.utils.MD5Util;

@Controller
@RequestMapping("/manage/person")
public class PersonController extends BaseController{
	@Reference(group="example")
	private IPersonService personService;
	
	@RequestMapping(value="index",method=RequestMethod.GET,name="用户管理_首页")
	// @RequiresPermissions("person:list")
	public String index(){
		return "manage/person/person_index";
	}
	
	@RequestMapping(value="list",method=RequestMethod.POST,name="用户管理_首页_加载分页数据")
	@ResponseBody
	public Page<Person> list(Page<Person> page,PersonCondition condition){
		page = personService.listPage(page, condition);
		return page;
	}
	
	@RequestMapping("toCreate/layer")
	public String toCreate(){
		return "manage/person/person_create";
	}
	
	@RequiresPermissions("person.toCreate")
	@RequestMapping(value="doCreate",method=RequestMethod.POST,name="用户管理_新增")
	@ResponseBody
	public AjaxResult doAdd(Person person){
		try {
			person.setId(UUIDUtil.randomUUID());
			person.setSalt(UUIDUtil.randomUUID());
			person.setPassword(MD5Util.MD5(person.getPassword(), person.getSalt()));
			personService.insert(person);
			return ajaxResult(Status.SUCCESS);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ajaxResult(Status.ERROR);
	}
	
	@RequestMapping("toEdit/{id}")
	public String toEdit(@PathVariable("id")String id){
		return "";
	}
	
	@RequestMapping("doEdit")
	public String doEdit(){
		return "";
	}
	
}
