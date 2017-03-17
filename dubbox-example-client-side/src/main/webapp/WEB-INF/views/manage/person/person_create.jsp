<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>新增用户-用户管理</title>
<script type="text/javascript">var ctx = '${ctx}';</script>
<script type="text/javascript" src="${ctx}/static/manage/js/person/person_edit.js"></script>
</head>
<body>
	<div class="space-4"></div>
	<div class="space-4"></div>
	<div class="row">
		<div class="col-xs-12">
			<form id="editFrom" class="form-horizontal" role="form">
				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right" > 账号: </label>
					<div class="col-sm-9">
						<input id="account" name="account" type="text"  placeholder="账号" class="col-xs-10 col-sm-5" />
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right" > 密码: </label>
					<div class="col-sm-9">
						<input id="password" name="password" type="text" placeholder="密码" class="col-xs-10 col-sm-5" />
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right" > 密码: </label>
					<div class="col-sm-9">
						<input name="resetpassword" type="text"  placeholder="密码" class="col-xs-10 col-sm-5" />
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right" > 状态: </label>
					<div class="col-sm-9">
						<select name="status" class="col-xs-10 col-sm-5">
							<option value="1">正常</option>
							<option value="2">禁止</option>
							<option value="0">未激活</option>
							<option value="-1">删除</option>
						</select>
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right" > ROOT账户: </label>
					<div class="col-sm-9" style="padding-top:9px;">
						<label>
							<input name="root" class="ace ace-switch ace-switch-2" type="checkbox" value="0"/>
							<span class="lbl"></span>
						</label>
					</div>
				</div>
				
				
				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right" for="form-field-1"></label>
					<div class="col-sm-9" style="padding-top:9px;">
						<button id="submitBtn" class="btn btn-sm btn-info" type="button"><i class="ace-icon fa fa-check bigger-110"></i>提交</button>
						<button class="btn btn-sm" type="reset"><i class="ace-icon fa fa-undo bigger-110"></i>重置</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>