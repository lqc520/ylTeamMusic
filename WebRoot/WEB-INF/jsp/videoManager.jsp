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

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">    
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link href="assets/js/dataTables/dataTables.bootstrap.css" rel="stylesheet" />

<title>视频管理</title>
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
								<font size="4">视频管理</font> <a href="#"> <span
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
									<table class="table table-striped table-bordered table-hover dataTables-example "
										id="dataTables-example">
										<thead>
											<tr>
												<th>视频编号</th>
												<th>视频名称</th>
												<th>主角名称</th>
												<th>视频图片</th> 
												<th>视频地址</th>
												<th>修改</th>
												<th>删除</th>
											</tr>
										</thead>
										<tbody>
											<c:if test="${not empty list }">
												<c:forEach var="m" items="${list }">
													<tr>
														<td>${m.videoId }</td>
														<td>${m.videoName }</td>
														<td>${m.videoAuthor }</td>
														<td>${m.videoPhoto }</td>
														<td>${m.videoURL }</td>
									
														
														<td>
															<a href="#" data-toggle="modal" data-target="#myModal" onclick="editInfo(this,1)">
																<span class="glyphicon glyphicon-edit"></span>
															</a>
														</td>
														<td>
															<a href="javascript:doRemove(${m.videoId},'${m.videoName }')" style="color:rgb(212,106,64)">
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
										<form action="insertVideo.html" method="post" role="form" enctype="multipart/form-data">
											<input type="hidden" id="op" name="op">
											<input type="hidden" id="vid" name="vid">
											<div class="form-group">
												<table class="table" style="font: '黑体';">
													<thead>
														<tr>
															<th>视频信息：</th>
															<th></th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td><b>视频名称:</b></td>
															<td>
																<input type="text" id="videoName" name="videoName" class="form-control"/>
															</td>
														</tr>
														<tr>
															<td><b>视频主角:</b></td>
															<td><input type="text" id="videoAuthor" name="videoAuthor" class="form-control"/>
															</td>
														</tr>
														<tr>
															<td><b>视频图片：</b></td>
															
															<td>
																<span class="fileDefault" style="font-size:3px"></span>
																 <input type="file" name="myFile" class="form-control"/>
																 <input type="hidden" name="videoPhoto" id="videoPhoto" class="form-control"/></td>
														</tr>
														<tr>
															<td><b>视频文件：</b></td>
															<td>
																 <p><span class="fileDefault" style="font-size:3px"></span>
																 	<input type="file" name="myFile" class="form-control"/>
																 	<input type="hidden" name="videoUrl" id="videoUrl"/>
																 </p>
	
															</td>
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
				$("#videoName").val(""); 
				$("#videoAuthor").val("");
				$("#videoPhoto").val("");
				$(".fileDefault").text("");
				
				
			}else{
				$("#op").val("edit");
				var musicInfo = obj.parentNode.parentNode.childNodes;
				$("#vid").val(musicInfo[1].innerText); 
				$("#videoName").val(musicInfo[3].innerText); 
				$("#videoAuthor").val(musicInfo[5].innerText);
				$("#videoPhoto").val(musicInfo[7].innerText);
				$("#videoUrl").val(musicInfo[9].innerText);
				$(".fileDefault").text("不选择则为初始文件");
			}
		}
		function doRemove(videoId,name){
			if(confirm("您确定删除 "+name+" 吗？")){
				$.post("deleteVideo.html",{"videoId":videoId},function(data){
					alert("删除成功");
					window.location.reload();
				});
			}
		}
		$(".glyphicon-repeat").click(function(){
			window.location.reload();
		});
	</script>
</body>
</html>