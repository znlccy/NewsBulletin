<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>

<head>
<title>上海理工大学电子商务发展研究院-首页</title>
<link rel="Shortcut Icon" href="images/news.png" />
<meta name="keywords" content="" />
<meta name="description" content="" />

<meta charset="utf-8" />
<meta name="viewport" content="width=device-width" />

<!--[if lt IE 9]>
<script type="text/javascript" src="layout/plugins/html5.js"></script>
<![endif]-->

<link rel="stylesheet" href="layout/style.css" type="text/css" />
<!-- <link href="http://fonts.googleapis.com/css?family=PT+Sans:400,700" rel="stylesheet" type="text/css" />
<link href="http://fonts.googleapis.com/css?family=PT+Sans+Narrow:400,700" rel="stylesheet" type="text/css" />
<link href="http://fonts.googleapis.com/css?family=Droid+Serif:400,400italic" rel="stylesheet" type="text/css" /> -->

<script type="text/javascript" src="layout/js/jquery.js"></script>

<!-- PrettyPhoto start -->
<link rel="stylesheet" href="layout/plugins/prettyphoto/css/prettyPhoto.css" type="text/css" />
<script type="text/javascript" src="layout/plugins/prettyphoto/jquery.prettyPhoto.js"></script>
<!-- PrettyPhoto end -->

<!-- jQuery tools start -->
<script type="text/javascript" src="layout/plugins/tools/jquery.tools.min.js"></script>
<!-- jQuery tools end -->

<!-- Calendar start -->
<link rel="stylesheet" href="layout/plugins/calendar/calendar.css" type="text/css" />
<script type="text/javascript" src="layout/plugins/calendar/calendar.js"></script>
<!-- Calendar end -->

<!-- ScrollTo start -->
<script type="text/javascript" src="layout/plugins/scrollto/jquery.scroll.to.min.js"></script>
<!-- ScrollTo end -->

<!-- MediaElements start -->
<link rel="stylesheet" href="layout/plugins/video-audio/mediaelementplayer.css" />
<script src="layout/plugins/video-audio/mediaelement-and-player.js"></script>
<!-- MediaElements end -->

<!-- FlexSlider start -->
<link rel="stylesheet" href="layout/plugins/flexslider/flexslider.css" type="text/css" />
<script type="text/javascript" src="layout/plugins/flexslider/jquery.flexslider-min.js"></script>
<!-- FlexSlider end -->

<!-- iButtons start -->
<link rel="stylesheet" href="layout/plugins/ibuttons/css/jquery.ibutton.css" type="text/css" />
<script type="text/javascript" src="layout/plugins/ibuttons/lib/jquery.ibutton.min.js"></script>
<!-- iButtons end -->

<!-- jQuery Form Plugin start -->
<script type="text/javascript" src="layout/plugins/ajaxform/jquery.form.js"></script>
<!-- jQuery Form Plugin end -->

<script type="text/javascript" src="layout/js/main.js"></script>

