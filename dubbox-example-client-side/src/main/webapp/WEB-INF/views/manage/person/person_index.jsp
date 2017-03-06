<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %> 
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户管理</title>
<script type="text/javascript">
	var ctx = '${ctx}';
</script>
<script type="text/javascript" src="${ctx}/static/manage/js/person/person_list.js"></script>
</head>
<body>
	<div class="page-content">
		<div class="row">
			<form class="form-horizontal">
				<div class="col-xs-12">
					<input type="text" placeholder="账号" >
					<input type="text" placeholder="开始时间" >
					<input type="text" placeholder="结束时间" >
					<input type="text" placeholder="状态" >
					<select style="">
						<option>请选择状态</option>
						<option>正常</option>
						<option>禁止</option>
					</select>
					<button type="button" class="btn btn-sm btn-primary">查询</button>
					<button id="createBtn" type="button" class="btn btn-sm btn-primary">新增</button>
				</div>
			</form>
		</div>
		<div class="space-4"></div>
		<div class="row">
			<div class="col-xs-12">
			<div id="dynamic-table_wrapper" class="dataTables_wrapper form-inline no-footer">
				<div class="table-responsive">
					<table class="table table-striped table-bordered table-hover dataTable no-footer" id="table1">
						<thead>
							<tr>
								<th>
									<label class="pos-rel">
										<input type="checkbox" class="ace" />
										<span class="lbl">全选</span>
									</label>
								</th>
			                    <th>账号</th>
			                    <th>是否是root账号</th>
			                    <th>状态</th>
			                    <th>登陆失败限制</th>
			                    <th>登陆失败次数</th>
			                    <th>操作</th>
							</tr>
		              	</thead>
					</table>
				</div>
			</div>
			</div>
		</div>
	</div>
</body>
</html>