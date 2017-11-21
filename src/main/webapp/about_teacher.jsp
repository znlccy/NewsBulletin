<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>

<head>
<title>上海理工大学电子商务发展研究院-关于<%=request.getParameter("tearcherName") %></title>
<link rel="Shortcut Icon" href="images/news.png" />
<meta name="keywords" content="" />
<meta name="description" content="" />

<meta charset="utf-8" />
<meta name="viewport" content="width=device-width" />

<!--[if lt IE 9]>
<script type="text/javascript" src="layout/plugins/html5.js"></script>
<![endif]-->

<link rel="stylesheet" href="layout/style.css" type="text/css" />
<link href="http://fonts.googleapis.com/css?family=PT+Sans:400,700" rel="stylesheet" type="text/css" />
<link href="http://fonts.googleapis.com/css?family=PT+Sans+Narrow:400,700" rel="stylesheet" type="text/css" />
<link href="http://fonts.googleapis.com/css?family=Droid+Serif:400,400italic" rel="stylesheet" type="text/css" />

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
		var sharesinastring = 'http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?title=' + $("#title").val() + '&url=' + $("#url").val() + '&site="满艺网"';
		window.location.href = sharesinastring;
	}
	
	function shareQQ() {
		var p = {
		url: location.href, /*获取URL，可加上来自分享到QQ标识，方便统计*/
		desc: '', /*分享理由(风格应模拟用户对话),支持多分享语随机展现（使用|分隔）*/
		title: '新闻动态', /*分享标题(可选)*/
		summary: '', /*分享摘要(可选)*/
		pics: '', /*分享图片(可选)*/
		flash: '', /*视频地址(可选)*/
		site: 'QQ', /*分享来源(可选) 如：QQ分享*/
		style: '201',
		width: 32,
		height: 32
		};
		//分享到QQ
		var sharesinastring = 'http://connect.qq.com/widget/shareqq/index.html?title=' + $("#title").val() + '&summary=' + $("#url").val() + '&url=' + $("#url").val() + '&site="腾讯QQ"';
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
	
	function getTearcher(){
		var tearcherName = $.trim($("#tearcherName").val());
		
		var data = {
			tearcherName:tearcherName	
		};
		
		$.ajax({
			type:"GET",
			url:"http://180.97.83.230:8080/NewsBulletin/tearcher/query",
			data:data,
			dataType:'json',
			success:function(map){
				var status = JSON.stringify(map.status);
				var status_success = JSON.stringify("200");
				if(status==status_success)
				{
					/* document.getElementById("p1").innerHTML=JSON.stringify(map.personalProfile); */
					document.getElementById("personalProfile").innerHTML=JSON.stringify(map.personalProfile).replace(/\"/g, "");
					document.getElementById("studyExperience").innerHTML=JSON.stringify(map.studyExperience).replace(/\"/g, "");
					document.getElementById("workAchievements").innerHTML=JSON.stringify(map.workAchievements).replace(/\"/g, "");
					document.getElementById("researchDirection").innerHTML=JSON.stringify(map.researchDirection).replace(/\"/g, "");
					document.getElementById("academicGroups").innerHTML=JSON.stringify(map.academicGroups).replace(/\"/g, "");
					document.getElementById("contactStyle").innerHTML=JSON.stringify(map.contactStyle).replace(/\"/g, "");
					document.getElementById("mobile").innerHTML=JSON.stringify(map.contactStyle).replace(/\"/g, "");
					document.getElementById("website").innerHTML=JSON.stringify(map.contactStyle).replace(/\"/g, "");
					document.getElementById("email").innerHTML=JSON.stringify(map.contactStyle).replace(/\"/g, "");
				}
				/* alert(status); */
			}
		});
	}
	
	function getNews() {
		
		$.ajax({
			type:"GET",
			url:"http://180.97.83.230:8080/NewsBulletin/news/query",
			data:'',
			dataType:'json',
			success:function(map){
				var newsTitle = JSON.stringify(map.newsTitle);
				var newsContent = JSON.stringify(map.newsContent);
			}
		});
	}
	
	function getQQFocus(){
		
		var qq = $.trim($("#qq").val());
		
		data = {
			qq:qq
		}
		
		$.ajax({
			type:"GET",
			url:"http://180.97.83.230:8080/NewsBulletin/focus/query",
			data:data,
			dataType:'json',
			success:function(map){
				
			}
		});
	}
	
	function getXinLangFocus(){
		
		var XinLang = $.trim($("#XinLang").val());
		
		data = {
			XinLang:XinLang
		}
		
		$.ajax({
			type:"GET",
			url:"http://180.97.83.230:8080/NewsBulletin/focus/query",
			data:data,
			dataType:'json',
			success:function(map){
				
			}
		});
	}
	
	function getQQZoneFocus(){
		
		var QQZone = $.trim($("#QQZone").val());
		
		data = {
			QQZone:QQZone
		}
		
		$.ajax({
			type:"GET",
			url:"http://www.shlg.com:8080/NewsBulletin/focus/query",
			data:data,
			dataType:'json',
			success:function(map){
				
			}
		});
	}
	
</script>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>

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
                                    <!-- <li><a href="site_navigation.jsp">网站地图</a></li> -->
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
                            	<form action="#" />
                                	<div class="field"><input type="text" class="w_def_text" title="输入您搜索的关键词..." /></div>
                                    <input type="submit" class="button" value="Search" />
                                    
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
								<li class="big_dropdown"><a href="index.jsp">首页</a>
                                	
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
                    	<div class="block_breadcrumbs">
                        	<div class="text"><p>您所在的位置:</p></div>
                        	
                            <ul>
                            	<li><a href="index.jsp">首页</a></li>
                                <li>关于<%=request.getParameter("tearcherName") %></li>
                                <% session.setAttribute("tearcherName", request.getParameter("tearcherName")); %>
                            </ul>
                        </div>
                        <div class="separator" style="height:30px;"></div>
                        
                        <h2>上海理工大学博士研究生导师:<%=request.getParameter("tearcherName") %>简介</h2>
                        
                        <p class="general_subtitle_2">博士研究生导师</p>
                        
                        <div class="line_3" style="margin:-6px 0px 17px;"></div>
                        
                        <div class="block_author">
                        	<div class="photo"><a href="#"><img onload="getTearcher()" src="images/ava_default_2.jpg" alt="" title="博士研究生导师头像位置" /></a></div>
                            <div class="bio">
                            	<p id="tearcherName"><%=request.getParameter("tearcherName") %></p>
                                
                                <p class="www"><a href="#" id="website"><%=request.getParameter("tearcherName") %>不存在个人网站</a></p>
                                <p class="email"><a href="mailto:#" id="email" target="_blank"><%=request.getParameter("tearcherName") %>不存在邮箱</a></p>
                                <p class="phone"><a href="" target="_blank" id="mobile"><%=request.getParameter("tearcherName") %>不存在电话</a></p>
                                
                                <!-- <div class="line_3" style="margin:10px 0px 17px;"></div> -->
                                
                                <!-- <div class="social">
                                	<ul>
                                    	<li><a href="#" class="fb">Facebook</a></li>
                                        <li><a href="#" class="tw">Twitter</a></li>
                                        <li><a href="#" class="s_fr">Fr</a></li>
                                        <li><a href="#" class="vimeo">Vimeo</a></li>
                                        <li><a href="#" class="rss">RSS</a></li>
                                    </ul>
                                </div> -->
                            </div>
                            
                            <div class="clearboth"></div>
                        </div>
                        
                        <div class="line_2" style="margin:17px 0px 27px;"></div>
                        
                        <div class="block_author_posts">
                            
                            <h3>一 :个人简介</h3>
                            
                            <div class="block_staff">
	                            <div class="text">
			                        <div class="block_accordeon_type_1">
			                        <p id="personalProfile">这个<%=request.getParameter("tearcherName") %>老师简介不存在！</p>
			                        </div>
	                            </div>
                       		</div>
                            <div class="line_2" style="margin:17px 0px 20px;"></div>
                        
	                        <%-- <div class="block_testimonial_type_1">
	                        	<div class="text">
	                            	<div class="tail"></div>
	                                <p id="personalProfile">这个<%=request.getParameter("tearcherName") %>老师简介不存在！</p>
	                            </div>
	                            
	                            <!-- <div class="author"><p><a href="#">John Doe</a>. <a href="#" class="position">Designer</a></p></div> -->
	                        </div>
	                        
	                        <div class="line_2" style="margin:17px 0px 20px;"></div> --%>
                            
                            <h3>二:主要学习与工作经历</h3>
                            
                            <div class="block_staff">
	                            <div class="text">
			                        <div class="block_accordeon_type_1">
			                        <p id="studyExperience"><%=request.getParameter("tearcherName") %>老师主要学习与工作经历不存在！</p>
			                        </div>
	                            </div>
                       		</div>
                            <div class="line_2" style="margin:17px 0px 20px;"></div>
                        
	                        <%-- <div class="block_testimonial_type_1">
	                        	<div class="text">
	                            	<!-- <div class="tail"></div> -->
	                                <p id="studyExperience"><%=request.getParameter("tearcherName") %>老师主要学习与工作经历不存在！</p>
	                            </div>
	                            
	                        </div>
	                        
	                        <div class="line_2" style="margin:17px 0px 20px;"></div> --%>
	                        
	                        <h3>三:主要科研工作与成绩</h3>
                        	
                        	<div class="block_staff">
	                            <div class="text">
			                        <div class="block_accordeon_type_1">
			                        <p id="workAchievements"><%=request.getParameter("tearcherName") %>老师主要学习与工作经历不存在</p>
			                        </div>
	                            </div>
                       		</div>
                            <div class="line_2" style="margin:17px 0px 20px;"></div>
                        
	                        <%-- <div class="block_testimonial_type_1">
	                        	<div class="text">
	                            	<!-- <div class="tail"></div> -->
	                                <p id="workAchievements"><%=request.getParameter("tearcherName") %>老师主要学习与工作经历不存在</p>
	                            </div>
	                            
	                        </div>
	                        
	                        <div class="line_2" style="margin:17px 0px 20px;"></div> --%>
	                        
	                        <h3>四:主要社会学术团体兼职</h3>
                        
                        	<div class="block_staff">
	                            <div class="text">
			                        <div class="block_accordeon_type_1">
			                        <p id="academicGroups"><%=request.getParameter("tearcherName") %>老师主要社会学术团体兼职不存在</p>
			                        </div>
	                            </div>
                       		</div>
                            <div class="line_2" style="margin:17px 0px 20px;"></div>
                        	
	                        <%-- <div class="block_testimonial_type_1">
	                        	<div class="text">
	                            	<div class="tail"></div>
	                                <p id="academicGroups"><%=request.getParameter("tearcherName") %>老师主要社会学术团体兼职不存在</p>
	                            </div>
	                            
	                        </div>
	                        
	                        <div class="line_2" style="margin:17px 0px 20px;"></div> --%>
	                        
	                        <h3>五:主要研究方向</h3>
                        
                        	<div class="block_staff">
	                            <div class="text">
			                        <div class="block_accordeon_type_1">
			                        <p id="researchDirection"><%=request.getParameter("tearcherName") %>老师主要研究方向不存在</p>
			                        </div>
	                            </div>
                       		</div>
                            <div class="line_2" style="margin:17px 0px 20px;"></div>
                        
	                        <%-- <div class="block_testimonial_type_1">
	                        	<div class="text">
	                            	<div class="tail"></div>
	                                <p id="researchDirection"><%=request.getParameter("tearcherName") %>老师主要研究方向不存在</p>
	                            </div>
	                            
	                        </div> --%>
	                        
	                        <h3>六:联系方式</h3>
                        
                        	<div class="block_staff">
	                            <div class="text">
			                        <div class="block_accordeon_type_1">
			                        <p id="contactStyle"><%=request.getParameter("tearcherName") %>老师联系方式不存在</p>
			                        </div>
	                            </div>
                       		</div>
                        
	                        <%-- <div class="block_testimonial_type_1">
	                        	<div class="text">
	                            	<div class="tail"></div>
	                                <p id="contactStyle"><%=request.getParameter("tearcherName") %>老师联系方式不存在</p>
	                            </div>
	                            
	                        </div> --%>
                            
                            <!-- <div class="posts">
                            	<article class="block_author_post">
                                	<div class="f_pic">
                                    	<a href="news_post.jsp" class="general_pic_hover scale"><img src="images/pic_author_1.jpg" alt="" /></a>
                                        <span class="date">09:52  11 July 2012</span>
                                    </div>
                                    
                      				<div class="info">
                                    	<div class="category"><p>category: <a href="#">BUSINESS</a></p></div>
                                        
                                        <div class="r_part">
                                        	<a href="#" class="views">33</a>
                                            <a href="#" class="comments">22</a>
                                        </div>
                                    </div>
                                    
                                    <p class="title"><a href="news_post.jsp">Publishing packages and web page editors now use.</a></p>
                                </article>
                                
                                <article class="block_author_post">
                                	<div class="f_pic">
                                    	<a href="news_post.jsp" class="general_pic_hover scale"><img src="images/pic_author_2.jpg" alt="" /></a>
                                        <span class="date">09:52  11 July 2012</span>
                                    </div>
                                    
                      				<div class="info">
                                    	<div class="category"><p>category: <a href="#">BUSINESS</a></p></div>
                                        
                                        <div class="r_part">
                                        	<a href="#" class="views">33</a>
                                            <a href="#" class="comments">22</a>
                                        </div>
                                    </div>
                                    
                                    <p class="title"><a href="news_post.jsp">Publishing packages and web page editors now use.</a></p>
                                </article>
                                
                                <article class="block_author_post">
                                	<div class="f_pic">
                                    	<a href="news_post.jsp" class="general_pic_hover scale"><img src="images/pic_author_3.jpg" alt="" /></a>
                                        <span class="date">09:52  11 July 2012</span>
                                    </div>
                                    
                      				<div class="info">
                                    	<div class="category"><p>category: <a href="#">BUSINESS</a></p></div>
                                        
                                        <div class="r_part">
                                        	<a href="#" class="views">33</a>
                                            <a href="#" class="comments">22</a>
                                        </div>
                                    </div>
                                    
                                    <p class="title"><a href="news_post.jsp">Publishing packages and web page editors now use.</a></p>
                                </article>
                            </div> -->
                        </div>
                        
                    </div>
                    
                    <div class="sidebar">
                    	<div class="block_subscribes_sidebar">
                        	<div class="service">
                            	<a href="#" class="qqzone" onclick="shareQQzone()">
                                	<span class="num">QQ空间</span>
                                    <span class="people">分享</span>
                                </a>
                            </div>
                            
                            <div class="service">
                            	<a href="#" class="xl" onclick="shareSina()">
                                	<span class="num">新浪微博</span>
                                    <span class="people">分享</span>
                                </a>
                            </div>
                            
                            <div class="service" onclick="shareQQ()">
                            	<a href="#" class="qq">
                                	<span class="num">QQ</span>
                                    <span class="people">分享</span>
                                </a>
                            </div>
                        </div>
                        
                      <div class="separator" style="height:31px;"></div>
                        
                        <div class="block_popular_posts">
                        	<h4>热点推送</h4>
                            
                        	<div class="article">
								<div class="pic">
									<a href="#" class="w_hover">
										<img src="images/news_post.png"  onload="getNews()" alt="" />
										<span></span>
									</a>
								</div>
                                        
								<div class="text">
									<p class="title"><a href="#" id="newsone">没有新闻推送！</a></p>
									<div class="date" id="newsdate"><p>11 July, 2012</p></div>
                                    <div class="icons">
                                    	<ul>
                                        	<li><a href="#" class="views">41</a></li>
                                            <li><a href="#" class="comments">22</a></li>
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
									<p class="title"><a href="#" id="newstwo">没有新闻推送！</a></p>
									<div class="date" id="newsdate"><p>07 July, 2012</p></div>
                                    <div class="icons">
                                    	<ul>
                                        	<li><a href="#" class="views">24</a></li>
                                            <li><a href="#" class="comments">16</a></li>
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
									<div class="date"><p>05 July, 2012</p></div>
                                    <div class="icons">
                                    	<ul>
                                        	<li><a href="#" class="views">33</a></li>
                                            <li><a href="#" class="comments">25</a></li>
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
                            	<a href="#" class="view_all">显示所有视频</a>
                            	<div class="media"><a href="http://www.youtube.com/watch?v=ySIvism2af8" class="general_pic_hover play no_fx" data-rel="prettyPhoto" title="Popular Video"><img src="images/pic_pop_video.jpg" alt="" /></a></div>
                                <p><a href="blog_post_w_video.html">第十四届“秋炫沪江”研究生科技文化节开幕式暨职业启航公开课第三讲隆重举行
</a> <img src="images/icon_video.gif" alt="" /></p>
                                <p class="date">11 July, 2012</p>
                            </div>
                            
                            <div class="info">
                            	<ul>
                                	<li class="comments"><a href="#">115</a></li>
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
                            	<a href="#" class="view_all">显示所有图片</a>
                            	<div class="media"><a href="images/pic_pop_photo_big.jpg" class="general_pic_hover zoom no_fx" data-rel="prettyPhoto" title="Popular Photo"><img src="images/pic_pop_photo.jpg" alt="" /></a></div>
                                <p><a href="blog_post_w_slider.html">机械设计制造及其自动化专业顺利通过专家组进校考查</a> <img src="images/icon_photo.gif" alt="" /></p>
                                <p class="date">11 July, 2012</p>
                            </div>
                            
                            <div class="info">
                            	<ul>
                                	<li class="comments"><a href="#">100</a></li>
                                    <li class="views"><a href="#">134</a></li>
                                </ul>
                            </div>
                            
                            <div class="clearboth"></div>
                            
                            <div class="line_2"></div>
                        </div>
                        
                      	<div class="separator" style="height:31px;"></div>
                        
                        <div class="block_newsletter">
                        	<h4>新闻来信</h4>
                            
                            <form action="#" />
                            	<div class="field"><input type="text" class="w_def_text" title="输入您的邮箱地址..." /></div>
                                <input type="submit" class="button" value="订阅" />
                                
                                <div class="clearboth"></div>
                            </form>
                        </div>
                        
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
                                    <!-- <li><a href="site_navigation.jsp">网站地图</a></li> -->
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
        	<a href="#" class="close">Close</a>
            
            <div class="content">
            	<div class="title"><p>Enter the site</p></div>
                
                <div class="form">
                	<form action="#" />
                    	<div class="column">
                        	<p class="label">Login</p>
                            <div class="field"><input type="text" /></div>
                        </div>
                        
                        <div class="column">
                        	<p class="label">Password</p>
                            <div class="field"><input type="password" /></div>
                        </div>
						
						<div class="column_2">
                            <div class="remember">
                            	<div class="checkbox"><input type="checkbox" /></div>
                                <div class="remember_label"><p>Remember me</p></div>
                            </div>
                        </div>
                        
                        <div class="column_2">
                            <p class="forgot_pass"><a href="#">Forgot password?</a></p>
                        </div>
                        
                        <div class="column button">
                            <a href="#" class="enter"><span>Login</span></a>
                        </div>
                        
                        <div class="clearboth"></div>
                    </form>
                </div>
                
                <div class="subtitle"><p>SIGN IN AS A USER</p></div>
                
                <div class="fb_button"><a href="#"><img src="images/button_fb_login.png" alt="" /></a></div>
                <div class="text"><p>Use your account on the social network Facebook, to create a profile on BusinessPress</p></div>
            </div>
        </div>
    </div>
    <!-- POPUP END -->
</body>

</html>
