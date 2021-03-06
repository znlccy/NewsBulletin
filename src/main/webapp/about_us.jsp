<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>

<head>
<title>上海理工大学电子商务发展研究院-关于我们</title>
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
                                    <input type="submit" class="button" value="搜索" />
                                    
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
								<li class="current_page_item">
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
                            	<li><a href="about_us.jsp">关于我们</a></li>
                                <!-- <li>关于我们</li> -->
                            </ul>
                        </div>
                        <div class="separator" style="height:30px;"></div>
                        
                        <h2>关于我们</h2>
                        
                        <p class="general_subtitle">上海理工大学电子商务发展研究院，做一个高峰高原学科电子商务方向的网站。版块有学科和电子商务方向简介、电子商务发展数据库、师资团队、大数据与电子商务应用。</p>
                        
                        <div class="line_4" style="margin:0px 0px 18px;"></div>
                        
                        <div class="separator" style="height:11px;"></div>
                        
                        <div class="block_staff">
                        	<div class="title">
                            	<p><span class="left">&nbsp;</span>师资团队<span class="right">&nbsp;</span></p>
                            </div>
                            
                            <div class="one_third">
                            	<div class="person">
                                	<div class="photo"><a href="about_teacher.jsp?tearcherName=<%="杨坚争" %>"><img src="images/ava_default_1.jpg" alt="" /></a></div>
                                    <div class="text">
                                    	<p class="position">姓名:杨坚争</p>
                                        <p class="name"><a href="about_author.jsp">职位:教授</a></p>
                                    </div>
                                    
                                    <div class="clearboth"></div>
                                </div>
                                
                                <div class="person">
                                	<div class="photo"><a href="about_teacher.jsp?tearcherName=<%="张永庆" %>"><img src="images/ava_default_1.jpg" alt="" /></a></div>
                                    <div class="text">
                                    	<p class="position">姓名:张永庆</p>
                                        <p class="name"><a href="about_author.jsp">职位:教授</a></p>
                                    </div>
                                    
                                    <div class="clearboth"></div>
                                </div>
                            </div>
                            
                            <div class="one_third">
                            	<div class="person">
                                	<div class="photo"><a href="about_teacher.jsp?tearcherName=<%="雷良海" %>"><img src="images/ava_default_1.jpg" alt="" /></a></div>
                                    <div class="text">
                                    	<p class="position">姓名:雷良海</p>
                                        <p class="name"><a href="about_author.jsp">职位:教授</a></p>
                                    </div>
                                    
                                    <div class="clearboth"></div>
                                </div>
                                
                                <div class="person">
                                	<div class="photo"><a href="about_teacher.jsp?tearcherName=<%="严广乐" %>"><img src="images/ava_default_1.jpg" alt="" /></a></div>
                                    <div class="text">
                                    	<p class="position">姓名:严广乐</p>
                                        <p class="name"><a href="about_author.jsp">职位:教授</a></p>
                                    </div>
                                    
                                    <div class="clearboth"></div>
                                </div>
                            </div>
                            
                            <div class="one_third last">
                            	<div class="person">
                                	<div class="photo"><a href="about_teacher.jsp?tearcherName=<%="樊重俊" %>"><img src="images/ava_default_1.jpg" alt="" /></a></div>
                                    <div class="text">
                                    	<p class="position">姓名:樊重俊</p>
                                        <p class="name"><a href="about_author.jsp">职位:教授</a></p>
                                    </div>
                                    
                                    <div class="clearboth"></div>
                                </div>
                                
                                <div class="person">
                                	<div class="photo"><a href="about_teacher.jsp?tearcherName=<%="刘芹" %>"><img src="images/ava_default_1.jpg" alt="" /></a></div>
                                    <div class="text">
                                    	<p class="position">姓名:刘芹</p>
                                        <p class="name"><a href="about_author.jsp">职位:教授</a></p>
                                    </div>
                                    
                                    <div class="clearboth"></div>
                                </div>
                            </div>
                            
                            <div class="one_third">
                            	<div class="person">
                                	<div class="photo"><a href="about_teacher.jsp?tearcherName=<%="朱小栋" %>"><img src="images/ava_default_1.jpg" alt="" /></a></div>
                                    <div class="text">
                                    	<p class="position">姓名:朱小栋</p>
                                        <p class="name"><a href="about_author.jsp">职位:教授</a></p>
                                    </div>
                                    
                                    <div class="clearboth"></div>
                                </div>
                                
                                <div class="person">
                                	<div class="photo"><a href="#"><img src="#" alt="" /></a></div>
                                    <div class="text">
                                    	<p class="position"></p>
                                        <p class="name"><a href="about_author.jsp"></a></p>
                                    </div>
                                    
                                    <div class="clearboth"></div>
                                </div>
                            </div>
                            
                            <div class="one_third">
                            	<div class="person">
                                	<div class="photo"><a href="about_teacher.jsp?tearcherName=<%="陈帅" %>"><img src="images/ava_default_1.jpg" alt="" /></a></div>
                                    <div class="text">
                                    	<p class="position">姓名:陈帅</p>
                                        <p class="name"><a href="about_author.jsp">职位:教授</a></p>
                                    </div>
                                    
                                    <div class="clearboth"></div>
                                </div>
                                
                                <div class="person">
                                	<div class="photo"><a href="about_author.jsp"><img src="#" alt="" /></a></div>
                                    <div class="text">
                                    	<p class="position"></p>
                                        <p class="name"><a href="about_author.jsp"></a></p>
                                    </div>
                                    
                                    <div class="clearboth"></div>
                                </div>
                            </div>
                            
                            <div class="one_third last">
                            	<div class="person">
                                	<div class="photo"><a href="about_teacher.jsp?tearcherName=<%="孙英隽" %>"><img src="images/ava_default_1.jpg" alt="" /></a></div>
                                    <div class="text">
                                    	<p class="position">姓名:孙英隽</p>
                                        <p class="name"><a href="about_author.jsp">职位:教授</a></p>
                                    </div>
                                    
                                    <div class="clearboth"></div>
                                </div>
                                
                                <div class="person">
                                	<div class="photo"><a href="about_author.jsp"><img src="#" alt="" /></a></div>
                                    <div class="text">
                                    	<p class="position"></p>
                                        <p class="name"><a href="about_author.jsp"></a></p>
                                    </div>
                                    
                                    <div class="clearboth"></div>
                                </div>
                            </div>
                            <div class="clearboth"></div>
                        </div>
                        
                        <div class="block_staff">
                        	<div class="title">
                            	<p><span class="left">&nbsp;</span>电子商务发展数据库<span csettings_blocklass="right">&nbsp;</span></p>
                            </div>
                            <div>
                            	
                            </div>
                            <div class="text">
                                <!-- <h5>电子商务发展数据库</h5> -->
                        
		                        <div class="block_tabs_type_1">
		                            <div class="tabs">
		                                <ul>
		                                    <li><a href="#1" class="current">电子商务发展数据库</a></li><!-- tab link -->
		                                    <!-- <li><a href="#2">电子商务发展数据库详情</a></li>tab link -->
		                                    
		                                </ul>
		                            </div>
		                                        
		                            <div class="tab_content">
		                                <!-- tab content goes here -->
		                                <div class="dropcaps_4">文</div>
				                        <p>电子商务是现实社会中商务活动的电子化实现方式，因此它的实现过程也就是现在商务活动的各个过程。包括交易前的商品信息流览、定单的签署、支付货款。商品的配送和售后服务等过程。在为用户提供商品信息时需要有商品信息库，该数据库的建立需要有数据库技术，用户需要使用Web浏览技术（包括HTTP和HTML或XML等技术）例览商品信息并完成商品定购。在进行付款时需要使用电子支付技术，与其密切相关的安全问题需要有相应的安全技术作为保障。除了定单格式和所交换信息略有不同外，B to C类的电子商务和B to B类的电子商务均使用类似的一些技术和标准</p>
				                        
				                        <div class="line_2" style="margin:3px 0px 0px;"></div>
				                        <div class="dropcaps_2">文</div>
				                        <p>除此之外还需要有网络技术作为必要的保证。 使用的标准 内容显示 Web浏览（基于HTML和HTTP） 消息的描述 W3C规定的XML 消息的传递 使用SSL的HTTP 1.0 安全通信 SSL/TSL 加密算法 公开密钥标准（PKCS）SSL API 认证（GA） ITU-T建议X.509 　</p>
				                        
				                        <div class="line_2" style="margin:3px 0px 0px;"></div>
		                            </div>
		                                        
		                      		<!-- <div class="tab_content">
		                                tab content goes here
		                                tab content goes here
		                                <div class="dropcaps_4">文</div>
				                        <p>andomised words which don't look even slightly believable. You need to be sure there isn't anything embarrassing hidden in the middle of text established fact that a reader will be words which don't look even slightly believable. If you are going to use a passage. You need to be sure there isn't anything embarrassing hidden in the middle of textreadable content of a page.</p>
				                        
				                        <div class="line_2" style="margin:3px 0px 0px;"></div>
				                        <div class="dropcaps_2">文</div>
				                        <p>If you are going to use a passage. You need to be sure there isn't anything embarrassing hidden in the middle of text established fact that a reader will be words which don't look even slightly believable. If you are going to use a passage. You need to be sure there isn't anything embarrassing hidden in the middle of textreadable content of a page.</p>
				                        
				                        <div class="line_2" style="margin:3px 0px 0px;"></div>
		                            </div> -->
		                                        
		                      		
		                                        
		                          	<script type="text/javascript">
		                                $('.block_tabs_type_1 .tabs').tabs('.block_tabs_type_1 .tab_content', {
		                                    initialIndex : 0
		                                });
		                            </script>
		                        </div>
                            </div>
                       	</div>
                       	<br>
                       	<div class="block_staff">
                        	<div class="title">
                            	<p><span class="left">&nbsp;</span>新闻公告<span class="right">&nbsp;</span></p>
                            </div>
                            <div class="text">
                                <!-- <h5>新闻公告</h5> -->
                        
		                        <div class="block_accordeon_type_1">
		                           	<div class="dropcaps_4">文</div>
			                        <p>可以查看学院内部最新动向；公告、通知</p>
			                        
			                        <div class="line_2" style="margin:3px 0px 0px;"></div>
			                        <div class="dropcaps_2">文</div>
			                        <p>最新的新闻资讯推荐</p>
			                        
			                        <div class="line_2" style="margin:3px 0px 0px;"></div>
		                        </div>
                            </div>
                       	</div>
                       	<br>
                       	<div class="block_staff">
                        	<div class="title">
                            	<p><span class="left">&nbsp;</span>科研成果<span class="right">&nbsp;</span></p>
                            </div>
                            <div class="text">
                                <div class="text">
                                <!-- <h5>科研成果</h5> -->
                        
		                        <div class="block_accordeon_type_1">
		                           	
			                        <div class="dropcaps_4">文</div>
			                        <p>科研人员在他所从事的某一科学技术研究项目或课题研究范围内，通过实验观察、调查研究、综合分析等一系列脑力、体力劳动所取得的、并经过评审或鉴定，确认具有学术意义和实用价值的创造性结果</p>
			                        
			                        <div class="line_2" style="margin:3px 0px 0px;"></div>
			                        <div class="dropcaps_2">文</div>
			                       	<p>它是科技工作者辛勤劳动的结晶，是人类重要的精神财富和物质财富;是一种具有特殊意义的生产力，也是衡量科学研究任务完成与否，质量优劣，以及科研人员贡献大小的重要标志。是国家的财富、智力的资源。科研成果应符合以下三方面的条件:(1)科研成果应具有创造性、先进性，创造性是指前人所没有或国内外所没有的.理论上有新的创见，技术上有新的提高。先进性应该在成果的技术价值和技术水平上有所提高;(2)科研成果必须具有社会价值(科学价值初经济价值)，并得到社会的公认。既要有实用性，又要符合科学规律，具备实施条件，满足社会要求，经济价值高。(3)科研成果必需经过技术鉴定或评审。鉴定或评审应实行同行专家评议。认为合格，才能算作成果</p>
			                        
			                        <div class="line_2" style="margin:3px 0px 0px;"></div>
		                        </div>
                            </div>
                            </div>
                       	</div>
                        <br>
                        <div class="block_staff">
                        	<div class="title">
                            	<p><span class="left">&nbsp;</span>特色研究<span class="right">&nbsp;</span></p>
                            </div>
                            <div class="text">
                                <div class="text">
                                <!-- <h5>特色研究</h5> -->
                        
		                        <div class="block_accordeon_type_1">
		                           	<div class="dropcaps_4">文</div>
			                        <p>具体去介绍关于学院的最新研究特色领域或者项目的介绍与说明</p>
			                        
			                        <div class="line_2" style="margin:3px 0px 0px;"></div>
			                        <div class="dropcaps_2">文</div>
			                        <p>特色研究的展示与说明</p>
			                        
			                        <div class="line_2" style="margin:3px 0px 0px;"></div>
		                        </div>
                            </div>
                            </div>
                       	</div>
                       	
                       	<div class="block_staff">
                        	<div class="title">
                            	<p><span class="left">&nbsp;</span>公开活动<span class="right">&nbsp;</span></p>
                            </div>
                            <div class="text">
                                <div class="text">
                                <!-- <h5>公开活动</h5> -->
                        
		                        <div class="block_accordeon_type_1">
		                           	<div class="dropcaps_4">文</div>
			                        <p>公开关于一些学校或者学院的活动</p>
			                        
			                        <div class="line_2" style="margin:3px 0px 0px;"></div>
			                        <div class="dropcaps_2">文</div>
			                        <p>以及学院或者学校的活动详情</p>
			                        
			                        <div class="line_2" style="margin:3px 0px 0px;"></div>
		                        </div>
                            </div>
                            </div>
                       	</div>
                       	<br>
                       	<div class="block_staff">
                        	<div class="title">
                            	<p><span class="left">&nbsp;</span>联系我们<span class="right">&nbsp;</span></p>
                            </div>
                            <h5>联系我们</h5>
                        
	                        <div class="block_accordeon_type_2">
	                            <div class="button_outer first"><div class="button_inner">联系人</div><div class="arrow"></div></div><!-- accordeon trigger -->
	                            <div class="accordeon_content">
	                                <!-- accordeon content goes here -->
	                                <p>朱小栋</p>
	                            </div>
	                            
	                            <div class="button_outer"><div class="button_inner">电话</div><div class="arrow"></div></div><!-- accordeon trigger -->
	                            <div class="accordeon_content">
	                                <!-- accordeon content goes here -->
	                                <p>1583300648</p>
	                            </div>
	                            
	                            <div class="button_outer"><div class="button_inner">邮箱</div><div class="arrow"></div></div><!-- accordeon trigger -->
	                            <div class="accordeon_content">
	                                <!-- accordeon content goes here -->
	                                <p>zhuxiaodong@xinlang.com</p>
	                            </div>
	                            
	                            <div class="button_outer"><div class="button_inner">职位</div><div class="arrow"></div></div><!-- accordeon trigger -->
	                            <div class="accordeon_content">
	                                <!-- accordeon content goes here -->
	                                <p>教授</p>
	                            </div>
	                            
	                            <script type="text/javascript">
	                                $('.block_accordeon_type_2').tabs('.block_accordeon_type_2 div.accordeon_content', {
	                                    tabs : '.button_outer',
	                                    effect : 'slide',
	                                    currentClose: false,
	                                    initialIndex : 0
	                                });
	                            </script>
	                        </div>
                       	</div>
                       	<br>
                        
                        <div class="block_staff">
                        	<div class="title">
                            	<p><span class="left">&nbsp;</span>关于我们<span class="right">&nbsp;</span></p>
                            </div>
                            <div class="text">
                                <div class="text">
                                <h5>关于我们</h5>
                        
		                        <div class="block_accordeon_type_1">
		                           	<div class="dropcaps_4">文</div>
			                        <p> 主要对整个网站的架构和功能进行介绍</p>
			                        
			                        <div class="line_2" style="margin:3px 0px 0px;"></div>
			                        <div class="dropcaps_2">文</div>
			                        <p>以及对整个学校或者学院进行介绍</p>
			                        
			                        <div class="line_2" style="margin:3px 0px 0px;"></div>
		                        </div>
                            </div>
                            </div>
                       	</div>
                        <br>
                        
                       	<div class="block_staff">
                        	<div class="title">
                            	<p><span class="left">&nbsp;</span>用户注册协议<span class="right">&nbsp;</span></p>
                            </div>
                            
                            <h5>用户注册协议</h5>
                        
                        	<div class="block_accordeon_type_1">
                            <div class="button_outer first"><div class="button_inner">一、服务条款的确认和接纳</div></div><!-- accordeon trigger -->
                            <div class="accordeon_content">
                                <!-- accordeon content goes here -->
                                <p>本服务条款的效力范围及于界面网络的一切产品和服务，用户在享受界面网络的任何单项服务时，应当受本服务条款的约束。用户通过进入注册程序并勾选"我已阅读并同意《界面网络用户注册协议》"，即表示用户与界面网络已达成协议，自愿接受本服务条款的所有内容。</p>
                            </div>
                            
                            <div class="button_outer"><div class="button_inner">二、服务说明</div></div><!-- accordeon trigger -->
                            <div class="accordeon_content">
                                <!-- accordeon content goes here -->
                                <p>界面网络运用自己的操作系统通过国际互联网络为用户提供各项服务。

