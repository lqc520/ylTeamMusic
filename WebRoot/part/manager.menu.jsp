<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
	<body>
	<!--导航栏class="active-menu-->
	<nav class="navbar-default navbar-side" role="navigation">
	<div class="sidebar-collapse" >
	<ul class="nav" id="main-menu" > 
		<li ><a href="<%=basePath %>userManager.html"> 
		<i class="fa fa-desktop"></i>客户管理</a></li>
		<li><a href="<%=basePath %>musicManager.html">
		<i class="fa fa-table"></i>音乐管理 </a></li>
		<li><a href="<%=basePath %>videoManager.html">
		<i class="fa fa-credit-card"></i>视频管理</a></li>
<%-- 		<li><a href="<%=basePath %>OrderServlet?op=show"> --%>
<!-- 		<i class="fa fa-desktop"></i>订单管理</a></li> -->
	</ul>
	</div>
	</nav>
	</body>
</html>
