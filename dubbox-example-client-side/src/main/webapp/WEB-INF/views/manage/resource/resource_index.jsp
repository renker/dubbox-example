<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>资源管理</title>
<script type="text/javascript">var ctx = '${ctx}';</script>
<script type="text/javascript" src="${ctx}/static/manage/js/person/resource_index.js"></script>
</head>
<body>
	<div class="page-content">
		<div class="row">
			<div class="col-xs-12">
				<button id="scanBtn" type="button" class="btn btn-sm btn-primary">自动扫描</button>
			</div>
		</div>
		<div class="space-4"></div>
		<div class="row">
			<div class="col-xs-12">
			<div id="dynamic-table_wrapper" class="dataTables_wrapper form-inline no-footer">
				<div class="table-responsive">
					<table id="table" class="table table-striped table-bordered table-hover dataTable no-footer" >
						<thead>
							<tr>
								<th>
									<label class="pos-rel">
										<input type="checkbox" class="ace" />
										<span class="lbl"></span>
									</label>
								</th>
			                    <th>URL(备注)</th>
			                    <th>资源</th>
			                    <th>创建日期</th>
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