（一）用户必须：

1、提供设备，如个人电脑、手机或其他上网设备。

2、个人上网和支付与此服务有关的费用。

（二）根据相关法律、法规规定以及考虑到界面网络服务的重要性，用户同意：

1、在注册界面网络时提交个人有效身份信息进行实名认证；

2、 提供完整、真实、准确、最新的个人或机构资料，在帐号头像、昵称及注册信息中不得出现违法违规信息，包括但不限于下列信息：

(a) 冒用国家名称、中央国家机关名称和地方各级党政机关名称的；

(b) 冒用党和国家领导人或其他公众人物姓名、头衔等信息的；

(c) 冒用社会公共机构名称、社会名人姓名和媒体名称的；

(d) 冒用外国国家名称、国际组织名称、境外政要姓名、境外媒体名称的；

同时，界面网络保留对于用户昵称的审核权。如界面网络认为用户昵称出现有悖于社会公德、违反公序良俗、损害社会及他人利益的词语，界面网络有权对该用户昵称予以修改、标注或者禁止使用。

3、不断更新注册资料，符合及时、详尽准确的要求。所有原始键入的资料将引用为注册资料。

4、一旦成为界面网络的注册用户，界面网络将通过电子邮件或短信不定期地向用户提供新闻、财经及新产品方面的信息和服务，用户将同意接受此类商业性电子信息。

