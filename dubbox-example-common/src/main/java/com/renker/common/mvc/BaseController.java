package com.renker.common.mvc;


public class BaseController {
	public AjaxResult ajaxResult(Status status){
		return new AjaxResult(status);
	}
	
	public AjaxResult ajaxResult(Status status,String msg){
		return new AjaxResult(status, msg);
	}
	
	public AjaxResult ajaxResult(Status status,Object result){
		return new AjaxResult(status, result);
	}
	
	public AjaxResult ajaxResult(Status status,String msg,Object result){
		return new AjaxResult(status, msg, result);
	}
}
