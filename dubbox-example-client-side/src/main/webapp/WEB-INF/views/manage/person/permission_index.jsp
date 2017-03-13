<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>权限管理</title>
<script type="text/javascript">var ctx = '${ctx}';</script>
<script type="text/javascript" src="${ctx}/static/manage/js/person/permission_index.js"></script>
</head>
<body>
	<div class="row">
		<form class="form-horizontal">
			<div class="col-xs-12">
				<select>
					<option value="">请选择状态</option>
					<option value="common">正常</option>
					<option value="button">按钮</option>
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
					<table class="table table-striped table-bordered table-hover dataTable no-footer" id="table">
						<thead>
							<tr>
								<th style="width: 35px;">
									<label class="pos-rel">
										<input type="checkbox" class="ace" />
										<span class="lbl"></span>
									</label>
								</th>
			                    <th>权限字符串</th>
			                    <th>备注</th>
			                    <th>类型</th>
			                    <th>操作</th>
							</tr>
		              	</thead>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
</html>