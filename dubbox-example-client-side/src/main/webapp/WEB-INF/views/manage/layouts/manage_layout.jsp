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
	
	<script src="${ctx }/static/lib/jquery.validate.min.js"></script>
	
	<script src="${ctx }/static/lib/layer/layer.js"></script>
	
	<script src="${ctx }/static/manage/js/common_utils.js"></script>
	<script src="${ctx }/static/manage/js/manage_layout.js"></script>

	<sitemesh:write property='head' />
</head>
<body class="no-skin">
	<%-- 头部 ____________________________________________start --%>
	<div id="navbar" class="navbar navbar-default ace-save-state">
		<div class="navbar-container ace-save-state" id="navbar-container">
			<button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler" data-target="#sidebar">
				<span class="sr-only">Toggle sidebar</span>

				<span class="icon-bar"></span>

				<span class="icon-bar"></span>

				<span class="icon-bar"></span>
			</button>

			<div class="navbar-header pull-left">
				<a href="index.html" class="navbar-brand">
					<small>
						<i class="fa fa-leaf"></i>
						管理平台
					</small>
				</a>
			</div>

			<div class="navbar-buttons navbar-header pull-right" role="navigation">
				<ul class="nav ace-nav">
					<li class="grey dropdown-modal">
						<a data-toggle="dropdown" class="dropdown-toggle" href="#">
							<i class="ace-icon fa fa-tasks"></i>
							<span class="badge badge-grey">4</span>
						</a>

						<ul class="dropdown-menu-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
							<li class="dropdown-header">
								<i class="ace-icon fa fa-check"></i>
								4 Tasks to complete
							</li>

							<li class="dropdown-content">
								<ul class="dropdown-menu dropdown-navbar">
									<li>
										<a href="#">
											<div class="clearfix">
												<span class="pull-left">Software Update</span>
												<span class="pull-right">65%</span>
											</div>

											<div class="progress progress-mini">
												<div style="width:65%" class="progress-bar"></div>
											</div>
										</a>
									</li>

									<li>
										<a href="#">
											<div class="clearfix">
												<span class="pull-left">Hardware Upgrade</span>
												<span class="pull-right">35%</span>
											</div>

											<div class="progress progress-mini">
												<div style="width:35%" class="progress-bar progress-bar-danger"></div>
											</div>
										</a>
									</li>

									<li>
										<a href="#">
											<div class="clearfix">
												<span class="pull-left">Unit Testing</span>
												<span class="pull-right">15%</span>
											</div>

											<div class="progress progress-mini">
												<div style="width:15%" class="progress-bar progress-bar-warning"></div>
											</div>
										</a>
									</li>

									<li>
										<a href="#">
											<div class="clearfix">
												<span class="pull-left">Bug Fixes</span>
												<span class="pull-right">90%</span>
											</div>

											<div class="progress progress-mini progress-striped active">
												<div style="width:90%" class="progress-bar progress-bar-success"></div>
											</div>
										</a>
									</li>
								</ul>
							</li>

							<li class="dropdown-footer">
								<a href="#">
									See tasks with details
									<i class="ace-icon fa fa-arrow-right"></i>
								</a>
							</li>
						</ul>
					</li>

					<li class="purple dropdown-modal">
						<a data-toggle="dropdown" class="dropdown-toggle" href="#">
							<i class="ace-icon fa fa-bell icon-animated-bell"></i>
							<span class="badge badge-important">8</span>
						</a>

						<ul class="dropdown-menu-right dropdown-navbar navbar-pink dropdown-menu dropdown-caret dropdown-close">
							<li class="dropdown-header">
								<i class="ace-icon fa fa-exclamation-triangle"></i>
								8 Notifications
							</li>

							<li class="dropdown-content">
								<ul class="dropdown-menu dropdown-navbar navbar-pink">
									<li>
										<a href="#">
											<div class="clearfix">
												<span class="pull-left">
													<i class="btn btn-xs no-hover btn-pink fa fa-comment"></i>
													New Comments
												</span>
												<span class="pull-right badge badge-info">+12</span>
											</div>
										</a>
									</li>

									<li>
										<a href="#">
											<i class="btn btn-xs btn-primary fa fa-user"></i>
											Bob just signed up as an editor ...
										</a>
									</li>

									<li>
										<a href="#">
											<div class="clearfix">
												<span class="pull-left">
													<i class="btn btn-xs no-hover btn-success fa fa-shopping-cart"></i>
													New Orders
												</span>
												<span class="pull-right badge badge-success">+8</span>
											</div>
										</a>
									</li>

									<li>
										<a href="#">
											<div class="clearfix">
												<span class="pull-left">
													<i class="btn btn-xs no-hover btn-info fa fa-twitter"></i>
													Followers
												</span>
												<span class="pull-right badge badge-info">+11</span>
											</div>
										</a>
									</li>
								</ul>
							</li>

							<li class="dropdown-footer">
								<a href="#">
									See all notifications
									<i class="ace-icon fa fa-arrow-right"></i>
								</a>
							</li>
						</ul>
					</li>

					<li class="green dropdown-modal">
						<a data-toggle="dropdown" class="dropdown-toggle" href="#">
							<i class="ace-icon fa fa-envelope icon-animated-vertical"></i>
							<span class="badge badge-success">5</span>
						</a>

						<ul class="dropdown-menu-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
							<li class="dropdown-header">
								<i class="ace-icon fa fa-envelope-o"></i>
								5 Messages
							</li>

							<li class="dropdown-content">
								<ul class="dropdown-menu dropdown-navbar">
									<li>
										<a href="#" class="clearfix">
											<img src="${ctx }/static/lib/ace/images/avatars/avatar.png" class="msg-photo" alt="Alex's Avatar" />
											<span class="msg-body">
												<span class="msg-title">
													<span class="blue">Alex:</span>
													Ciao sociis natoque penatibus et auctor ...
												</span>

												<span class="msg-time">
													<i class="ace-icon fa fa-clock-o"></i>
													<span>a moment ago</span>
												</span>
											</span>
										</a>
									</li>

									<li>
										<a href="#" class="clearfix">
											<img src="${ctx }/static/lib/ace/images/avatars/avatar3.png" class="msg-photo" alt="Susan's Avatar" />
											<span class="msg-body">
												<span class="msg-title">
													<span class="blue">Susan:</span>
													Vestibulum id ligula porta felis euismod ...
												</span>

												<span class="msg-time">
													<i class="ace-icon fa fa-clock-o"></i>
													<span>20 minutes ago</span>
												</span>
											</span>
										</a>
									</li>

									<li>
										<a href="#" class="clearfix">
											<img src="${ctx }/static/lib/ace/images/avatars/avatar4.png" class="msg-photo" alt="Bob's Avatar" />
											<span class="msg-body">
												<span class="msg-title">
													<span class="blue">Bob:</span>
													Nullam quis risus eget urna mollis ornare ...
												</span>

												<span class="msg-time">
													<i class="ace-icon fa fa-clock-o"></i>
													<span>3:15 pm</span>
												</span>
											</span>
										</a>
									</li>

									<li>
										<a href="#" class="clearfix">
											<img src="${ctx }/static/lib/ace/images/avatars/avatar2.png" class="msg-photo" alt="Kate's Avatar" />
											<span class="msg-body">
												<span class="msg-title">
													<span class="blue">Kate:</span>
													Ciao sociis natoque eget urna mollis ornare ...
												</span>

												<span class="msg-time">
													<i class="ace-icon fa fa-clock-o"></i>
													<span>1:33 pm</span>
												</span>
											</span>
										</a>
									</li>

									<li>
										<a href="#" class="clearfix">
											<img src="${ctx }/static/lib/ace/images/avatars/avatar5.png" class="msg-photo" alt="Fred's Avatar" />
											<span class="msg-body">
												<span class="msg-title">
													<span class="blue">Fred:</span>
													Vestibulum id penatibus et auctor  ...
												</span>

												<span class="msg-time">
													<i class="ace-icon fa fa-clock-o"></i>
													<span>10:09 am</span>
												</span>
											</span>
										</a>
									</li>
								</ul>
							</li>

							<li class="dropdown-footer">
								<a href="inbox.html">
									See all messages
									<i class="ace-icon fa fa-arrow-right"></i>
								</a>
							</li>
						</ul>
					</li>

					<li class="light-blue dropdown-modal">
						<a data-toggle="dropdown" href="#" class="dropdown-toggle">
							<img class="nav-user-photo" src="${ctx}/static/lib/ace/images/avatars/user.jpg" alt="Jason's Photo" />
							<span class="user-info">
								<small>Welcome,</small>
								Jason
							</span>

							<i class="ace-icon fa fa-caret-down"></i>
						</a>

						<ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
							<li>
								<a href="#">
									<i class="ace-icon fa fa-cog"></i>
									Settings
								</a>
							</li>

							<li>
								<a href="profile.html">
									<i class="ace-icon fa fa-user"></i>
									Profile
								</a>
							</li>

							<li class="divider"></li>

							<li>
								<a href="${ctx }/manage/loginOut">
									<i class="ace-icon fa fa-power-off"></i>
									Logout
								</a>
							</li>
						</ul>
					</li>
				</ul>
			</div>
		</div><!-- /.navbar-container -->
	</div>
	<%-- 头部 ____________________________________________end --%>
	
	<%-- 主体内容____________________________________________start --%>
	<div class="main-container ace-save-state" id="main-container">
		
		<%-- 左部菜单 ____________________________________________start --%>
		<div id="sidebar" class="sidebar responsive ace-save-state">
			<script type="text/javascript">
				try{ace.settings.loadState('sidebar')}catch(e){}
			</script>

			<div class="sidebar-shortcuts" id="sidebar-shortcuts">
				<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
					<button class="btn btn-success">
						<i class="ace-icon fa fa-signal"></i>
					</button>

					<button class="btn btn-info">
						<i class="ace-icon fa fa-pencil"></i>
					</button>

					<button class="btn btn-warning">
						<i class="ace-icon fa fa-users"></i>
					</button>

					<button class="btn btn-danger">
						<i class="ace-icon fa fa-cogs"></i>
					</button>
				</div>

				<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
					<span class="btn btn-success"></span>

					<span class="btn btn-info"></span>

					<span class="btn btn-warning"></span>

					<span class="btn btn-danger"></span>
				</div>
			</div><!-- /.sidebar-shortcuts -->

			<%-- 菜单列表 ____________________________________________start --%>
			<ul class="nav nav-list">
				<li class="">
					<a href="${ctx }/manage/home">
						<i class="menu-icon fa fa-home"></i>
						<span class="menu-text"> HOME </span>
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a href="#" class="dropdown-toggle">
						<i class="menu-icon fa fa-user"></i>
						<span class="menu-text">
							用户 &amp; 权限管理
						</span>
						<b class="arrow fa fa-angle-down"></b>
					</a>
					<b class="arrow"></b>
					<ul class="submenu">
						<li class="">
							<a href="${ctx }/manage/person/index">
								<i class="menu-icon fa fa-caret-right"></i>
								用户管理
							</a>

							<b class="arrow"></b>
						</li>

						<li class="">
							<a href="${ctx }/manage/department/index">
								<i class="menu-icon fa fa-caret-right"></i>
								部门管理
							</a>
							<b class="arrow"></b>
						</li>

						<li class="">
							<a href="${ctx }/manage/role/index">
								<i class="menu-icon fa fa-caret-right"></i>
								角色管理
							</a>

							<b class="arrow"></b>
						</li>

						<li class="">
							<a href="#" class="dropdown-toggle">
								<i class="menu-icon fa fa-caret-right"></i>
								资源 &amp; 权限管理
								<b class="arrow fa fa-angle-down"></b>
							</a>
							
							
							<ul class="submenu">
							
								<li class="">
									<a href="${ctx }/manage/resource/index">
										<i class="menu-icon fa fa-caret-right"></i>
										资源管理
									</a>
									<b class="arrow"></b>
								</li>
								
								<li class="">
									<a href="${ctx }/manage/permission/index">
										<i class="menu-icon fa fa-caret-right"></i>
										权限管理
									</a>
									<b class="arrow"></b>
								</li>
							</ul>
						</li>
						
						<li class="">
							<a href="${ctx }/manage/menu/index">
								<i class="menu-icon fa fa-caret-right"></i>
								菜单管理
							</a>
							<b class="arrow"></b>
						</li>

					</ul>
				</li>
				
				
				<li class="">
					<a href="#" class="dropdown-toggle">
						<i class="menu-icon fa fa-gear"></i>
						<span class="menu-text">
							系统管理
						</span>
						<b class="arrow fa fa-angle-down"></b>
					</a>
					<b class="arrow"></b>
					
					<ul class="submenu">
						<li class="">
							<a href="typography.html">
								<i class="menu-icon fa fa-caret-right"></i>
								数据字典
							</a>

							<b class="arrow"></b>
						</li>
					</ul>
				</li>

			</ul><!-- /.nav-list -->
			
			<%-- 菜单列表 ____________________________________________end --%>

			<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
				<i id="sidebar-toggle-icon" class="ace-icon fa fa-angle-double-left ace-save-state" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
			</div>
		</div>
		<%-- 左部菜单 ____________________________________________end --%>
		
		<%-- 右部内容 ____________________________________________start --%>
		<div class="main-content">
			<div class="main-content-inner">
				<%-- 头部导航____________________________________________start --%>
				<div class="breadcrumbs ace-save-state" id="breadcrumbs">
					<ul class="breadcrumb">
						<li>
							<i class="ace-icon fa fa-home home-icon"></i>
							<a href="${ctx }/manage/home">HOME</a>
						</li>
						<!-- <li class="active">Dashboard</li> -->
					</ul>
					<div class="nav-search" id="nav-search">
						<form class="form-search">
							<span class="input-icon">
								<input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
								<i class="ace-icon fa fa-search nav-search-icon"></i>
							</span>
						</form>
					</div><!-- /.nav-search -->
				</div>
				<%-- 头部导航____________________________________________end --%>
				
				<%-- 页面内容____________________________________________start --%>
				<div class="page-content">
					<sitemesh:write property='body' />
				</div>
				
				<%-- 页面内容____________________________________________start --%>
				
			</div>
		</div>
		<%-- 右部内容 ____________________________________________end --%>
		
		
		<%-- 底部____________________________________________start --%>
		<div class="footer">
			<div class="footer-inner">
				<div class="footer-content">
					<span class="bigger-120">
						<span class="blue bolder">管理平台</span>
						APPLICATION &copy; 2013-2014
					</span>

					&nbsp; &nbsp;
					<span class="action-buttons">
						<a href="#">
							<i class="ace-icon fa fa-twitter-square light-blue bigger-150"></i>
						</a>

						<a href="#">
							<i class="ace-icon fa fa-facebook-square text-primary bigger-150"></i>
						</a>

						<a href="#">
							<i class="ace-icon fa fa-rss-square orange bigger-150"></i>
						</a>
					</span>
				</div>
			</div>
		</div>
		<%-- 底部____________________________________________end --%>
		
		
	</div>
	<%-- 主体内容____________________________________________end --%>
</body>
</html>