用户同意，其提供的真实、准确、合法的界面网络帐号注册资料是作为认定用户与其界面网络帐号的关联性以及用户身份的唯一证据。

（三）用户可授权界面网络向第三方透露其注册资料，否则界面网络不能公开用户的姓名、住址、电子邮箱、帐号等信息。除非：

1、用户要求界面网络或授权某人通过电子邮件服务透露这些信息。

2、相应的法律、法规要求及程序服务需要界面网络提供用户的个人资料。

（四）如果用户提供的资料不准确，不真实，不合法有效，界面网络保留结束用户使用界面网络各项服务的权利。用户在享用界面网络各项服务的同时，同意接受界面网络提供的各类信息服务。</p>
                            </div>
                            
                            <div class="button_outer"><div class="button_inner">三、服务条款的修改</div></div><!-- accordeon trigger -->
                            <div class="accordeon_content">
                                <!-- accordeon content goes here -->
                                <p>界面网络有权在必要时修改本服务条款以及各单项服务的相关条款。界面网络服务条款一旦发生变动，将会在重要页面上提示修改内容。如果不同意所改动的内容，用户可以主动取消获得的网络服务。如果用户继续享用网络服务，则视为接受服务条款的变动</p>
                            </div>
                            
                            <div class="button_outer"><div class="button_inner">四、服务修订</div></div><!-- accordeon trigger -->
                            <div class="accordeon_content">
                                <!-- accordeon content goes here -->
                                <p>界面网络保留随时修改或中断服务而不需通知用户的权利。用户接受界面网络行使修改或中断服务的权利，界面网络不需对用户或第三方负责。</p>
                            </div>
                            
                            <div class="button_outer"><div class="button_inner">五、用户隐私制度</div></div><!-- accordeon trigger -->
                            <div class="accordeon_content">
                                <!-- accordeon content goes here -->
                                <p>尊重用户个人隐私是界面网络的一项基本政策。所以，作为对以上第二条中个人注册资料分析的补充，界面网络一定不会公开、修改或透露用户的注册资料及保存在界面网络各项服务中的非公开内容，除非界面网络在诚信的基础上认为透露这些信息在以下几种情况是必要的：

