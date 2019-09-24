<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en" class="app">
<head>
<meta charset="utf-8" />
<title>Guide Music | Search for your favorite music or singers</title>
<meta name="description"
	content="app, web app, responsive, admin dashboard, admin, flat, flat ui, ui kit, off screen nav" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />
<link rel="stylesheet" href="js/jPlayer/jplayer.flat.css"
	type="text/css" />
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
		<header
			class="bg-white-only header header-md navbar navbar-fixed-top-xs">
			<div class="navbar-header aside bg-info dk">
				<a class="btn btn-link visible-xs"
					data-toggle="class:nav-off-screen,open" data-target="#nav,html">
					<i class="icon-list"></i>
				</a> <a href="index.html" class="navbar-brand text-lt"> <i
					class="icon-earphones"></i> <img src="images/logo.png" alt="."
					class="hide"> <span class="hidden-nav-xs m-l-sm">Musik</span>
				</a> <a class="btn btn-link visible-xs" data-toggle="dropdown"
					data-target=".user"> <i class="icon-settings"></i>
				</a>
			</div>
			<ul class="nav navbar-nav hidden-xs">
				<li><a href="#nav,.navbar-header"
					data-toggle="class:nav-xs,nav-xs" class="text-muted"> <i
						class="fa fa-indent text"></i> <i class="fa fa-dedent text-active"></i>
				</a></li>
			</ul>
			<form
				class="navbar-form navbar-left input-s-lg m-t m-l-n-xs hidden-xs"
				role="search" action="mysearch.html">
				<div class="form-group">
					<div class="input-group">
						<span class="input-group-btn">
							<button type="submit"
								class="btn btn-sm bg-white btn-icon rounded">
								<i class="fa fa-search"></i>
							</button>
						</span> 
						<input type="text" class="form-control input-sm no-border rounded" placeholder="请输入歌名或者歌手" style="width:600px;" name="content">
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
				<aside class="bg-black dk aside hidden-print" id="nav">
					<section class="vbox">
						<section class="w-f-md scrollable">
							<div class="slim-scroll" data-height="auto"
								data-disable-fade-out="true" data-distance="0" data-size="10px"
								data-railOpacity="0.2">



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
										<span class="thumb-sm avatar pull-left m-l-xs"> <img
											src="images/a3.png" class="dker" alt="..."> <i
											class="on b-black"></i>
									</span> <span class="hidden-nav-xs clear"> <span
											class="block m-l"> <strong class="font-bold text-lt">John.Smith</strong>
												<b class="caret"></b>
										</span> <span class="text-muted text-xs block m-l">Art
												Director</span>
									</span>
									</a>
									<ul class="dropdown-menu animated fadeInRight aside text-left">
										
									</ul>
								</div>
							</div>
						</footer>
					</section>
				</aside>


				<section id="content">
					<section class="vbox">
						<section class="w-f-md">
							<section class="hbox stretch bg-black dker">
								<!-- side content -->

								<aside class="col-sm-5 no-padder" id="sidebar">
									<section class="vbox animated fadeInUp">
										<section class="scrollable">
											<ul
												class="list-group list-group-lg no-radius no-border no-bg m-t-n-xxs m-b-none auto">
												
												<c:if test="${not empty data}">
													<c:forEach items="${data}" var="Json" varStatus="st">
														<li class="list-group-item text-center">
															
															<a href="#"  class="jp-play-me m-r-sm pull-left myplay json"
																index="${st.index}" type="1"> <i
																class="icon-control-play text"></i> <i
																class="icon-control-pause text-active"></i>
															</a>
															<div class="clear text-ellipsis">
																<span>${Json.title}</span> <span class="text-muted">
																	-- ${Json.musicTime }</span>
															</div>
														</li>
													</c:forEach>
												</c:if>

											</ul>
										</section>
									</section>
								</aside>
								<!-- / side content -->
								 <section class="col-sm-3 no-padder lt">
                <section class="vbox">
                  <section class="scrollable hover">
                    <div class="m-t-n-xxs">
                      <div class="item pos-rlt">
                        <a href="search.html" class="item-overlay active opacity wrapper-md font-xs">
                          <span class="block h3 font-bold text-info">Find</span>
                          <span class="text-muted">Search the music you like</span>
                          <span class="bottom wrapper-md block">- <i class="icon-arrow-right i-lg pull-right"></i></span>
                        </a>
                        <a href="#">
                          <img class="img-full" src="images/m40.jpg" alt="...">
                        </a>
                      </div>
                      <div class="item pos-rlt">
                        <a href="heatrankings.html" class="item-overlay active opacity wrapper-md font-xs text-right">
                          <span class="block h3 font-bold text-warning text-u-c">Hot</span>
                          <span class="text-muted">Heat rankings</span>
                          <span class="bottom wrapper-md block"><i class="icon-arrow-right i-lg pull-left"></i> -</span>
                        </a>
                        <a href="heatrankings.html">
                          <img class="img-full" src="images/m41.jpg" alt="...">
                        </a>
                      </div>
                      <div class="item pos-rlt">
                        <a href="video.html" class="item-overlay active opacity wrapper-md font-xs">
                          <span class="block h3 font-bold text-success text-u-c">Video</span>
                          <span class="text-muted">Welcome to watch MV</span>
                          <span class="bottom wrapper-md block">- <i class="icon-arrow-right i-lg pull-right"></i></span>
                        </a>
                        <a href="video.html">
                          <img class="img-full" src="images/m42.jpg" alt="...">
                        </a>
                      </div>
                      <div class="item pos-rlt">
                        <a href="events.html" class="item-overlay active opacity wrapper-md font-xs text-right">
                          <span class="block h3 font-bold text-white text-u-c">Event</span>
                          <span class="text-muted">Find, Listen & Share</span>
                          <span class="bottom wrapper-md block"><i class="icon-arrow-right i-lg pull-left"></i> -</span>
                        </a>
                        <a href="events.html">
                          <img class="img-full" src="images/m44.jpg" alt="...">
                        </a>
                      </div>
                      <div class="item pos-rlt">
                        <a href="MusicTop10.html" class="item-overlay active opacity wrapper-md font-xs">
                          <span class="block h3 font-bold text-danger-lter text-u-c">Top10</span>
                          <span class="text-muted">ylTeamMusin hot 10</span>
                          <span class="bottom wrapper-md block">- <i class="icon-arrow-right i-lg pull-right"></i></span>
                        </a>
                        <a href="MusicTop10.html">
                          <img class="img-full" src="images/m45.jpg" alt="...">
                        </a>
                      </div>
                       <div class="item pos-rlt">
                        <a href="newMusic.html" class="item-overlay active opacity wrapper-md font-xs">
                          <span class="block h3 font-bold text-info-lter text-u-c">new Music</span>
                          <span class="text-muted">ylTeamMusin new Muisc</span>
                          <span class="bottom wrapper-md block">- <i class="icon-arrow-right i-lg pull-right"></i></span>
                        </a>
                        <a href="newMusic.html">
                          <img class="img-full" src="images/m45.jpg" alt="...">
                        </a>
                      </div>
                    </div>
                  </section>
                </section>
              </section>
							</section>
						</section>
						<footer class="footer bg-success dker">
							<div id="jp_container_N">
								<div class="jp-type-playlist">
									<div id="jplayer_N" class="jp-jplayer hide"></div>
									<div class="jp-gui">
										<div class="jp-video-play hide">
											<a class="jp-video-play-icon">play</a>
										</div>
										<div class="jp-interface">
											<div class="jp-controls">
												<div>
													<a class="jp-previous"><i
														class="icon-control-rewind i-lg"></i></a>
												</div>
												<div>
													<a class="jp-play"><i class="icon-control-play i-2x"></i></a>
													<a class="jp-pause hid"><i
														class="icon-control-pause i-2x"></i></a>
												</div>
												<div>
													<a class="jp-next"><i class="icon-control-forward i-lg"></i></a>
												</div>
												<div class="hide">
													<a class="jp-stop"><i class="fa fa-stop"></i></a>
												</div>
												<div>
													<a class="" data-toggle="dropdown" data-target="#playlist"><i
														class="icon-list"></i></a>
												</div>
												<div class="jp-progress hidden-xs">
													<div class="jp-seek-bar dk">
														<div class="jp-play-bar bg"></div>
														<div class="jp-title text-lt">
															<ul>
																<li></li>
															</ul>
														</div>
													</div>
												</div>
												<div
													class="hidden-xs hidden-sm jp-current-time text-xs text-muted"></div>
												<div
													class="hidden-xs hidden-sm jp-duration text-xs text-muted"></div>
												<div class="hidden-xs hidden-sm">
													<a class="jp-mute" title="mute"><i
														class="icon-volume-2"></i></a> <a class="jp-unmute hid"
														title="unmute"><i class="icon-volume-off"></i></a>
												</div>
												<div class="hidden-xs hidden-sm jp-volume">
													<div class="jp-volume-bar dk">
														<div class="jp-volume-bar-value lter"></div>
													</div>
												</div>
												<div>
													<a class="jp-shuffle" title="shuffle"><i
														class="icon-shuffle text-muted"></i></a> <a
														class="jp-shuffle-off hid" title="shuffle off"><i
														class="icon-shuffle text-lt"></i></a>
												</div>
												<div>
													<a class="jp-repeat" title="repeat"><i
														class="icon-loop text-muted"></i></a> <a
														class="jp-repeat-off hid" title="repeat off"><i
														class="icon-loop text-lt"></i></a>
												</div>
												<div class="hide">
													<a class="jp-full-screen" title="full screen"><i
														class="fa fa-expand"></i></a> <a class="jp-restore-screen"
														title="restore screen"><i
														class="fa fa-compress text-lt"></i></a>
												</div>
											</div>
										</div>
									</div>
									<div class="jp-playlist dropup" id="playlist">
										<ul class="dropdown-menu aside-xl dker">
											<!-- The method Playlist.displayPlaylist() uses this unordered list -->
											<li class="list-group-item"></li>
										</ul>
									</div>
									<div class="jp-no-solution hide">
										<span>Update Required</span> To play the media you will need
										to either update your browser to a recent version or update
										your <a href="http://get.adobe.com/flashplayer/"
											target="_blank">Flash plugin</a>.
									</div>
								</div>
							</div>
						</footer>
					</section>
					<a href="#" class="hide nav-off-screen-block"
						data-toggle="class:nav-off-screen,open" data-target="#nav,html"></a>
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
	<script src="js/app.plugin.js"></script>
	<script type="text/javascript" src="js/jPlayer/jquery.jplayer.min.js"></script>
	<script type="text/javascript"
		src="js/jPlayer/add-on/jplayer.playlist.min.js"></script>
	<!-- 	<script type="text/javascript" src="js/jPlayer/demo.js"></script> -->
	<script type="text/javascript">
		$(document).ready(function(){

  var myPlaylist = new jPlayerPlaylist({
    jPlayer: "#jplayer_N",
    cssSelectorAncestor: "#jp_container_N"
  },${data}, {
    playlistOptions: {
      enableRemoveControls: true,
      autoPlay: true
    },
    swfPath: "js/jPlayer",
    supplied: "webmv, ogv, m4v, oga, mp3",
    smoothPlayBar: true,
    keyEnabled: true,
    audioFullScreen: false
  });
  
  $(document).on($.jPlayer.event.pause, myPlaylist.cssSelector.jPlayer,  function(){
    $('.musicbar').removeClass('animate');
    $('.jp-play-me').removeClass('active');
    $('.jp-play-me').parent('li').removeClass('active');
  });

  $(document).on($.jPlayer.event.play, myPlaylist.cssSelector.jPlayer,  function(){
    $('.musicbar').addClass('animate');
  });

  $(document).on('click', '.jp-play-me', function(e){
    e && e.preventDefault();
    var $this = $(e.target);
    if (!$this.is('a')) $this = $this.closest('a');

    $('.jp-play-me').not($this).removeClass('active');
    $('.jp-play-me').parent('li').not($this.parent('li')).removeClass('active');

    $this.toggleClass('active');
    $this.parent('li').toggleClass('active');
    if( !$this.hasClass('active') ){
      myPlaylist.pause();
    }else{
      $('.json').click(function(){
      var i=$(this).attr("index");
       myPlaylist.play(i);
      });
     
    }
    
  });



  // video

  $("#jplayer_1").jPlayer({
    ready: function () {
      $(this).jPlayer("setMedia", {
        title: "Big Buck Bunny",
        m4v: "http://flatfull.com/themes/assets/video/big_buck_bunny_trailer.m4v",
        ogv: "http://flatfull.com/themes/assets/video/big_buck_bunny_trailer.ogv",
        webmv: "http://flatfull.com/themes/assets/video/big_buck_bunny_trailer.webm",
        poster: "images/m41.jpg"
      });
    },
    swfPath: "js",
    supplied: "webmv, ogv, m4v",
    size: {
      width: "100%",
      height: "auto",
      cssClass: "jp-video-360p"
    },
    globalVolume: true,
    smoothPlayBar: true,
    keyEnabled: true
  });

});
	</script>
</body>
</html>
