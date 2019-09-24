<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta content="" name="description" />
<meta content="webthemez" name="author" />
<link href="assets/js/dataTables/dataTables.bootstrap.css" rel="stylesheet" />

<title>客户管理</title>
<jsp:include page="/part/manager.css.jsp"></jsp:include>
</head>
<body>
	<div id="wrapper">
		<!--头部：页面标题栏-->
		<jsp:include page="/part/manager.header.jsp"></jsp:include>
		<!--导航栏：页面菜单栏-->
		<jsp:include page="/part/manager.menu.jsp"></jsp:include>
		<!--表格-->
		<div id="page-wrapper">
			<div id="page-inner">
				<div class="row">
					<div class="col-md-12">
						<!-- start dataTables -->
						<!-- 表格格式：面板中嵌套表格 -->
						<div class="panel panel-default">
							<!-- 面板头放：页面标题，刷新按钮，添加按钮 -->
							<div class="panel-heading">
								<font size="4">客户管理</font> <a href="#"> <span
									class="glyphicon glyphicon-repeat"></span>
								</a>
								<span style="float: right">
									<button type="button" class="btn btn-default btn-sm"
										data-toggle="modal" data-target="#myModal" onclick="editInfo(this,0)">
										<span class="glyphicon glyphicon-plane"></span> 添加操作
									</button>
								</span>
							</div>
							<!-- 面板体放：表格内容，按照dataTable格式来构造-->
							<div class="panel-body">
								<div class="table-responsive">
									<table class="table table-striped table-bordered table-hover dataTables-example"
										id="dataTables-example">
										<thead>
											<tr>
												<th style="width:15%">客户编号</th>
												<th style="width:15%">客户账号</th>
												<th style="width:15%">客户邮箱</th>
												<th style="width:15%">客户密码</th>
												<th style="width:15%">客户电话</th>
												<th style="width:15%">客户地址</th>
												<th style="width:5%">修改</th>
												<th style="width:5%">删除</th>
											</tr>
										</thead>
										<tbody>
											<c:if test="${not empty list }">
												<c:forEach var="m" items="${list }">
													<tr>
														<td>${m.userId }</td>
														<td>${m.userName }</td>
														<td>${m.userEmail}</td>
														<td> ******</td>
														<td>${m.phone }</td>
														<td>${m.address }</td>
														
														<td>
															<a href="#" data-toggle="modal" data-target="#myModal" onclick="editInfo(this,1)">
																<span class="glyphicon glyphicon-edit"></span>
															</a>
														</td>
														<td>
															<a href="javascript:doRemove(${m.userId},'${m.userName }')" style="color:rgb(212,106,64)">
																<span class="glyphicon glyphicon-remove"></span>
															</a>
														</td>
													</tr>
												</c:forEach>
											</c:if>
										</tbody>
									</table>
								</div>
							</div>
						</div>
						<!--End dataTables -->
						<!-- 按钮触发模态框 -->
						<!-- 模态框（Modal） myModal-->
						<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
							aria-labelledby="myModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"
											aria-hidden="true">×</button>
										<!-- 表单嵌套表格：规范表单格式 -->
										<form action="insertUser.html " method="post" role="form">
											<input type="hidden" id="op" name="op">
											<input type="hidden" id="uid" name="uid">
											<div class="form-group">
												<table class="table" style="font: '黑体';">
													<thead>
														<tr>
															<th>客户信息：</th>
															<th></th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td><b>客户账号:</b></td>
															<td><input type="text" id="UserName" name="UserName" class="form-control"/></td>
														</tr>
														
														<tr>
															<td><b>客户邮箱：</b></td>
															<td><input type="text" id="UserEmail" name="UserEmail" class="form-control" step="0.01" maxlength="10"/></td>
														</tr>
														
														<tr>
															<td><b>客户密码：</b></td>
															<td><input type="text" id="UserPwd" name="UserPwd" class="form-control" step="0.01" maxlength="10"/></td>
														</tr>
														
														<tr>
															<td><b>客户电话：</b></td>
															<td><input type="text" id="UserPhoto" name="UserPhoto" class="form-control"/></td>
														</tr> 
														 
														<tr>
															<td><b>客户地址：</b></td>
															<td><input type="text" id="UserAddress" name="UserAddress" class="form-control"/></td>
														</tr>
													</tbody>
												</table>
												<div class="modal-footer">
													<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
													<input type="submit" value="提交" class="btn btn-primary">
												</div>
											</div>
										</form>
									</div>
								</div>
							</div>
							<!-- /.modal-dialog -->
						</div>
						<!-- /.modal -->
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="/part/manager.js.jsp"></jsp:include>
	<script src="assets/js/dataTables/jquery.dataTables.js"></script>
    <script src="assets/js/dataTables/dataTables.bootstrap.js"></script>
        <script>
            $(document).ready(function () {
                $('#dataTables-example').dataTable();
            });
    </script>
	<script type="text/javascript">
		function editInfo(obj,type){
			if(type==0){
				$("#op").val("add");
				$("#UserName").val("");
				$("#UserEmail").val("");
				$("#UserPwd").val("");
				$("#UserPhoto").val("");
				$("#UserAddress").val("");
			}else{
				$("#op").val("edit");
				var musicInfo = obj.parentNode.parentNode.childNodes;
				$("#uid").val(musicInfo[1].innerText);
				$("#UserName").val(musicInfo[3].innerText);			
				$("#UserEmail").val(musicInfo[5].innerText);
				$("#UserPwd").val(musicInfo[7].innerText);
				$("#UserPhoto").val(musicInfo[9].innerText);
				$("#UserAddress").val(musicInfo[11].innerText);
			}
		}
		function doRemove(uid,name){
			if(confirm("您确定删除  用户："+name+" 吗？")){
				$.post("deleteUser.html",{"userId":uid},function(data){
					if(data=="yes"){
						alert("删除成功");
						window.location.reload();
					}else{
						alert("删除失败");
					}

				});
			}
		}
		$(".glyphicon-repeat").click(function(){
			window.location.reload();
		});
	</script>
</body>
</html>