（一）遵守有关法律规定，包括在国家有关机关查询时，提供用户在界面网络的网页上发布的信息内容及其发布时间、互联网地址或者域名。

（二）保持维护界面网络的知识产权和其他重要权利。

（三）在紧急情况下竭力维护用户个人和社会大众的隐私安全。

（四）根据本条款相关规定或者界面网络认为必要的其他情况下。</p>
                            </div>
                            
                            <div class="button_outer"><div class="button_inner">六、用户的帐号、密码和安全性</div></div><!-- accordeon trigger -->
                            <div class="accordeon_content">
                                <!-- accordeon content goes here -->
                                <p>您一旦注册成功成为用户，您将得到一个密码和帐号。如果您未保管好自己的帐号和密码而对您、界面网络或第三方造成的损害，您将负全部责任。另外，每个用户都要对其帐户中的所有活动和事件负全责。您可随时改变您的密码，也可以结束旧的帐户重开一个新帐户。用户同意，若发现任何非法使用用户帐号或安全漏洞的情况，立即通告界面网络。</p>
                            </div>
                            
                            <div class="button_outer"><div class="button_inner">七、拒绝提供担保和免责声明</div></div><!-- accordeon trigger -->
                            <div class="accordeon_content">
                                <!-- accordeon content goes here -->
                                <p>用户明确同意使用界面网络服务的风险由用户个人承担。界面网络明确表示不提供任何类型的担保，不论是明确的或隐含的。界面网络不担保服务一定能满足用户的要求，也不担保服务不会受中断，对服务的及时性、安全性、真实性、出错发生都不作担保。界面网络拒绝提供任何担保，包括信息能否准确、及时、顺利地传送。用户理解并接受下载或通过界面网络产品服务取得的任何信息资料取决于用户自己，并由其承担系统受损、资料丢失以及其它任何风险。界面网络对在服务网上得到的任何商品购物服务、交易进程、招聘信息，都不作担保。用户不会从界面网络收到口头或书面的意见或信息，界面网络也不会在这里作明确担保。</p>
                            </div>
                            
                            <div class="button_outer"><div class="button_inner">八、有限责任</div></div><!-- accordeon trigger -->
                            <div class="accordeon_content">
                                <!-- accordeon content goes here -->
                                <p>界面网络对直接、间接、偶然、特殊及继起的损害不负责任，这些损害来自：不正当使用产品服务，在网上购买商品或类似服务，在网上进行交易，非法使用服务或用户传送的信息有所变动。这些损害会导致界面网络形象受损，所以界面网络早已提出这种损害的可能性。此外，为了网站的正常运行，界面网络需要定期或不定期地对网站进行停机维护，因此类情况而造成的正常服务中断，请您予以理解。界面网络将尽力避免服务中断或将中断时间限制在最短时间内。如因不可抗力或其他无法控制的原因，使界面网络在线购买系统崩溃或无法正常使用，导致您在界面网络购物无法完成或丢失有关的信息、记录等，界面网络不承担责任。</p>
                            </div>
                            
                            <div class="button_outer"><div class="button_inner">九、禁止服务的商业化</div></div><!-- accordeon trigger -->
                            <div class="accordeon_content">
                                <!-- accordeon content goes here -->
                                <p>用户使用界面网络各项服务的权利是个人的。用户只能是一个单独的个体而不能是一个公司或实体的商业性组织。用户承诺不经界面网络同意，不能利用界面网络各项服务进行销售或其他商业用途。</p>
                            </div>
                            
                            <div class="button_outer"><div class="button_inner">十、用户管理</div></div><!-- accordeon trigger -->
                            <div class="accordeon_content">
                                <!-- accordeon content goes here -->
                                <p>用户单独承担发布内容的责任。用户对服务的使用是根据所有适用于服务的国际法律、国家法律法规和地方法律法规。

