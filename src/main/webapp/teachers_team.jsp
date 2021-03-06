<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>

<head>
<title>上海理工大学电子商务发展研究院-师资团队</title>
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
<!-- <script type="text/javascript" src="layout/plugins/flexslider/jquery.flexslider-min.js"></script> -->
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
		 var url = location.pathname;
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
							  	<li class="current_page_item" data-content="business">
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
                            	<li><a href="teachers_team.jsp">师资团队</a></li>
                                <!-- <li>师资团队</li> -->
                            </ul>
                        </div>
                        <div class="separator" style="height:30px;"></div>
                        
                        <h2>师资团队</h2>
                        
                        <p class="general_subtitle">整体建设目标：通过建设，进一步优化教师队伍的年龄结构、学历结构和学缘结构，稳定骨干教师队伍，造就拔尖人才，培养若干名在国内外有重大影响的学术带头人，形成和聚集一批在国际、国内有相当知名度的学术创新团队，建成一支整体水平较高、充满活力的适应学校事业发展需要的师资队伍</p>
                        
                        <div class="line_4" style="margin:0px 0px 18px;"></div>
                        
                        <!-- <article class="block_topic_post_feature">
                        	<div class="f_pic"><a href="#" class="general_pic_hover scale"><img src="images/tearcher_team.png" alt="" /></a></div>
                            
                            <div class="content">
                            	<p class="title"><a href="#">CR929总设计师陈迎春做客我校《智慧中国》课堂</a></p>
                                
                                <div class="info">
                                	<div class="date"><p>11 July, 2012</p></div>
                                    
                                    <div class="r_part">
                                    	<div class="category"><p><a href="#">师资团队</a></p></div>
                                        <a href="#" class="views">220</a>
                                    </div>
                                </div>
                                    
                                <p class="text">作为学校喜迎十九大召开的重要活动之一，10月13日，学校“中国系列”课程《智慧中国》特邀CR929总设计师陈迎春教授来校做主题讲座。校党委副书记、副校长顾春华主持报告会。
   陈迎春以《中国商用飞机的发展现状及未来前景》为题，围绕商用飞机的地位和作用、世界商用飞机的现状、中国商用飞机的发展、我国商飞型号的研制进展等，向与会学生理据翔实地述说了我国大飞机事业所承载的民族期盼，生动地展示了我国大飞机事业波澜壮阔的发展历程，让理工学子们深刻感受祖国改革发展的时代脉搏，为中国现代化建设伟大成就“点赞”。</p>
                            </div>
                            
                            <div class="clearboth"></div>
                        </article> -->
                        
                        <div class="line_2" style="margin:21px 0px 21px;"></div>
                        
                        <div class="block_topic_news">
                        	<article class="block_topic_post">
                            	<p class="title"><a href="#">上海理工大学博士研究生导师：杨坚争简介</a></p>
                                <div class="f_pic"><a href="about_teacher.jsp?tearcherName=<%="杨坚争" %>" class="general_pic_hover scale"><img src="images/pic_business_1.jpg" alt="" /></a></div>
                                <p class="text">归属学科专业：管理科学与工程 <br>
杨坚争，江苏省无锡市人</p>
                                <div class="info">
                                	<div class="date"><p>1952年生</p></div>
                                    
                                    <div class="r_part">
                                    	<div class="category"><p><a href="#">博士研究生导师</a></p></div>
                                        <a href="#" class="views">男</a>
                                    </div>
                                </div>
                            </article>
                            
                            <article class="block_topic_post">
                            	<p class="title"><a href="#">上海理工大学博士生导师：张永庆简介</a></p>
                                <div class="f_pic"><a href="about_teacher.jsp?tearcherName=<%="张永庆" %>" class="general_pic_hover scale"><img src="images/pic_business_2.jpg" alt="" /></a></div>
                                <p class="text">归属学科专业：管理科学与工程<br>张永庆，黑龙江省海伦市人</p>
                                <div class="info">
                                	<div class="date"><p>1962年10月生</p></div>
                                    
                                    <div class="r_part">
                                    	<div class="category"><p><a href="#">博士生导师</a></p></div>
                                        <a href="#" class="views">男</a>
                                    </div>
                                </div>
                            </article>
                            
                            <article class="block_topic_post">
                            	<p class="title"><a href="#">上海理工大学博士生导师：雷良海简介</a></p>
                                <div class="f_pic"><a href="about_teacher.jsp?tearcherName=<%="雷良海" %>" class="general_pic_hover scale"><img src="images/pic_business_3.jpg" alt="" />                                </a></div>
                                <p class="text">归属学科专业：管理科学与工程 <br>
