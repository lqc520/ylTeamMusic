<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<script src="<%=basePath %>js/jquery-1.10.2.js" type="text/javascript"></script>
<script src="<%=basePath %>js/bootstrap.min.js" type="text/javascript"></script>
<script src="<%=basePath %>js/jquery.metisMenu.js" type="text/javascript"></script>
<script src="<%=basePath %>dataTables/jquery.dataTables.js" type="text/javascript"></script>
<script src="<%=basePath %>dataTables/dataTables.bootstrap.js" type="text/javascript"></script>
<script src="<%=basePath %>js/echarts.common.min.js" type="text/javascript"></script>
<script>
	//初始化dataTable
	$(document).ready(function () {
	    $('#dataTables-example').dataTable();
	});
</script>