（一）用户承诺：

1、在界面网络的网页上发布信息或者利用界面网络的服务时必须符合中国有关法律法规，不得在界面网络的网页上或者利用界面网络的服务制作、复制、发布、传播以下信息：

(a) 违反宪法确定的基本原则的；

(b) 危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家统一的；

(c) 损害国家荣誉和利益的；

(d) 煽动民族仇恨、民族歧视，破坏民族团结的；

(e) 破坏国家宗教政策，宣扬邪教和封建迷信的；

(f) 散布谣言，扰乱社会秩序，破坏社会稳定的；

(g) 散布淫秽、色情、赌博、暴力、恐怖或者教唆犯罪的；

(h) 侮辱或者诽谤他人，侵害他人合法权益的；

(i) 煽动非法集会、结社、游行、示威、聚众扰乱社会秩序的；

(j) 以非法民间组织名义活动的；

(k) 含有法律、行政法规禁止的其他内容的。

2、在界面网络的网页上发布信息或者利用界面网络的服务时还必须符合其他有关国家和地区的法律规定以及国际法的有关规定。不得在界面网络的网页上或者利用界面网络的服务采取以下行为：

(a) 未经允许，进入计算机信息网络或者使用计算机信息网络资源的；

(b) 未经允许，对计算机信息网络功能进行删除、修改或者增加的；

