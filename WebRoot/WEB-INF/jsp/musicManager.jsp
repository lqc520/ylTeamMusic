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

<title>音乐管理</title>
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
								<font size="4">音乐管理</font> <a href="#"> <span
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
												<th style="width:5%">歌曲编号</th>
												<th style="width:12%">歌曲名称</th>
												<th style="width:10%">歌曲图片</th>
												<th style="width:3%">热度</th> 
												<th style="width:25%">歌词地址</th>
												<th style="width:15%">歌曲地址</th>
												<th style="width:10%">歌手名称</th>
												<th style="width:10%">歌曲类型</th>
												<th style="width:5%">修改</th>
												<th style="width:5%">删除</th>
											</tr>
										</thead>
										<tbody>
											<c:if test="${not empty list }">
												<c:forEach var="m" items="${list }">
													<tr>
														<td>${m.musicId }</td>
														<td>${m.musicName }</td>
														<td>${m.musicPhotoURL }</td>
														<td>${m.musicHot }</td>
														<td>${m.lyricURL }</td>
														<td>${m.songURL }</td>
														<td>${m.singerName }</td>
														<td>${m.musicTypeName }</td>
														<td>
															<a href="#" data-toggle="modal" data-target="#myModal" onclick="editInfo(this,1)">
																<span class="glyphicon glyphicon-edit"></span>
															</a>
														</td>
														<td>
															<a href="javascript:doRemove(${m.musicId},'${m.musicName }')" style="color:rgb(212,106,64)">
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
										<form action="insertMusic.html" method="post" role="form" enctype="multipart/form-data">
											<input type="hidden" id="op" name="op">
											<input type="hidden" id="mid" name="mid">
											<div class="form-group">
												<table class="table" style="font: '黑体';">
													<thead>
														<tr>
															<th>歌曲信息：</th>
															<th></th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td><b>歌曲名称:</b></td>
															<td><input type="text" id="musicName" name="musicName" class="form-control"/>
															</td>
														</tr>
														<tr>
															<td><b>歌曲类型：</b></td>
															<td>
																<select id="type" name="type" class="form-control">
																	<option>流行</option>
																	<option>嘻哈</option>
																	<option>摇滚</option>
																	<option>电子</option>
																	<option>民谣</option>
																	<option>R&B</option>
																	<option>民歌</option>
																	<option>轻音乐</option>
																	<option>爵士</option>
																	<option>古典</option>
																	<option>乡村</option>
																	<option>蓝调</option>
																	<option>古风</option>
																	
																</select>
															</td>
														</tr>
														<tr>
															<td><b>歌曲图片：</b></td>
															<td>
																<span class="fileDefault" style="font-size:3px"></span>
																<input type="file" name="myFile" class="form-control"/>
																<input type="hidden" name="musicUrlPhoto" id="musicPhotoURL" class="form-control"/>
															</td>
														</tr>
														<tr>
															<td><b>热度：</b></td>
															<td><input type="number" id="musicHot" name="musicHot" class="form-control"/></td>
														</tr>
														<tr>
															<td><b>歌词地址：</b></td>
															<td>
																<input type="text" id="lyricURL" name="lyricURL" class="form-control"/>
															</td>
														</tr>
														<tr>
															<td><b>歌曲文件：</b></td>
															<td>
																 <p><span class="fileDefault" style="font-size:3px"></span>
																 <input type="file" name="myFile" class="form-control"/>
																 <input type="hidden" name="songURL" id="songURL"/>
																 </p>
	
															</td>
														</tr>
														<tr>
															<td><b>歌手名称：</b></td>
															<td><input type="text" id="singer" name="singer" class="form-control"/></td>
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
				$("#musicName").val(""); 
				$("#musicPhotoURL").val("");
				$("#musicHot").val("");
				$("#lyricURL").val("");
				$(".fileDefault").text("");
				$("#singer").val("");
				$("#type").val("");
				
			}else{
				$("#op").val("edit");
				var musicInfo = obj.parentNode.parentNode.childNodes;
				$("#mid").val(musicInfo[1].innerText);
				$("#musicName").val(musicInfo[3].innerText);
				$("#musicPhotoURL").val(musicInfo[5].innerText);
				
				$("#musicHot").val(musicInfo[7].innerText);
				$("#lyricURL").val(musicInfo[9].innerText);
				$("#songURL").val(musicInfo[11].innerText);
				$(".fileDefault").text("不选择则为初始文件");
				$("#singer").val(musicInfo[13].innerText);
				$("#type").val(musicInfo[15].innerText);
				$(".btn-primary").click(function(){
					
				});
			}
		}
		function doRemove(mid,name){
			if(confirm("您确定删除"+name+"吗？")){
				$.post("DeletedById.html",{"musicId":mid},function(data){
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