<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>新增用户</title>
</head>
<body>
	
	<div class="page-content">
		<div class="row">
		
		</div>
	</div>
	
	<script type="text/javascript">
	
		$(function(){
			$("#submit").click(function(){
				
				alert($("#basicForm").valid());
				/* $.post("${ctx}/manage/person/doCreate",$("#basicForm").serializeArray(),function(data){
					$.msg("保存成功");
				}); */
			});
		});
	</script>
</body>
</html>