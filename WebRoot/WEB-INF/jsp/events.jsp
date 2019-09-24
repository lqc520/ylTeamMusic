<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<body class="">
  <section class="vbox">
    <header class="bg-white-only header header-md navbar navbar-fixed-top-xs">
      <div class="navbar-header aside bg-primary nav-xs">
        <a class="btn btn-link visible-xs" data-toggle="class:nav-off-screen,open" data-target="#nav,html">
          <i class="icon-list"></i>
        </a>
        <a href="index.html" class="navbar-brand text-lt">
          <i class="icon-earphones"></i>
          <img src="images/logo.png" alt="." class="hide">
          <span class="hidden-nav-xs m-l-sm">Musik</span>
        </a>
        <a class="btn btn-link visible-xs" data-toggle="dropdown" data-target=".user">
          <i class="icon-settings"></i>
        </a>
      </div>      <ul class="nav navbar-nav hidden-xs">
        <li>
          <a href="#nav,.navbar-header" data-toggle="class:nav-xs,nav-xs" class="text-muted">
            <i class="fa fa-indent text"></i>
            <i class="fa fa-dedent text-active"></i>
          </a>
        </li>
      </ul>
      <form class="navbar-form navbar-left input-s-lg m-t m-l-n-xs hidden-xs" role="search">
        <div class="form-group">
          <div class="input-group">
            <span class="input-group-btn">
              <button type="submit" class="btn btn-sm bg-white btn-icon rounded"><i class="fa fa-search"></i></button>
            </span>
            <input type="text" class="form-control input-sm no-border rounded" placeholder="Search songs, albums...">
          </div>
        </div>
      </form>
     	<div class="navbar-right ">
				<c:if test="${not empty user}">
					<ul class="nav navbar-nav m-n hidden-xs nav-user user">
						<li class="dropdown">
							<a href="#" class="dropdown-toggle bg clear" data-toggle="dropdown"> 
								<span class="thumb-sm avatar pull-right m-t-n-sm m-b-n-sm m-l-sm"></span>
								<span class="glyphicon glyphicon-user"></span>&emsp;${user.username} <b class="caret"></b>
							</a>

							<ul class="dropdown-menu animated fadeInRight">
								<li><a href="Logout.html"><span class="glyphicon glyphicon-log-out"></span>&nbsp;退出登录</a></li>
							</ul>
					    </li>
					</ul>
				</c:if>
				<c:if test="${empty user}">
					<p></p>
					<a href="login.html"><span class="glyphicon glyphicon-log-in"></span>&nbsp;登录</a>
					<span>&emsp;</span>
					<a href="signup.html" ><span class="glyphicon glyphicon-new-window"></span>&nbsp;免费注册</a>
				</c:if>
			</div>
    </header>
    <section>
      <section class="hbox stretch">
        <!-- .aside -->
        <aside class="bg-black dk nav-xs aside hidden-print" id="nav">          
          <section class="vbox">
            <section class="w-f-md scrollable">
              <div class="slim-scroll" data-height="auto" data-disable-fade-out="true" data-distance="0" data-size="10px" data-railOpacity="0.2">
                


                <!-- nav -->                 
                <nav class="nav-primary hidden-xs">
                 <ul class="nav bg clearfix">
                    <li class="hidden-nav-xs padder m-t m-b-sm text-xs text-muted">
                      Discover
                    </li>
                    <li>
                      <a href="index.html">
                        <i class="icon-disc icon text-success"></i>
                        <span class="font-bold">推荐</span>
                      </a>
                    </li>
                    <li>
                      <a href="genres.html">
                        <i class="icon-music-tone-alt icon text-info"></i>
                        <span class="font-bold">流派</span>
                      </a>
                    </li>
                    <li>
                      <a href="events.html">
                        <i class="icon-drawer icon text-primary-lter"></i>
                        <b class="badge bg-primary pull-right">6</b>
                        <span class="font-bold">活动</span>
                      </a>
                    </li>
                    <li>
                      <a href="listen.html">
                        <i class="icon-list icon  text-info-dker"></i>
                        <span class="font-bold">听歌</span>
                      </a>
                    </li>
                    <li>
                      <a href="video.html" data-target="#content" data-el="#bjax-el" data-replace="true">
                        <i class="icon-social-youtube icon  text-primary"></i>
                        <span class="font-bold">MV</span>
                      </a>
                    </li>
                    <li class="m-b hidden-nav-xs"></li>
                  </ul>
                  
                <!-- / nav -->
              </div>
            </section>
            
            <footer class="footer hidden-xs no-padder text-center-nav-xs">
              <div class="bg hidden-xs ">
                  <div class="dropdown dropup wrapper-sm clearfix">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                      <span class="thumb-sm avatar pull-left m-l-xs">                        
                        <img src="images/a3.png" class="dker" alt="...">
                        <i class="on b-black"></i>
                      </span>
                      <span class="hidden-nav-xs clear">
                        <span class="block m-l">
                          <strong class="font-bold text-lt">John.Smith</strong> 
                          <b class="caret"></b>
                        </span>
                        <span class="text-muted text-xs block m-l">Art Director</span>
                      </span>
                    </a>
                    <ul class="dropdown-menu animated fadeInRight aside text-left">                      
                      <li>
                        <span class="arrow bottom hidden-nav-xs"></span>
                        <a href="#">Settings</a>
                      </li>
                      <li>
                        <a href="profile.html">Profile</a>
                      </li>
                      <li>
                        <a href="#">
                          <span class="badge bg-danger pull-right">3</span>
                          Notifications
                        </a>
                      </li>
                      <li>
                        <a href="docs.html">Help</a>
                      </li>
                      <li class="divider"></li>
                      <li>
                        <a href="modal.lockme.html" data-toggle="ajaxModal" >Logout</a>
                      </li>
                    </ul>
                  </div>
                </div>            </footer>
          </section>
        </aside>
        <!-- /.aside -->
        <section id="content">
          <section class="vbox">
          <section class="scrollable">
            <div id="masonry" class="pos-rlt animated fadeInUpBig">
            
            
              <div class="item">
                <div class="carousel slide auto" data-interval="3000">
                  <div class="carousel-inner">
                    <div class="item active">
                      <div class="item-overlay opacity animated fadeInDown wrapper bg-info">
                        <p class="text-white">N.01</p>
                        <div class="center text-center m-t-n">
                          <a href="video-detail.html?videoid=${list[0].videoid }"><i class="icon-control-play i-2x"></i></a>
                        </div>
                      </div>
                      <div class="bottom wrapper bg-info gd">
                        <div class="m-t m-b"><a href="video-detail.html?videoid=${list[0].videoid }" class="b-b b-danger h2 text-u-c text-lt font-bold">${list[0].videoname }</a></div>
                        <p class="hidden-xs">${list[0].videoauthor }</p>
                      </div>
                      <a href="video-detail.html?videoid=${list[0].videoid }"><img src="${list[0].videophoto }"  style="height: 610px" alt="" class="img-full"></a>
                    </div>
                    <div class="item">
                      <div class="item-overlay opacity animated fadeInDown wrapper bg-info">
                        <p class="text-white">N.02</p>
                        <div class="center text-center m-t-n">
                          <a href="video-detail.html?videoid=${list[1].videoid }"><i class="icon-control-play i-2x"></i></a>
                        </div>
                      </div>
                      <div class="bottom wrapper bg-info gd">
                        <div class="m-t m-b"><a href="video-detail.html?videoid=${list[1].videoid }" class="b-b b-warning h2 text-u-c text-lt font-bold">${list[0].videoname }</a></div>
                        <p class="hidden-xs">${list[1].videoauthor }</p>
                      </div>
                      <a href="video-detail.html?videoid=${list[1].videoid }"><img src="${list[1].videophoto }"  style="height: 610px" alt="" class="img-full"></a>
                    </div>
                  </div>
                </div>
              </div>
              
           
                 <c:forEach begin="3" end="${list.size() }" step="1" var="num">
                
                 <c:if test="${num ne 9 and num ne 14 and num ne 23 and num ne 3 and num ne 16}">
                 
                 <div class="item">
                <div class="item-overlay gd animated fadeInUp wrapper bg-info">
                  <div class="center text-center m-t-n">
                    <a href="video-detail.html?videoid=${list[num].videoid }"><i class="icon-control-play i-2x"></i></a>
                  </div>
                </div>
                <div class="bottom gd bg-info wrapper">
                  <div class="m-t m-b"><a href="video-detail.html?videoid=${list[num].videoid }" class="b-b b-info h4 text-u-c text-lt font-bold">${list[num].videoname }</a></div>
                  <p class="hidden-xs"> ${list[num].videoauthor }</p>
                </div>
                <a href="video-detail.html?videoid=${list[num].videoid }"><img src="${list[num].videophoto }" style="height: 305px;"  alt="" class="img-full"></a>
              </div>
              
                 </c:if>
                 
                <c:if test="${num eq 3  or num eq 16}">
               <div class="item">
                <div class="item-overlay gd animated fadeInUp wrapper bg-info">
                 <!--  <p class="text-white"> 3  Watch later</p> -->
                  <div class="center text-center m-t-n">
                    <a href="video-detail.html?videoid=${list[num].videoid }"><i class="icon-control-play i-2x"></i></a>
                  </div>
                </div>
                <div class="bottom gd bg-info wrapper">
                  <div class="m-t m-b"><a href="video-detail.html?videoid=${list[num].videoid }" class="b-b b-info h4 text-u-c text-lt font-bold">${list[num].videoname }</a></div>
                  <p class="hidden-xs"> ${list[num].videoauthor }</p>
                </div>
                <a href="video-detail.html?videoid=${list[num].videoid }"><img src="${list[num].videophoto }" style="height: 610px;"  alt="" class="img-full"></a>
              </div>
              </c:if>
                 
                 
                 
                 
                 
                  <c:if test="${num eq 9  or num eq 14}">
 
  				 <div class="item">
  				 
  				 <div class="item-overlay gd animated fadeInUp wrapper bg-info">
                  <div class="center text-center m-t-n">
                    <a href="video-detail.html?videoid=${list[num].videoid }"><i class="icon-control-play i-2x"></i></a>
                  </div>
                </div>
                
                <div class="bottom gd bg-info wrapper">
                  <div class="m-t m-b"><a href="video-detail.html?videoid=${list[num].videoid }" class="b-b b-warning h4 text-u-c text-lt font-bold">${list[num].videoname }</a></div>
                  <p class="hidden-xs">${list[num].videoauthor }</p>
                </div>
                <a href="video-detail.html?videoid=${list[num].videoid }"><img src="${list[num].videophoto }" style="height: 610px" alt="" class="img-full"></a>
              </div>
	              
                 </c:if> 
                 
                 <c:if test="${ num eq 23}">
                 
                   <div class="item">
                   
                   <div class="item-overlay gd animated fadeInUp wrapper bg-info">
                  <div class="center text-center m-t-n">
                    <a href="video-detail.html?videoid=${list[num].videoid }"><i class="icon-control-play i-2x"></i></a>
                  </div>
                </div>
                
	                <div class="bottom gd bg-info wrapper">
	                  <div class="m-t m-b"><a href="video-detail.html?videoid=${list[num].videoid }" class="b-b b-warning h4 text-u-c text-lt font-bold">${list[num].videoname }</a></div>
	                  <p class="hidden-xs">${list[num].videoauthor }</p>
	                </div>
	                <a href="video-detail.html?videoid=${list[num].videoid }"><img src="${list[num].videophoto }"  style="height: 300px" alt="" class="img-full"></a>
	              </div> 
                 </c:if> 
                 
          
                 
                  </c:forEach> 
             
            </div>
          </section>
        </section>
          <a href="#" class="hide nav-off-screen-block" data-toggle="class:nav-off-screen,open" data-target="#nav,html"></a>
        </section>
      </section>
    </section>    
  </section>
  <script src="js/jquery.min.js"></script>
  <!-- Bootstrap -->
  <script src="js/bootstrap.js"></script>
  <!-- App -->
  <script src="js/app.js"></script>  
  <script src="js/slimscroll/jquery.slimscroll.min.js"></script>
    <script src="js/masonry/tiles.min.js"></script>
  <script src="js/masonry/demo.js"></script>
  <script src="js/app.plugin.js"></script>
  <script type="text/javascript" src="js/jPlayer/jquery.jplayer.min.js"></script>
  <script type="text/javascript" src="js/jPlayer/add-on/jplayer.playlist.min.js"></script>
  <script type="text/javascript" src="js/jPlayer/demo.js"></script>

</body>
</html>