(c) 未经允许，对进入计算机信息网络中存储、处理或者传输的数据和应用程序进行删除、修改或者增加的；

(d) 故意制作、传播计算机病毒等破坏性程序的；

(e) 其他危害计算机信息网络安全的行为。

3、不以任何方式干扰界面网络的服务。

4、遵守界面网络的所有其他规定和程序。

（二）用户须对自己在使用界面网络服务过程中的行为承担法律责任。用户承担法律责任的形式包括但不限于：对受到侵害者进行赔偿，以及在界面网络首先承担了因用户行为导致的行政处罚或侵权损害赔偿责任后，用户应给予界面网络等额的赔偿。用户理解，如果界面网络发现其传输的信息明显属于本条第(一)款所列内容之一，依据中国法律，界面网络有义务立即停止传输，保存有关记录，向国家有关机关报告，并且删除含有该内容的地址、目录或关闭服务器。

（三）用户使用界面网络电子公告服务，包括电子布告牌、电子白板、电子论坛、网络聊天室和留言板等以交互形式为上网用户提供信息发布条件的行为，也须遵守本条的规定以及界面网络将专门发布的电子公告服务规则，上段中描述的法律后果和法律责任同样适用于电子公告服务的用户。若用户的行为不符合以上提到的服务条款，界面网络将作出独立判断立即取消用户服务帐号。</p>
                            </div>
                            <div class="button_outer"><div class="button_inner">十一、保障</div></div><!-- accordeon trigger -->
                            <div class="accordeon_content">
                                <!-- accordeon content goes here -->
                                <p>用户同意保障和维护界面网络全体成员的利益，负责支付由用户使用超出服务范围引起的律师费用，违反服务条款的损害补偿费用，其它人使用用户的电脑、帐号而产生的费用。用户或者使用用户帐号的其他人在使用界面网络产品过程中侵犯第三方知识产权及其他权利而导致被侵权人索赔的，由用户承担责任。</p>
                            </div>
                            
                            <div class="button_outer"><div class="button_inner">十二、结束服务</div></div><!-- accordeon trigger -->
                            <div class="accordeon_content">
                                <!-- accordeon content goes here -->
                                <p>用户或界面网络可随时根据实际情况中断服务。界面网络有权单方不经通知终止向用户提供某一项或多项服务；用户有权单方不经通知终止接受界面网络的服务。结束用户服务后，用户使用界面网络服务的权利立即终止。从那时起，界面网络不再对用户承担任何义务。</p>
                            </div>
                            <div class="button_outer"><div class="button_inner">十三、通知</div></div><!-- accordeon trigger -->
                            <div class="accordeon_content">
                                <!-- accordeon content goes here -->
                                <p>所有发给用户的通知都可通过电子邮件、常规的信件或在网站显著位置公告的方式进行传送。界面网络将通过上述方法之一将消息传递给用户，告知他们服务条款的修改、服务变更、或其它重要事情。</p>
                            </div>
                            
                            <div class="button_outer"><div class="button_inner">十四、用户宣传信息</div></div><!-- accordeon trigger -->
                            <div class="accordeon_content">
                                <!-- accordeon content goes here -->
                                <p>用户在他们发表的信息中加入宣传资料或参与广告策划，在界面网络的服务上展示他们的产品，任何这类促销方法，包括运输货物、付款、服务、商业条件、担保及与广告有关的描述都只是用户单方宣传行为。界面网络不承担任何责任，也没有义务为这类宣传信息或宣传行为负任何责任。</p>
                            </div>
                            <div class="button_outer"><div class="button_inner">十五、内容的所有权</div></div><!-- accordeon trigger -->
                            <div class="accordeon_content">
                                <!-- accordeon content goes here -->
                                <p>本网站内容的定义包括：文字、软件、声音、相片、视频、图表；在广告中的全部内容。所有这些内容均属于界面网络，并受版权、商标、标签和其它财产所有权法律的保护。所以，用户只能在界面网络和广告商授权下才能使用这些内容，而不能擅自复制、再造这些内容、或创造与内容有关的派生产品。

