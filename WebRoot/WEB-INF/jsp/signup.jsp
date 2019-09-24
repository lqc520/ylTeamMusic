<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en" class="app">
<head>  
  <meta charset="utf-8" />
  <title>Musik | Web Application</title>
  <meta name="description" content="app, web app, responsive, admin dashboard, admin, flat, flat ui, ui kit, off screen nav" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
  <link rel="stylesheet" href="js/jPlayer/jplayer.flat.css" type="text/css" />
  <link rel="stylesheet" href="css/bootstrap.css" type="text/css" />
  <link rel="stylesheet" href="css/animate.css" type="text/css" />
  <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css" />
  <link rel="stylesheet" href="css/simple-line-icons.css" type="text/css" />
  <link rel="stylesheet" href="css/font.css" type="text/css" />
  <link rel="stylesheet" href="css/app.css" type="text/css" />  
    <!--[if lt IE 9]>
    <script src="js/ie/html5shiv.js"></script>
    <script src="js/ie/respond.min.js"></script>
    <script src="js/ie/excanvas.js"></script>
  <![endif]-->
</head>
<body class="bg-info dker">
  <section id="content" class="m-t-lg wrapper-md animated fadeInDown">
    <div class="container aside-xl">
      <a class="navbar-brand block" href="signup.html"><span class="h1 font-bold">Guide Music</span></a>
      <section class="m-b-lg">
        <header class="wrapper text-center">
          <strong>Guide Music welcome you to register</strong>
        </header>
        <form action="<%=basePath%>register.html" method="post">
          <div class="form-group">
            <input placeholder="Name 4~16" class="form-control rounded input-lg text-center no-border" name="userName" id="userName">
            <span id="cheName"></span>
          </div>
          <div class="form-group">
            <input type="email" placeholder="Email" class="form-control rounded input-lg text-center no-border" name="userEmail">
          </div>
          <div class="form-group">
             <input type="password" placeholder="Password" class="form-control rounded input-lg text-center no-border" name="userPwd" id="userPwd">
              <span id="checkpwd"></span>
          </div>
          <div class="form-group">
             <input type="password" placeholder="Rapeat Password" class="form-control rounded input-lg text-center no-border"
              name="reuserPwd" id="confirm_userPwd">
              <span id="checkpwd1"></span>
          </div>
          <div class="checkbox i-checks m-b">
            <label class="m-l">
              <input type="checkbox" checked="" value="yes" id="rule"><i></i> Agree the <a href="#">terms and policy</a>
            </label>
          </div>
          <button type="submit" class="btn btn-lg btn-warning lt b-white b-2x btn-block btn-rounded"   onclick="return submitTest()"><i class="icon-arrow-right pull-right"></i><span class="m-r-n-lg">Sign up</span></button>
          <div class="line line-dashed"></div>
          <p class="text-muted text-center"><small>Already have an Guide Music account?</small></p>
          <a href="login.html" class="btn btn-lg btn-info btn-block btn-rounded">sign in</a>
        </form>
      </section>
    </div>
  </section>
  <!-- footer -->
  <footer id="footer">
    <div class="text-center padder clearfix">
      <p>
        <small>Guide Music team music welcome come to you regedister<br>&copy; 2018-7</small>
      </p>
    </div>
  </footer>
  <!-- / footer -->
  <script src="js/jquery.min.js"></script>
  <!-- Bootstrap -->
  <script src="js/bootstrap.js"></script>
  <!-- App -->
  <script type="text/javascript">
  	var uname_ok=true;
  	$('#userName').blur(function(){
  		var userName=$(this).val();
	 	$.get("cheName.html",{"userName":userName},function(data){
	 		if(userName==""){
	 			  $("#cheName").html("用户名不可以为空"); 
	 			  uname_ok=false;  
	 		}else if(data == "yes"){
	 			  $("#cheName").html("用户名已存在");  
	 			   uname_ok=false;
	 		}else{
	 			 var pattern=/^\w{4,16}$/;
	 			 if(pattern.test(userName)){
	 			 	$("#cheName").html(""); 
	 			 	 uname_ok=true; 
	 			 }else{
	 			 	$("#cheName").html("请输入4-16位数字、字母、下划线"); 
	 			 	 uname_ok=false; 
	 			 }
	 		}
	 	});
	 
	});
	var pwd_ok=false;
	$('#userPwd').blur(function(){
		var regu = /^(?![A-Z]+$)(?![a-z]+$)(?!\d+$)(?![\W_]+$)\S{6,20}$/;
	 	
	 	if ($(this).val().length < 6 || $(this).val().length > 20) {  
            // 长度不对  
        	$("#checkpwd").html("长度只能在6-20个字符之间");  
            $("#checkpwd").css("color", "red");
            pwd_ok=false;
        
        } else if (!$(this).val().match(regu)) {  
            // 有特殊字符  
        	$("#checkpwd").html("有被盗风险, 建议使用字母, 数字和符号两种及以上组合");  
            $("#checkpwd").css("color", "red");
            pwd_ok=false;
        } else {  
        	$("#checkpwd").html("");
        	pwd_ok=true;
        }  
	});
	var confirm_pwd_ok=false;
	$('#confirm_userPwd').blur(function(){
		if ($(this).val() == ""){  
            $("#checkpwd").html("");  
            confirm_pwd_ok = false;  
        } else if ($(this).val() != $("#userPwd").val()) {  
            // 再次输入的密码不一致  
            $("#checkpwd1").html("两次输入的密码不一致");  
            $("#checkpwd1").css("color", "red");   
            confirm_pwd_ok = false;  
        } else {
        	$("#checkpwd1").html("");
            confirm_pwd_ok = true;  
        }  
	});
	
	
	$('#rule').click(function(){
		if($("#rule").is(":checked")){
		rule_ok=true;
	}else{
		alert("如果不同意Guide Music(ylTeamMusic)协议 将无法注册，所有解释权归ylTeam所有");
		rule_ok=false;
		}
	})
	
	
	var rule_ok=true;
	 if($("#rule").is(":checked")){
	 	rule_ok=true;
	 }else{
	 	rule_ok=false;
	 }
	function submitTest(){
		if(uname_ok&&pwd_ok&&confirm_pwd_ok&&rule_ok){
			return true;
		}else{
			alert("请按要求注册");
			return false;
		}
		return false;
	};
 </script>
  <script src="js/app.js"></script>  
  <script src="js/slimscroll/jquery.slimscroll.min.js"></script>
    <script src="js/app.plugin.js"></script>
  <script type="text/javascript" src="js/jPlayer/jquery.jplayer.min.js"></script>
  <script type="text/javascript" src="js/jPlayer/add-on/jplayer.playlist.min.js"></script>
  <script type="text/javascript" src="js/jPlayer/demo.js"></script>
 
</body>
</html>