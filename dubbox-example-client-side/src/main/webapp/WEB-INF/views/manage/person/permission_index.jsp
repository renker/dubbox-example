<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>权限管理</title>
<style type="text/css">
	.ztree li span.button.add {
	    background-position: -144px 0;
	    margin-left: 2px;
	    margin-right: -1px;
	    vertical-align: top;
	}
	
	.ztree li span.button.edit {
	    background-position: -110px -49px;
	    margin-right: 2px;
	    vertical-align: top;
	}
	
	
	.ztree li span.button.remove {
	    background-position: -110px -65px;
	    margin-right: 2px;
	    vertical-align: top;
	}
</style>
<script type="text/javascript">var ctx = '${ctx}';</script>
<script type="text/javascript" src="${ctx}/static/manage/js/person/permission_index.js"></script>
</head>
<body>
	
	<div class="row">
		<button id="folderCreateBtn" type="button" class="btn btn-sm btn-primary">新增文件夹</button>
		<button id="permissCreateBtn" type="button" class="btn btn-sm btn-primary">新增权限</button>
	</div>
	<div class="row">
		<ul id="tree" class="ztree"></ul>
	</div>
</body>
</html>