第三方若出于非商业目的，将界面网络发表的内容转载到界面网络之外的地方，应注明原作者和原文链接。

若需要对作品用于商业目的，转载授权等相关事宜，请与我们联系。</p>
                            </div>
                            <div class="button_outer"><div class="button_inner">十六、用户所创造内容的责任声明</div></div><!-- accordeon trigger -->
                            <div class="accordeon_content">
                                <!-- accordeon content goes here -->
                                <p>注册用户或非注册用户在界面网络任何频道或社区发贴、回贴、发表评论、提问、回答及其它在本网站发表的内容（包含但不限于文字、图片、PDF），应当遵循文责自负的原则。若涉及侵权事宜，权利人可进行投诉，并提供相关资料，我们将在核实后进行处理。

注册用户或非注册用户同意，其发布上传到界面网络的任何内容，界面网络获得其全世界范围内免费的、永久性的、不可撤销的、非独家的、完全许可的权利和许可。界面网络有权将内容用于其他合法用途，包括但不限于部分或者全部地复制、修改、改编、翻译、组装、分拆、推广、分发、广播、表演、演绎、出版。

撰稿人的相关权利义务，见《撰稿人须知》相关条款。</p>
                            </div>
                            <div class="button_outer"><div class="button_inner">十七、法律</div></div><!-- accordeon trigger -->
                            <div class="accordeon_content">
                                <!-- accordeon content goes here -->
                                <p>本条款适用中华人民共和国的法律，并且排除一切冲突法规定的适用。如出现纠纷，用户和界面网络一致同意将纠纷交由界面网络所在地法院管辖</p>
                            </div>
                            <div class="button_outer"><div class="button_inner">十八、界面网络所含服务的信息储存和安全及信息发布的限制</div></div><!-- accordeon trigger -->
                            <div class="accordeon_content">
                                <!-- accordeon content goes here -->
                                <p>界面网络上所有服务将尽力维护其安全性及方便性，但对服务中出现的信息（包括但不限于用户发布的信息）删除或储存失败不承担任何责任。另外我们保留判定用户的行为是否符合本服务条款的要求的权利，如果用户违背了本服务条款的规定，界面网络有权中断对其界面网络注册帐号的服务。</p>
                            </div>
                            
                            <script type="text/javascript">
                                $('.block_accordeon_type_1').tabs('.block_accordeon_type_1 div.accordeon_content', {
                                    tabs : '.button_outer',
                                    effect : 'slide',
                                    currentClose: false,
                                    initialIndex : 0
                                });
                            </script>
                        </div>
                       	</div>
                       	<br>
                       	<div class="block_staff">
                        	<div class="title">
                            	<p><span class="left">&nbsp;</span>网站导航<span class="right">&nbsp;</span></p>
                            </div>
                            <div class="text">
                                <h5>网页导航</h5>
                        
		                        <!-- <a href="index.jsp" class="general_button w_icon tag"><span>首页</span></a> -->
		                        <a href="teachers_team.jsp" class="general_button w_icon tag"><span>师资团队</span></a>
		                        <a href="development_of_ecommerce_database.jsp" class="general_button w_icon tag"><span>电商发展数据库</span></a>
		                        <a href="business_competition.jsp" class="general_button w_icon tag"><span>电商竞赛</span></a>
		                        <a href="public_papers.jsp" class="general_button w_icon tag"><span>公开论文</span></a>
		                        <a href="undertake_aspect_problem.jsp" class="general_button w_icon tag"><span>承接纵横问题</span></a>
		                        <a href="bigdata_ecommerce.jsp" class="general_button w_icon tag"><span>大数据电商</span></a>
		                        <!-- <a href="index.jsp" class="general_button w_icon tag"><span>联系我们</span></a> -->
		                       
		                        <!-- <div class="line_2" style="margin:22px 0px 0px;"></div> -->
                            </div>
                            
                       	</div>
                        <br>
                        <div class="line_4" style="margin:0px 0px 18px;"></div>
                        
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
										<img src="images/news_post.png" onload="getPostNews()" alt="" />
										<span></span>
									</a>
								</div>
                                        
								<div class="text">
									<p class="title"><a href="#" id="newsone">没有新闻</a></p>
									<div class="date"><p id="newsonedate">创建时间为空</p></div>
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
										<img src="images/news_post.png" alt="" />
										<span></span>
									</a>
								</div>
                                        
								<div class="text">
									<p class="title"><a href="#" id="newstwo">没有新闻</a></p>
									<div class="date"><p id="newstwodate">创建时间为空</p></div>
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
									<p class="title"><a href="#" id="newsthree">没有新闻</a></p>
									<div class="date"><p id="newsthreedate">创建时间为空</p></div>
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
        	<a href="#" class="close">关闭</a>
            
            <div class="content">
            	<div class="title"><p>登录网站</p></div>
                
                <div class="form">
                	<form action="#" />
                    	<div class="column">
                        	<p class="label">用户名</p>
                            <div class="field"><input type="text" /></div>
                        </div>
                        
                        <div class="column">
                        	<p class="label">密码</p>
                            <div class="field"><input type="password" /></div>
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
                        
                        <div class="column button">
                            <a href="#" class="enter"><span>登录</span></a>
                        </div>
                        
                        <div class="clearboth"></div>
                    </form>
                </div>
                
                <div class="subtitle"><p>用户须知</p></div>
                
                <!-- <div class="fb_button"><a href="#"><img src="images/button_fb_login.png" alt="" /></a></div> -->
                <div class="text"><p>用户登录的时候，请填写用户名和密码，用户名和密码不允许为空,用户分为学生用户和教师用户</p></div>
            </div>
        </div>
    </div>
    <!-- POPUP END -->
</body>

</html>