<script type="text/javascript">
	jQuery(function () {
	});
	
	function shareSina() {
		//分享到新浪微博
		var sharesinastring = 'http://service.weibo.com/share/share.php?title=' + $("#title").val() + '&url=' + $("#url").val();
		window.location.href = sharesinastring;
		}
	
	function shareQQzone(){
		var title = $.trim($("#title").val());
		var p = {
		url:location.href,
		showcount:'0',/*是否显示分享总数,显示：'1'，不显示：'0' */
		desc:'',/*默认分享理由(可选)*/
		summary:'',/*分享摘要(可选)*/
		title:'',/*分享标题(可选)*/
		site:'满艺网',/*分享来源 如：腾讯网(可选)*/
		pics:'', /*分享图片的路径(可选)*/
		style:'203',
		width:98,
		height:22
		};
		//分享到QQ空间
		var sharesinastring = 'http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?title=' + document.getElementById("newsTitle") +'&summary='+document.getElementById("newsTitle")+ '&url=' + document.getElementById("newsTitle") + '&site="满艺网"';
		window.location.href = sharesinastring;
	}
	
	function shareQQ() {
		/* var title = $.trim($("#newsTitle").val()); */
		var title = document.getElementById("newsTitle");
		/* alert("路径:"+title); */
		var p = {
		url: location.href, /*获取URL，可加上来自分享到QQ标识，方便统计*/
		desc: '', /*分享理由(风格应模拟用户对话),支持多分享语随机展现（使用|分隔）*/
		title: '', /*分享标题(可选)*/
		summary: '', /*分享摘要(可选)*/
		pics: '', /*分享图片(可选)*/
		flash: '', /*视频地址(可选)*/
		site: 'QQ', /*分享来源(可选) 如：QQ分享*/
		style: '201',
		width: 32,
		height: 32
		};
		
		//分享到QQ
		var sharesinastring = 'http://connect.qq.com/widget/shareqq/index.html?title=' + document.getElementById("newsTitle") + '&summary=' + document.getElementById("newsTitle") + '&url=' + document.getElementById("newsTitle") + '&site="腾讯QQ"';
		window.location.href = sharesinastring;
	}
	
	function shareQQweibo() {
		var p = {
		url: location.href, /*获取URL，可加上来自分享到QQ标识，方便统计*/
		title: '分享新闻', /*分享标题(可选)*/
		pic: '', /*分享图片(可选)*/
		site: 'QQ微博' /*分享来源(可选) 如：QQ分享*/
		};
		//分享到腾讯微博
		var sharesinastring = 'http://v.t.qq.com/share/share.php?title=' + $("#title").val() + '&url=' + $("#url").val() + '&site="QQ微博"';
		window.location.href = sharesinastring;
	}
		
	function login() {
		var username = $.trim($("#username").val());
		var password = $.trim($("#password").val());
		/* var oError = document.getElementById("error_box");
		
		var isNotError = true;
		if(username == "") {
			oError.innerHTML = "用户名为空!";
			isNotError = false;
			return;
		}
		if(username.value.length > 20 || username.value.length < 6){
			oError.innerHTML = "用户名长度必须在6~20位之间";
			isNotError = false;
			return;
			
		}else if(username.value.charCodeAt(0) >= 48 && username.value.charCodeAt(0) <= 57){
			oError.innerHTML = "用户名开头不能为数字";
			isNotError = false;
			return;
		}else{
			for(var i=0; i<username.value.length; i++){
				if((username.value.charCodeAt(i) > 122 || username.value.charCodeAt(i) < 97) && (username.value.charCodeAt(i) > 57 || oUname.value.charCodeAt(i) < 48)){
					oError.innerHTML = "用户名只能包含小写字母和数字";
					isNotError = false;
					return;
				}
			}
		}
		if(password.value.length > 20 || password.value.length < 6){
			oError.innerHTML = "密码长度必须在6~20位之间";
			isNotError = false;
			return;
		}
		oError.innerHTML = "登录成功"; */
		
		if(username == "")
		{
			alert("请输入用户名!");
			return false;
		}
		else if(password == "")
		{
			alert("请输入密码!");
			return false;
		}
		
		var data = {
			username:username,
			password:password
		};
		
		$.ajax({
			type:"POST",
			url:"http://localhost:8080/NewsBulletin/user/login",
			data:data,
			dataType:'json',
			success:function(map){
				var status = JSON.stringify(map.status);
				var message = JSON.stringify(map.message);
				var status_suceess = JSON.stringify("200");
				var status_error = JSON.stringify("404");
				
				if(status==status_suceess){
					window.location.href="http://180.97.83.230:8080/NewsBulletin/admin/index.jsp";
				} else {
					window.location.href="http://180.97.83.230:8080/NewsBulletin/error.jsp";
				}
			},
			error:function(){
				alert("server error");  
			}
		});
	}
	
	function search(){
		/* var contents = $trim($("#content").val()); */
		var search_content = document.getElementById("search_content");
		
		var data = {
			search_content:search_content				
		};
		
		$.ajax({
			type:"GET",
			url:"http://localhost:8080/NewsBulletin/user/search",
			data:data,
			dataType:'json',
			success:function(map){
				var status = JSON.stringify(map.status);
				var message = JSON.stringify(map.message);
				var status_suceess = JSON.stringify("200");
				if(status==status_suceess) {
					window.location.href="http://localhost:8080//NewsBulletin/admin/search_content_display.jsp"
				}
			}
		});
	}
	
	function getPostNews(){
		var newsContent = document.getElementById("newsdata");
		
		var data = {
			newsContent:newsContent
		}
		$.ajax({
			type:"GET",
			url:"http://localhost:8080//NewsBulletin/news/getpostnews",
			data:data,
			dataType:'json',
			success:function(map){
				var status = JSON.stringify(map.status);
				var status_null = JSON.stringify("403");
				var status_success = JSON.stringify("200");
				var status_error = JSON.stringify("404");
				if(status==status_null)
				{
					document.getElementById("newsone").innerHTML=JSON.stringify(map.newsone);
					document.getElementById("newstwo").innerHTML=JSON.stringify(map.newstwo);
					document.getElementById("newsthree").innerHTML=JSON.stringify(map.newsthree);
				} else if(status==status_success){
					if(JSON.stringify(map.newsone)=="")
					{
						document.getElementById("newsone").innerHTML="没有推送新闻!";	
					} else if(JSON.stringify(map.newstwo)=="")
					{
						document.getElementById("newstwo").innerHTML="没有推送新闻!";
					} else if(JSON.stringify(map.newsthree)=="")
					{
						document.getElementById("newsthree").innerHTML="没有推送新闻!";
					} else
					{
						document.getElementById("newsone").innerHTML=JSON.stringify(map.newsone).replace(/\"/g, "");
						document.getElementById("newstwo").innerHTML=JSON.stringify(map.newstwo).replace(/\"/g, "");
						document.getElementById("newsthree").innerHTML=JSON.stringify(map.newsthree).replace(/\"/g, "");
						document.getElementById("newsfour").innerHTML=JSON.stringify(map.newsfour).replace(/\"/g, "");
						document.getElementById("newsfive").innerHTML=JSON.stringify(map.newsfive).replace(/\"/g, "");
						document.getElementById("newssix").innerHTML=JSON.stringify(map.newssix).replace(/\"/g, "");
						document.getElementById("newsseven").innerHTML=JSON.stringify(map.newsseven).replace(/\"/g, "");
						document.getElementById("newseight").innerHTML=JSON.stringify(map.newseight).replace(/\"/g, "");
						/* document.getElementById("newseight").innerHTML=JSON.stringify("中国中央电视台").replace(/\"/g, ""); */
						document.getElementById("newsnine").innerHTML=JSON.stringify(map.newsnine).replace(/\"/g, "");
						document.getElementById("newste").innerHTML=JSON.stringify(map.newsone).replace(/\"/g, "");
						document.getElementById("newsel").innerHTML=JSON.stringify(map.newstwo).replace(/\"/g, "");
						document.getElementById("newstw").innerHTML=JSON.stringify(map.newsthree).replace(/\"/g, "");
						document.getElementById("newsth").innerHTML=JSON.stringify(map.newsfour).replace(/\"/g, "");
						document.getElementById("newsonedate").innerHTML=JSON.stringify(map.newsonedate).replace(/\"/g, "");
						document.getElementById("newstwodate").innerHTML=JSON.stringify(map.newstwodate).replace(/\"/g, "");
						document.getElementById("newsthreedate").innerHTML=JSON.stringify(map.newsthreedate).replace(/\"/g, "");
						document.getElementById("newsfourdate").innerHTML=JSON.stringify(map.newsfourdate).replace(/\"/g, "");
						document.getElementById("newsfivedate").innerHTML=JSON.stringify(map.newsfivedate).replace(/\"/g, "");
						document.getElementById("newssixdate").innerHTML=JSON.stringify(map.newssixdate).replace(/\"/g, "");
						document.getElementById("newssevendate").innerHTML=JSON.stringify(map.newssevendate).replace(/\"/g, "");
						document.getElementById("newseightdate").innerHTML=JSON.stringify(map.newseightdate).replace(/\"/g, "");
						document.getElementById("newsninedate").innerHTML=JSON.stringify(map.newsninedate).replace(/\"/g, "");
						document.getElementById("newstedate").innerHTML=JSON.stringify(map.newsonedate).replace(/\"/g, "");
						document.getElementById("newseldate").innerHTML=JSON.stringify(map.newstwodate).replace(/\"/g, "");
						document.getElementById("newstwdate").innerHTML=JSON.stringify(map.newsthreedate).replace(/\"/g, "");
						document.getElementById("newsthdate").innerHTML=JSON.stringify(map.newsfourdate).replace(/\"/g, "");
					}
				}
			}
		});
	}
	
</script>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

</head>

<body>
	<div class="wrapper sticky_footer">
    	<!-- HEADER BEGIN -->
        <header>
            <div id="header">
            	<section class="top">
                	<div class="inner">
                    	<div class="fl">
                        	<div class="block_top_menu">
                            	<ul>
                                	<li class="current"><a href="index.jsp">首页</a></li>
                                    <li><a href="site_navigation.jsp">网站地图</a></li>
                                    <li><a href="confidentiality_agreement.jsp">用户注册协议</a></li>
                                    <li><a href="contact_us.jsp">联系我们</a></li>
                                </ul>
                            </div>
                            
                        </div>
                        
                        <div class="fr">
                        	<div class="block_top_menu">
                            	<ul>
                                	<li class="current"><a href="#login" class="open_popup">登录</a></li>
                                    <!-- <li><a href="registration.jsp">注册</a></li> -->
                                </ul>
                            </div>
                            
                            <!-- <div class="block_social_top">
                            	<ul>
                                	<li><a href="#" class="wx" onclick="shareQQzone()">QQ空间</a></li>
                                    <li><a href="#" class="xl" onclick="shareSina()">新浪</a></li>
                                    <li><a href="#" class="qq" onclick="shareQQ()">QQ</a></li>
                                </ul>
                            </div> -->
                        </div>
                        
                    	<div class="clearboth"></div>
                    </div>
                </section>
                
            	<section class="bottom">
                	<div class="inner">
                    	<div id="logo_top"><a href="index.jsp"><img src="images/logo_top_usst.png" alt="BusinessNews" title="BusinessNews" /></a></div>
                        
                        <div class="block_today_date">
                        	<div class="num"><p id="num_top" /></div>
                            <div class="other">
                            	<p class="month_year"><span id="month_top"></span>, <span id="year_top"></span></p>
                                <p id="day_top" class="day" />
                            </div>
                        </div>
                        
                        <div class="fr">
                        	<div class="block_languages">
                            	<div class="text"><p>语言:</p></div>
                                <ul>
                                	<!-- <li class="current"><a href="#" class="eng">English</a></li> -->
                                    <li class="current"><a href="#" class="chinese">中文</a></li>
                                    <!-- <li><a href="#" class="ger">German</a></li> -->
                                </ul>
                                
                                <div class="clearboth"></div>
                            </div>
                            
                            <div class="block_search_top">
                            	<form action="http://localhost:8080/NewsBulletin/user/search"  method="GET" name="searchForm"/>
                                	<div class="field"><input type="text" id="search_content" name="newsContent" class="w_def_text" title="输入您搜索的关键词..." /></div>
                                    <input type="submit" class="button" id="search" value="搜索" onclick="search()" />
                                    
                                    <div class="clearboth"></div>
                                </form>
                            </div>
                        </div>
                        
                        <div class="clearboth"></div>
                    </div>
                </section>
                
                <section class="section_main_menu">
                	<div class="inner">
                    	<nav class="main_menu">
                        	<ul>
								<li class="current_page_item"><a href="index.jsp">首页</a>
                                	
                                    <!-- <ul>
                                    	<li><a href="index.jsp">首页样式一</a></li>
                                        <li><a href="home_style_2.jsp">首页样式二</a></li>
                                    </ul> -->
                                </li>
							  	<li class="big_dropdown" data-content="business">
							  		<a href="teachers_team.jsp">师资团队</a>
							  	</li>
							  	<li class="big_dropdown" data-content="technology"><a href="development_of_ecommerce_database.jsp">电子商务发展数据库</a></li>
							  	<li class="big_dropdown" data-content="technology"><a href="news_bulletin.jsp">新闻公告</a></li>
							  	<li class="big_dropdown" data-content="education">
							  		<a href="scientific_research_achievements.jsp">科研成果</a>
							  		<ul>
							  			<li><a href="public_papers.jsp">公开论文</a></li>
							  			<li><a href="undertake_aspect_problem.jsp">承接纵横课题</a></li>
							  			<li><a href="reward.jsp">获奖</a></li>
							  			<!-- <li><a href="public_papers.jsp">电子商务发展数据库</a></li> -->
							  		</ul>
							  		
							  	</li>
							  	<li><a href="characteristic_research.jsp">特色研究</a>
                                    <ul>
                                    	<li><a href="electric_daqo_data_processing.jsp">电商大数据处理</a></li>
                                        <li><a href="electricity_law.jsp">电商法律</a></li>
                                        <!-- <li><a href="thesis_upload_download.jsp">电商法律</a></li> -->
                                    </ul>
                                </li>
							  	<li><a href="public_events.jsp">公开活动</a>
                                	
                                    <ul>
                                     	<li><a href="lecture_report.jsp">讲座报告</a></li>
                                        <li><a href="college_students_competition_of_electricity.jsp">大学生电商竞赛</a></li>
                                    </ul>
                                </li>
							  	<!-- <li><a href="bigdata_ecommerce.jsp">联系我们</a>
                                	
                                    <ul>
                                    	<li><a href="bigdata_ecommerce.jsp">大数据电子商务样式一</a></li>
                                        <li><a href="blog_style_2.jsp">大数据电子商务样式二</a></li>
                                        <li><a href="blog_post.jsp">大数据电子商务介绍</a></li>
                                        <li><a href="blog_post_w_slider.jsp">大数据电子商务详情</a></li>
                                    </ul>
                                </li> -->
		  		  		  		<li>
		  		  		  			<a href="contact_us.jsp" >联系我们</a>
								</li>
								<li>
		  		  		  			<a href="about_us.jsp" >关于我们</a>
								</li>
						  </ul>
						</nav>
                    </div>
                </section>
                
                <section class="section_secondary_menu">
                	<div class="inner">
                    	<nav class="secondary_menu">
                        	<!-- <ul>
                            	<li><a href="school_news.jsp">学院要闻</a></li>
                                <li><a href="college_express.jsp">学院快讯</a></li>
                                <li><a href="media_news.jsp">媒体聚焦</a></li>
                                <li><a href="college_notic.jsp">学院公告</a></li>
                                <li><a href="science_information.jsp">科研信息</a></li>
                                <li><a href="bidding_annoucement.jsp">招标公告</a></li>
                                <li><a href="lecture_report.jsp">讲座报告</a></li>
                                <li><a href="about_us.jsp">关于我们</a></li>
                          	</ul> -->
                        </nav>
                        
                        <div class="block_clock">
                        	<p>当前时间: <span id="time"></span></p>
                        </div>
                    </div>
                </section>
            </div>
        </header>
    	<!-- HEADER END -->
    	
        <!-- CONTENT BEGIN -->
        <div id="content" class="right_sidebar">
        	<div class="inner">
            	<div class="general_content">
                	<div class="main_content">
                    	<div class="block_special_topic">
                        	<div class="type"><p >专题</p></div>
                            <div class="title"><p><a href="#" id="newsTitle">上海理工大学电子商务发展研究院</a></p></div>
                        </div>
                        <div class="separator" style="height:17px;"></div>
                        
                        <div class="block_home_slider">
                        	<div id="home_slider" class="flexslider">
                            	<ul class="slides">
                                	<li>
                                    	<div class="slide">
                                            <img src="images/pic_home_slider_1.jpg" alt="" />
                                            <div class="caption">
                                                <p class="title">电子商务发展数据库推荐</p>
                                                <p>电子商务发展数据库详情</p>
                                            </div>
                                        </div>
                                    </li>
                                    
                                    <li>
                                    	<div class="slide">
                                            <img src="images/pic_home_slider_2.jpg" alt="" />
                                            <div class="caption">
                                                <p class="title">新闻公告</p>
                                                <p>相关新闻推荐</p>
                                            </div>
                                        </div>
                                    </li>
                                    
                                    <li>
                                    	<div class="slide">
                                            <img src="images/pic_home_slider_3.jpg" alt="" />
                                            <div class="caption">
                                                <p class="title">科研成果</p>
                                                <p>相关科研成果介绍</p>
                                            </div>
                                        </div>
                                    </li>
                                    
                                    <li>
                                    	<div class="slide">
                                            <img src="images/pic_home_slider_4.jpg" alt="" />
                                            <div class="caption">
                                                <p class="title">特色研究</p>
                                                <p>相关特色研究成果介绍</p>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            
                            <script type="text/javascript">
								$(function () {
									$('#home_slider').flexslider({
										animation : 'slide',
										controlNav : true,
										directionNav : true,
										animationLoop : true,
										slideshow : false,
										useCSS : false
									});
									
								});
							</script>
                        </div>
                        
                        <div class="line_2" style="margin:34px 0px 28px;"></div>
                        
                        <div class="block_home_col_1">
                        	<div class="block_home_post">
								<div class="pic">
									<a href="#" class="w_hover">
										<img src="images/pic_home_news_post.png"  onload="getPostNews()" alt="" />
										<span></span>
									</a>
								</div>
                                        
								<div class="text">
									<p class="title"><a href="#" id="newsfour">没有新闻</a></p>
									<div class="date"><p id="newsfourdate">没有创建时间</p></div>
                                    <div class="icons">
                                    	<ul>
                                        	<li><a href="#" class="views">56</a></li>
                                        </ul>
                                    </div>
								</div>
							</div>
                            <div class="line_3" style="margin:14px 0px 17px;"></div>
                            
                            <div class="block_home_post">
								<div class="pic">
									<a href="#" class="w_hover">
										<img src="images/pic_home_news_post.png" alt="" />
										<span></span>
									</a>
								</div>
                                        
								<div class="text">
									<p class="title"><a href="#" id="newsfive">没有新闻</a></p>
									<div class="date"><p id="newsfivedate">没哟创建时间</p></div>
                                    <div class="icons">
                                    	<ul>
                                        	<li><a href="#" class="views">74</a></li>
                                        </ul>
                                    </div>
								</div>
							</div>
                            <div class="line_3" style="margin:14px 0px 17px;"></div>
                            
                            <div class="block_home_post">
								<div class="pic">
									<a href="#" class="w_hover">
										<img src="images/pic_home_news_post.png" alt="" />
										<span></span>
									</a>
								</div>
                                        
								<div class="text">
									<p class="title"><a href="#" id="newssix">没有新闻</a></p>
									<div class="date"><p id="newssixdate">没有创建时间</p></div>
                                    <div class="icons">
                                    	<ul>
                                        	<li><a href="#" class="views">88</a></li>
                                        </ul>
                                    </div>
								</div>
							</div>
                            
                        </div>
                        
                        <div class="block_home_col_2">
                        	<div class="line_3 first" style="margin:14px 0px 17px;"></div>
                            <div class="block_home_post">
								<div class="pic">
									<a href="#" class="w_hover">
										<img src="images/pic_home_news_post_2.png" alt="" />
										<span></span>
									</a>
								</div>
                                        
								<div class="text">
									<p class="title"><a href="#" id="newsseven">没有新闻</a></p>
									<div class="date"><p id="newssevendate">没有创建时间</p></div>
                                    <div class="icons">
                                    	<ul>
                                        	<li><a href="#" class="views">56</a></li>
                                        </ul>
                                    </div>
								</div>
							</div>
                            <div class="line_3" style="margin:14px 0px 17px;"></div>
                            
                            <div class="block_home_post">
								<div class="pic">
									<a href="#" class="w_hover">
										<img src="images/pic_home_news_post_2.png" alt="" />
										<span></span>
									</a>
								</div>
                                        
								<div class="text">
									<p class="title"><a href="#" id="newseight">没有新闻</a></p>
									<div class="date" id="newseightdate"><p>没有创建时间</p></div>
                                    <div class="icons">
                                    	<ul>
                                        	<li><a href="#" class="views">74</a></li>
                                        </ul>
                                    </div>
								</div>
							</div>
                            <div class="line_3" style="margin:14px 0px 17px;"></div>
                            
                            <div class="block_home_post">
								<div class="pic">
									<a href="#" class="w_hover">
										<img src="images/pic_home_news_post_2.png" alt="" />
										<span></span>
									</a>
								</div>
                                        
								<div class="text">
									<p class="title"><a href="#" id="newsnine">没有新闻</a></p>
									<div class="date"><p id="newsninedate">没有创建时间</p></div>
                                    <div class="icons">
                                    	<ul>
                                        	<li><a href="#" class="views">88</a></li>
                                        </ul>
                                    </div>
								</div>
							</div>
                            
                        </div>
                        <div class="clearboth"></div>
                        
                        <!-- <div class="line_3" style="margin:14px 0px 13px;"></div>
                        <a href="main_news.jsp" class="lnk_all_news fl">所有新闻</a> -->
                        <div class="clearboth"></div>
                        <div class="line_3" style="margin:13px 0px 35px;"></div>
                        
                        <h3 style="font-size:16px;">主要新闻</h3>
                        <div class="line_4" style="margin:-4px 0px 18px;"></div>
                        
                        <div class="block_topic_news">
                        	<article class="block_topic_post">
                            	<p class="title"><a href="#" id="newste">没有新闻</a></p>
                                <div class="f_pic"><a href="#" class="general_pic_hover scale"><img src="images/pic_home_main_news_1.jpg" alt="" onload="getPostNews()" /></a></div>
                                <p class="text"><a href="#">新闻详情</a></p>
                                <div class="info">
                                	<div class="date"><p id="newstedate">没有创建时间</p></div>
                                    
                                    <div class="r_part">
                                    	<div class="category"><p><a href="#">学院新闻</a></p></div>
                                        <a href="#" class="views">183</a>
                                    </div>
                                </div>
                            </article>
                            
                            <article class="block_topic_post">
                            	<p class="title"><a href="#" id="newsel">没有新闻</a></p>
                                <div class="f_pic"><a href="#" class="general_pic_hover scale"><img src="images/pic_home_main_news_2.jpg" alt="" /></a></div>
                                <p class="text" ><a href="#">新闻详情</a></p>
                                <div class="info">
                                	<div class="date"><p id="newseldate">没有创建时间</p></div>
                                    
                                    <div class="r_part">
                                    	<div class="category"><p><a href="#">学院新闻</a></p></div>
                                        <a href="#" class="views">183</a>
                                    </div>
                                </div>
                            </article>
                            
                            <article class="block_topic_post">
                            	<p class="title"><a href="#" id="newstw">没有新闻</a></p>
                                <div class="f_pic"><a href="#" class="general_pic_hover scale"><img src="images/pic_home_main_news_3.jpg" alt="" /></a></div>
                                <p class="text" ><a href="#">新闻详情</a></p>
                                <div class="info">
                                	<div class="date"><p id="newstwdate">没有创建时间</p></div>
                                    
                                    <div class="r_part">
                                    	<div class="category"><p><a href="#">学院新闻</a></p></div>
                                        <a href="#" class="views">183</a>
                                    </div>
                                </div>
                            </article>
                            
                            <article class="block_topic_post">
                            	<p class="title"><a href="#" id="newsth">没有新闻</a></p>
                                <div class="f_pic"><a href="#" class="general_pic_hover scale"><img src="images/pic_home_main_news_4.jpg" alt="" /></a></div>
                                <p class="text" ><a href="#">新闻详情</a></p>
                                <div class="info">
                                	<div class="date"><p id="newsthdate">没有创建时间</p></div>
                                    
                                    <div class="r_part">
                                    	<div class="category"><p><a href="#">学院新闻</a></p></div>
                                        <a href="#" class="views">183</a>
                                    </div>
                                </div>
                            </article>
                            
                        </div>
                        
                        <div class="line_3" style="margin:20px 0px 24px;"></div>
                        
                        <div class="block_pager">
                        	<a href="#" class="prev">前一页</a>
                            <a href="#" class="next">后一页</a>
                            
                            <div class="pages">
                            	<ul>
                                	<li class="current"><a href="#"></a></li>
                                    <!-- <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#">4</a></li>
                                    <li><a href="#">5</a></li>
                                    <li><a href="#">6</a></li> -->
                                </ul>
                            </div>
                            
                            <div class="clearboth"></div>
                        </div>
                        
                        <!-- <div class="line_2" style="margin:24px 0px 35px;"></div> -->
                        
                        <!-- <h3 style="font-size:16px;">热点爆料</h3>
                        <div class="line_4" style="margin:-4px 0px 18px;"></div>
                        
                        <div class="block_best_materials">
                        	<div class="slider">
                                <div id="best_materials_slider" class="flexslider">
                                    <ul class="slides">
                                        <li>
                                            <div class="block_best_material_post">
                                                <div class="f_pic"><a href="#" class="w_hover"><img src="images/pic_home_best_materials_1.jpg" alt="" /><span></span></a></div>
                                                <p class="title"><a href="#">Publishing packages and web page editors their.</a></p>
                                                <div class="info">
                                                    <div class="date"><p>08 July, 2012</p></div>
                                                    <div class="category"><p><a href="#">Business</a></p></div>
                                                </div>
                                            </div>
                                        </li>
                                        
                                        <li>
                                            <div class="block_best_material_post">
                                                <div class="f_pic"><a href="#" class="w_hover"><img src="images/pic_home_best_materials_2.jpg" alt="" /><span></span></a></div>
                                                <p class="title"><a href="#">Publishing packages and web page editors their.</a></p>
                                                <div class="info">
                                                    <div class="date"><p>08 July, 2012</p></div>
                                                    <div class="category"><p><a href="#">People</a></p></div>
                                                </div>
                                            </div>
                                        </li>
                                        
                                        <li>
                                            <div class="block_best_material_post">
                                                <div class="f_pic"><a href="#" class="w_hover"><img src="images/pic_home_best_materials_3.jpg" alt="" /><span></span></a></div>
                                                <p class="title"><a href="#">Publishing packages and web page editors their.</a></p>
                                                <div class="info">
                                                    <div class="date"><p>08 July, 2012</p></div>
                                                    <div class="category"><p><a href="#">Technology</a></p></div>
                                                </div>
                                            </div>
                                        </li>
                                        
                                        <li>
                                            <div class="block_best_material_post">
                                                <div class="f_pic"><a href="#" class="w_hover"><img src="images/pic_home_best_materials_4.jpg" alt="" /><span></span></a></div>
                                                <p class="title"><a href="#">Publishing packages and web page editors their.</a></p>
                                                <div class="info">
                                                    <div class="date"><p>08 July, 2012</p></div>
                                                    <div class="category"><p><a href="#">Business</a></p></div>
                                                </div>
                                            </div>
                                        </li>
                                        
                                        <li>
                                            <div class="block_best_material_post">
                                                <div class="f_pic"><a href="#" class="w_hover"><img src="images/pic_home_best_materials_5.jpg" alt="" /><span></span></a></div>
                                                <p class="title"><a href="#">Publishing packages and web page editors their.</a></p>
                                                <div class="info">
                                                    <div class="date"><p>08 July, 2012</p></div>
                                                    <div class="category"><p><a href="#">People</a></p></div>
                                                </div>
                                            </div>
                                        </li>
                                        
                                        <li>
                                            <div class="block_best_material_post">
                                                <div class="f_pic"><a href="#" class="w_hover"><img src="images/pic_home_best_materials_6.jpg" alt="" /><span></span></a></div>
                                                <p class="title"><a href="#">Publishing packages and web page editors their.</a></p>
                                                <div class="info">
                                                    <div class="date"><p>08 July, 2012</p></div>
                                                    <div class="category"><p><a href="#">Technology</a></p></div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            
                            <script type="text/javascript">
								$(function() {
									$('#best_materials_slider').flexslider({
										animation : 'slide',
										controlNav : false,
										directionNav : true,
										animationLoop : false,
										slideshow : false,
										itemWidth: 213,
										itemMargin: 0,
										minItems: 1,
										maxItems: 3,
										move: 1,
										useCSS : false
									});
								});
							</script>
                        </div> -->
                        
                        <!-- <div class="line_2" style="margin:20px 0px 0px;"></div> -->
                        
                    </div>
                    
                    <div class="sidebar">
                    	<div class="block_subscribes_sidebar">
                        	<div class="service">
                            	<a href="#" class="qqzone" onclick="shareQQzone()">
                                	<span class="num">11 234</span>
                                    <span class="people">关注者</span>
                                </a>
                            </div>
                            
                            <div class="service">
                            	<a href="#" class="xl" onclick="shareSina()">
                                	<span class="num">781</span>
                                    <span class="people">关注者</span>
                                </a>
                            </div>
                            
                            <div class="service" onclick="shareQQ()">
                            	<a href="#" class="qq">
                                	<span class="num">341</span>
                                    <span class="people">关注者</span>
                                </a>
                            </div>
                        </div>
                        
                      <div class="separator" style="height:31px;"></div>
                        
                        <div class="block_popular_posts">
                        	<h4>热点推送</h4>
                            
                        	<div class="article">
								<div class="pic">
									<a href="#" class="w_hover">
										<img src="images/news_post.png"  onload="getPostNews()" alt="" />
										<span></span>
									</a>
								</div>
                                        
								<div class="text">
									<p class="title"><a href="#" id="newsone">没有新闻推送！</a></p>
									<div class="date" ><p id="newsonedate">创建时间为空</p></div>
                                    <div class="icons">
                                    	<ul>
                                        	<li><a href="#" class="views">41</a></li>
                                            <!-- <li><a href="#" class="comments">22</a></li> -->
                                        </ul>
                                    </div>
								</div>
							</div>
							<div class="line_3"></div>
                            
                            <div class="article">
								<div class="pic">
									<a href="#" class="w_hover">
										<img src="images/news_post.png"  alt="" />
										<span></span>
									</a>
								</div>
                                        
								<div class="text">
									<p class="title"><a href="#" id="newstwo">没有新闻推送！</a></p>
									<div class="date" id="newstwodate"><p>创建时间为空</p></div>
                                    <div class="icons">
                                    	<ul>
                                        	<li><a href="#" class="views">24</a></li>
                                            <!-- <li><a href="#" class="comments">16</a></li> -->
                                        </ul>
                                    </div> 
								</div>
							</div>
							<div class="line_3"></div>
                            
                            <div class="article">
								<div class="pic">
									<a href="#" class="w_hover">
										<img src="images/news_post.png" alt="" />
										<span></span>
									</a>
								</div>
                                        
								<div class="text">
									<p class="title"><a href="#" id="newsthree">没有新闻推送！</a></p>
									<div class="date" id="newsthreedate"><p>创建时间为空</p></div>
                                    <div class="icons">
                                    	<ul>
                                        	<li><a href="#" class="views">33</a></li>
                                            <!-- <li><a href="#" class="comments">25</a></li> -->
                                        </ul>
                                    </div>
								</div>
							</div>
							<div class="line_2"></div>
                        </div>
                        
                        <div class="separator" style="height:31px;"></div>
                        
                        <div class="block_popular_stuff">
                        	<h4>热点视频</h4>
                            
                            <div class="content">
                            	<!-- <a href="#" class="view_all">显示所有视频</a> -->
                            	<div class="media"><a href="http://www.youtube.com/watch?v=ySIvism2af8" class="general_pic_hover play no_fx" data-rel="prettyPhoto" title="Popular Video"><img src="images/pic_pop_video.jpg" alt="" /></a></div>
                                <p><a href="blog_post_w_video.html">第十四届“秋炫沪江”研究生科技文化节开幕式暨职业启航公开课第三讲隆重举行
</a> <img src="images/icon_video.gif" alt="" /></p>
                                <p class="date">11 July, 2012</p>
                            </div>
                            
                            <div class="info">
                            	<ul>
                                	<!-- <li class="comments"><a href="#">115</a></li> -->
                                    <li class="views"><a href="#">220</a></li>
                                </ul>
                            </div>
                            
                            <div class="clearboth"></div>
                            
                            <div class="line_2"></div>
                        </div>
                        
                        <div class="separator" style="height:31px;"></div>
                        
                        <div class="block_calendar">
                        	<h4>日历</h4>
                            
                            <div class="calendar" id="calendar_sidebar">
                            </div>
                            
                            <script type="text/javascript">
								var today = new Date();
								var date = today.getFullYear() + '-' + (today.getMonth() + 1) + '-' + today.getDate();
								$('#calendar_sidebar').DatePicker({
									flat : true,
									date : date,
									calendars : 1,
									starts : 1,
									locale : {
										days : ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'],
										daysShort : ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
										daysMin : ['S', 'M', 'T', 'W', 'T', 'F', 'S', 'S'],
										months : ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
										monthsShort : ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
										weekMin : 'wk'
									}
								});
							</script>
                            
                            <div class="line_2"></div>
                        </div>
                        
                        <div class="separator" style="height:31px;"></div>
                        
                        <div class="block_popular_stuff">
                        	<h4>热点图片</h4>
                            
                            <div class="content">
                            	<!-- <a href="#" class="view_all">显示所有图片</a> -->
                            	<div class="media"><a href="images/pic_pop_photo_big.jpg" class="general_pic_hover zoom no_fx" data-rel="prettyPhoto" title="Popular Photo"><img src="images/pic_pop_photo.jpg" alt="" /></a></div>
                                <p><a href="blog_post_w_slider.html">机械设计制造及其自动化专业顺利通过专家组进校考查</a> <img src="images/icon_photo.gif" alt="" /></p>
                                <p class="date">11 July, 2012</p>
                            </div>
                            
                            <div class="info">
                            	<ul>
                                	<!-- <li class="comments"><a href="#">100</a></li> -->
                                    <li class="views"><a href="#">134</a></li>
                                </ul>
                            </div>
                            
                            <div class="clearboth"></div>
                            
                            <div class="line_2"></div>
                        </div>
                        
                      	<div class="separator" style="height:31px;"></div>
                        
                        <!-- <div class="block_newsletter">
                        	<h4>新闻来信</h4>
                            
                            <form action="#" />
                            	<div class="field"><input type="text" class="w_def_text" title="输入您的邮箱地址..." /></div>
                                <input type="submit" class="button" value="订阅" />
                                
                                <div class="clearboth"></div>
                            </form>
                        </div> -->
                        
                    </div>
                    
                	<div class="clearboth"></div>
                </div>
            </div>
        </div>
    	<!-- CONTENT END -->
        
        <!-- FOOTER BEGIN -->
        <footer>
            <div id="footer">
            	<section class="top">
                	<div class="inner">
                    	<div id="logo_bottom"><a href="index.jsp"><img src="images/logo_bottom_new.png" alt="" /></a></div>
                        
                        <div class="block_to_top">
                        	<a id="to_top" href="#">回到顶部</a>
                        	<script type="text/javascript">
                        	window.onload = function(){
                        		  var oTop = document.getElementById("to_top");
                        		  var screenw = document.documentElement.clientWidth || document.body.clientWidth;
                        		  var screenh = document.documentElement.clientHeight || document.body.clientHeight;
                        		  oTop.style.left = screenw - oTop.offsetWidth +"px";
                        		  oTop.style.top = screenh - oTop.offsetHeight + "px";
                        		  window.onscroll = function(){
                        		    var scrolltop = document.documentElement.scrollTop || document.body.scrollTop;
                        		    oTop.style.top = screenh - oTop.offsetHeight + scrolltop +"px";
                        		  }
                        		  oTop.onclick = function(){
                        		    document.documentElement.scrollTop = document.body.scrollTop =0;
                        		  }
                        		} 
                        	</script>
                        </div>
                    </div>
                </section>
                
            	<section class="bottom">
                	<div class="inner">
                    	<div class="line_1"></div>
                        
                        <div class="fr">
                        	<div class="block_menu_footer">
                            	<ul>
                                	<!-- <li><a href="index.jsp">首页</a></li> -->
                                    <li><a href="site_navigation.jsp">网站地图</a></li>
                                    <li><a href="confidentiality_agreement.jsp">用户注册协议</a></li>
                                    <li><a href="contact_us.jsp">联系我们</a></li>
                                </ul>
                            </div>
                            
                            <!-- <div class="block_social_footer">
                            	<ul>
                                	<li><a href="#" class="fb">Facebook</a></li>
                                    <li><a href="#" class="tw">Twitter</a></li>
                                    <li><a href="#" class="rss">RSS</a></li>
                                </ul>
                            </div> -->
                        </div>
                        
                        <div class="block_copyrights"><p>版权所有&copy; 2017上海理工大学 沪ICP备08108292号-5 技术支持:上海理工大学电子商务发展研究院和管理科学与工程一级学科博士点</p></div>
                    </div>
                </section>
            </div>
        </footer>
        <!-- FOOTER END -->
    </div>
    
    <!-- POPUP BEGIN -->
    <div id="overlay"></div>
    <div id="login" class="block_popup">
    	<div class="popup">
        	<a href="#" class="close">关闭</a>
            
            <div class="content">
            	<div class="title"><p>登录网站</p></div>
                
                <div class="form">
                	<form id="loginForm" action="${basePath}user/login" method="post"/>
                    	<div class="column">
                        	<p class="label">用户名</p>
                            <div class="field"><input type="text" id="username" name="username" class="username"/></div>
                        </div>
                        
                        <div class="column">
                        	<p class="label">密码</p>
                            <div class="field"><input type="password" id="password" name="password" class="password"/></div>
                        </div>
						
						<div class="column_2">
                            <div class="remember">
                            	<div class="checkbox"><input type="checkbox" /></div>
                                <div class="remember_label"><p>记住密码</p></div>
                            </div>
                        </div>
                        
                        <div class="column_2">
                            <p class="forgot_pass"><a href="#">忘记密码?</a></p>
                        </div>
                        <div id="error_box"></div>
                        
                        <div class="column button">
                            <a href="#" class="enter" onclick="login()"><span>登录</span></a>
                            <!-- <button id="submit" type="submit" class="enter" style="border: none;">登录</button> -->
                        </div>
                        <div class="clearboth"></div>
                    </form>
                </div>
                
                <div class="subtitle"><p>用户须知</p></div>
                
                <!-- <div class="fb_button"><a href="#"><img src="images/button_fb_login.png" alt="" /></a></div> -->
                <div class="text"><p style="position: center;">用户登录的时候，请填写用户名和密码，用户名和密码不允许为空,用户分为学生用户和教师用户</p></div>
            </div>
        </div>
    </div>
    <!-- POPUP END -->
    
</body>

</html>
