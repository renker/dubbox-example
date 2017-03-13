<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
	
	<title><sitemesh:write property='title' />-管理平台</title>
	<!-- bootstrap & fontawesome -->
	<link rel="stylesheet" href="${ctx }/static/lib/ace/css/bootstrap.min.css" />
	<link rel="stylesheet" href="${ctx }/static/lib/ace/font-awesome/4.5.0/css/font-awesome.min.css" />
	
	
	<!-- page specific plugin styles -->

	<!-- text fonts -->
	<link rel="stylesheet" href="${ctx }/static/lib/ace/css/fonts.googleapis.com.css" />

	<!-- ace styles -->
	<%-- <link rel="stylesheet" href="${ctx }/static/lib/ace/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" /> --%>
	<link rel="stylesheet" href="${ctx }/static/lib/ace/css/ace.css" class="ace-main-stylesheet" id="main-ace-style" />

	<!--[if lte IE 9]>
		<link rel="stylesheet" href="${ctx }/static/lib/ace/css/ace-part2.min.css" class="ace-main-stylesheet" />
	<![endif]-->
	<link rel="stylesheet" href="${ctx }/static/lib/ace/css/ace-skins.min.css" />
	<link rel="stylesheet" href="${ctx }/static/lib/ace/css/ace-rtl.min.css" />

	<!--[if lte IE 9]>
	  <link rel="stylesheet" href="${ctx }/static/lib/ace/css/ace-ie.css" />
	<![endif]-->
	
	<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

	<!--[if lte IE 8]>
	<script src="${ctx }/static/lib/ace/js/html5shiv.min.js"></script>
	<script src="${ctx }/static/lib/ace/js/respond.min.js"></script>
	<![endif]-->

	<!-- inline styles related to this page -->

	<!-- ace settings handler -->
	<script src="${ctx }/static/lib/ace/js/ace-extra.min.js"></script>
	
	<script src="${ctx }/static/lib/jquery-1.11.1.min.js"></script>
	<script src="${ctx }/static/lib/jquery.cookies.js"></script>
	
	
	<%-- 支持mobile --%>
	<script type="text/javascript">
		if('ontouchstart' in document.documentElement) document.write("<script src='"+ctx+"/static/lib/ace/jquery.mobile.custom.min.js'>"+"<"+"/script>");
	</script>
	
	<script src="${ctx }/static/lib/ace/js/bootstrap.min.js"></script>
	
	<script src="${ctx }/static/manage/js/manage_layout.js"></script>
	
	<!-- page specific plugin scripts -->

	<!--[if lte IE 8]>
	  <script src="${ctx }/static/lib/ace/js/excanvas.min.js"></script>
	<![endif]-->
	<script src="${ctx }/static/lib/ace/js/jquery-ui.custom.min.js"></script>
	<script src="${ctx }/static/lib/ace/js/jquery.ui.touch-punch.min.js"></script>
	<script src="${ctx }/static/lib/ace/js/jquery.easypiechart.min.js"></script>
	<script src="${ctx }/static/lib/ace/js/jquery.sparkline.index.min.js"></script>
	<script src="${ctx }/static/lib/ace/js/jquery.flot.min.js"></script>
	<script src="${ctx }/static/lib/ace/js/jquery.flot.pie.min.js"></script>
	<script src="${ctx }/static/lib/ace/js/jquery.flot.resize.min.js"></script>

	<!-- ace scripts -->
	<script src="${ctx }/static/lib/ace/js/ace-elements.min.js"></script>
	<script src="${ctx }/static/lib/ace/js/ace.min.js"></script>
	
	<%-- <script src="${ctx }/static/lib/ace/js/jquery.dataTables.min.js"></script> --%>
	<%-- <script src="${ctx }/static/lib/ace/js/jquery.dataTables.bootstrap.min.js"></script> --%>
	
	<link rel="stylesheet" href="${ctx }/static/lib/jquery.datatables/css/jquery.datatables.css" />
	<script src="${ctx }/static/lib/jquery.datatables/jquery.datatables.min.js"></script>
	
	<script src="${ctx }/static/lib/layer/layer.js"></script>

	<sitemesh:write property='head' />
</head>
<body class="no-skin" style="background-color: #fff;">
	<div class="main-content">
		<div class="page-content"><sitemesh:write property='body' /></div>
	</div>
</body>
</html>