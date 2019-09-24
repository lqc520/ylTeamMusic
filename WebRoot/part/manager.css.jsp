<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<link href="<%=basePath %>css/bootstrap.css" rel="stylesheet" />
<link href="<%=basePath %>css/font-awesome.css" rel="stylesheet" />
<link href="<%=basePath %>css/custom-styles.css" rel="stylesheet" />
<link href="<%=basePath %>dataTables/dataTables.bootstrap.css" rel="stylesheet" />