<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>资源管理</title>
</head>
<body>
	<div class="page-content">
	
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
			                    <th>资源路径</th>
			                    <th>资源字符串</th>
			                    <th>状态</th>
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