雷良海，湖北省潜江市人。</p>
                                <div class="info">
                                	<div class="date"><p>1962年2月生</p></div>
                                    
                                    <div class="r_part">
                                    	<div class="category"><p><a href="#">博士生导师</a></p></div>
                                        <a href="#" class="views">男</a>
                                    </div>
                                </div>
                            </article>
                            
                            <article class="block_topic_post">
                            	<p class="title"><a href="#">上海理工大学博士生导师：严广乐简介</a></p>
                                <div class="f_pic"><a href="about_teacher.jsp?tearcherName=<%="严广乐" %>" class="general_pic_hover scale"><img src="images/pic_business_4.jpg" alt="" /></a></div>
                                <p class="text">归属学科专业：管理科学与工程 <br>
                                严广乐，广东南海人。
                                </p>
                                <div class="info">
                                	<div class="date"><p>1957年2月生</p></div>
                                    
                                    <div class="r_part">
                                    	<div class="category"><p><a href="#">管理学博士、教授</a></p></div>
                                        <a href="#" class="views">男</a>
                                    </div>
                                </div>
                            </article>
                            
                            <article class="block_topic_post">
                            	<p class="title"><a href="#">上海理工大学硕士生导师：樊重俊简介</a></p>
                                <div class="f_pic"><a href="about_teacher.jsp?tearcherName=<%="樊重俊" %>" class="general_pic_hover scale"><img src="images/pic_business_4.jpg" alt="" /></a></div>
                                <p class="text">归属学科专业：管理科学与工程 <br>
 上海市人
                                </p>
                                <div class="info">
                                	<div class="date"><p>1962年7月生</p></div>
                                    
                                    <div class="r_part">
                                    	<div class="category"><p><a href="#">硕士生导师</a></p></div>
                                        <a href="#" class="views">男</a>
                                    </div>
                                </div>
                            </article>
                            
                            <article class="block_topic_post">
                            	<p class="title"><a href="#">上海理工大学博士生导师：刘芹简介</a></p>
                                <div class="f_pic"><a href="about_teacher.jsp?tearcherName=<%="刘芹" %>" class="general_pic_hover scale"><img src="images/pic_business_4.jpg" alt="" /></a></div>
                                <p class="text">归属学科专业：管理科学与工程 <br>
                                上海市人
                                </p>
                                <div class="info">
                                	<div class="date"><p>11 July, 2012</p></div>
                                    
                                    <div class="r_part">
                                    	<div class="category"><p><a href="#">博士生导师</a></p></div>
                                        <a href="#" class="views">女</a>
                                    </div>
                                </div>
                            </article>
                            
                            <article class="block_topic_post">
                            	<p class="title"><a href="#">上海理工大学硕士生导师：朱小栋简介</a></p>
                                <div class="f_pic"><a href="about_teacher.jsp?tearcherName=<%="朱小栋" %>" class="general_pic_hover scale"><img src="images/pic_business_4.jpg" alt="" /></a></div>
                                <p class="text">归属学科专业：管理科学与工程<br>
                                	安徽太湖人
                                </p>
                                <div class="info">
                                	<div class="date"><p>1981年生</p></div>
                                    
                                    <div class="r_part">
                                    	<div class="category"><p><a href="#">硕士生导师</a></p></div>
                                        <a href="#" class="views">男</a>
                                    </div>
                                </div>
                            </article>
                            
                            <article class="block_topic_post">
                            	<p class="title"><a href="#">上海理工大学博士生导师：陈帅简介</a></p>
                                <div class="f_pic"><a href="about_teacher.jsp?tearcherName=<%="陈帅"%>" class="general_pic_hover scale"><img src="images/pic_business_4.jpg" alt="" /></a></div>
                                <p class="text">归属学科专业：管理科学与工程<br>
                                上海市人
                                </p>
                                <div class="info">
                                	<div class="date"><p>1965年生</p></div>
                                    
                                    <div class="r_part">
                                    	<div class="category"><p><a href="#">博士生导师</a></p></div>
                                        <a href="#" class="views">男</a>
                                    </div>
                                </div>
                            </article>
                            
                            <article class="block_topic_post">
                            	<p class="title"><a href="#">上海理工大学博士生导师：孙英隽简介</a></p>
                                <div class="f_pic"><a href="about_teacher.jsp?tearcherName=<%="孙英隽"%>" class="general_pic_hover scale"><img src="images/pic_business_4.jpg" alt="" /></a></div>
                                <p class="text">归属学科专业：管理科学与工程<br>
                                上海市人
                                </p>
                                <div class="info">
                                	<div class="date"><p>1980年生</p></div>
                                    
                                    <div class="r_part">
                                    	<div class="category"><p><a href="#">博士生导师</a></p></div>
                                        <a href="#" class="views">女</a>
                                    </div>
                                </div>
                            </article>
                            
                        </div>
                        
                        <div class="line_2" style="margin:25px 0px 25px;"></div>
                        
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
									<p class="title"><a href="#" id="newsone">没有新闻推送</a></p>
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
									<p class="title"><a href="#" id="newstwo">没有推送新闻</a></p>
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
									<p class="title"><a href="#" id="newsthree">没有推送新闻</a></p>
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
                                    <!-- <li><a href="site_navigation.jsp">网站地图</a></li> -->
                                    <li><a href="confidentiality_agreement.jsp">用户注册协议</a></li>
                                    <li><a href="contact.jsp">联系我们</a></li>
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
                <div class="text"><p style="position: center;">用户登录的时候，请填写用户名和密码，用户名和密码不允许为空,用户分为学生用户和教师用户</p></div>
            </div>
        </div>
    </div>
    <!-- POPUP END -->
</body>
</html>