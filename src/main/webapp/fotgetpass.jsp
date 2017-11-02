<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>

<head>
<title>上海理工大学电子商务发展研究院-忘记密码</title>

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
                                	<li class="current"><a href="index.html">主页</a></li>
                                    <li><a href="#">站点地图</a></li>
                                    <li><a href="typography.html">排版</a></li>
                                    <li><a href="contact.html">联系我们</a></li>
                                </ul>
                            </div>
                        </div>
                        
                        <div class="fr">
                        	<div class="block_top_menu">
                            	<ul>
                                	<li class="current"><a href="#login" class="open_popup">登录</a></li>
                                    <li><a href="registration.html">注册</a></li>
                                    <li><a href="#">订阅</a></li>
                                </ul>
                            </div>
                            
                            <div class="block_social_top">
                            	<ul>
                                	<li><a href="#" class="fb">Facebook</a></li>
                                    <li><a href="#" class="tw">Twitter</a></li>
                                    <li><a href="#" class="rss">RSS</a></li>
                                </ul>
                            </div>
                        </div>
                        
                    	<div class="clearboth"></div>
                    </div>
                </section>
                
            	<section class="bottom">
                	<div class="inner">
                    	<div id="logo_top"><a href="index.html"><img src="images/logo_top_usst.png" style="width: 48px;height: 48px" alt="BusinessNews" title="BusinessNews" /></a></div>
                        
                        <div class="block_today_date">
                        	<div class="num"><p id="num_top" /></div>
                            <div class="other">
                            	<p class="month_year"><span id="month_top"></span>, <span id="year_top"></span></p>
                                <p id="day_top" class="day" />
                            </div>
                        </div>
                        
                        <div class="fr">
                        	<div class="block_languages">
                            	<div class="text"><p>Language:</p></div>
                                <ul>
                                	<li class="current"><a href="#" class="eng">English</a></li>
                                    <li><a href="#" class="french">中文</a></li>
                                    <li><a href="#" class="ger">German</a></li>
                                </ul>
                                
                                <div class="clearboth"></div>
                            </div>
                            
                            <div class="block_search_top">
                            	<form action="#" />
                                	<div class="field"><input type="text" class="w_def_text" title="输入你的邮箱地址" /></div>
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
								<li><a href="index.html">主页</a>
                                	
                                    <ul>
                                    	<li><a href="index.html">主页样式一</a></li>
                                        <li><a href="home_style_2.html">主页样式二</a></li>
                                    </ul>
                                </li>
								<li class="big_dropdown" data-content="business"><a href="business.html">商业</a></li>
								<li class="big_dropdown" data-content="technology"><a href="technology.html">科技</a></li>
								<li class="big_dropdown" data-content="education"><a href="education.html">教育</a></li>
								<li><a href="media.html">娱乐</a>
                                	
                                    <ul>
                                    	<li><a href="media.html">娱乐</a></li>
                                        <li><a href="media_item.html">娱乐详情</a></li>
                                    </ul>
                                </li>
								<li><a href="#">关于</a>
                                	
                                    <ul>
                                    	<li><a href="about.html">关于我们</a></li>
                                        <li><a href="about_author.html">关于作者</a></li>
                                        <li><a href="contact.html">联系我们</a></li>
                                        <li><a href="registration.html">注册</a></li>
                                        <li><a href="main_news.html">重要新闻</a></li>
                                        <li><a href="news_post_w_slider.html">滑动新闻发布</a></li>
                                        <li><a href="news_post_w_video.html">视频新闻发布</a></li>
                                    </ul>
                                </li>
								<li><a href="blog.html">博客</a>
                                	
                                    <ul>
                                    	<li><a href="blog.html">博客样式一</a></li>
                                        <li><a href="blog_style_2.html">博客样式二</a></li>
                                        <li><a href="blog_post.html">博客推送</a></li>
                                        <li><a href="blog_post_w_slider.html">滑动发布</a></li>
                                        <li><a href="blog_post_w_video.html">视频发布</a></li>
                                    </ul>
                                </li>
								<li><a href="typography.html">简介</a>
                                	
                                    <ul>
                                    	<li><a href="accordion.html">Accordeon</a></li>
                                        <li><a href="blockquote.html">Blockquote</a></li>
                                        <li><a href="table.html">Table</a></li>
                                        <li><a href="columns.html">Columns</a></li>
                                        <li><a href="pricing_table.html">Pricing Table</a></li>
                                        <li><a href="testimonials.html">Testimonials</a></li>
                                        <li><a href="boxes.html">Info Boxes</a></li>
                                        <li><a href="dropcaps.html">Dropcaps</a></li>
                                        <li><a href="tabs.html">Tabs</a></li>
                                        <li><a href="lists.html">List Slyle</a></li>
                                        <li><a href="buttons.html">Buttons</a></li>
                                        <li><a href="video.html">Video</a></li>
                                        <li><a href="typography.html">Typography</a></li>
                                    </ul>
								</li>
						  </ul>
						</nav>
                    </div>
                </section>
                
                <section class="section_big_dropdown">
                	<div class="inner">
                    	<div class="block_big_dropdown" data-menu="business">
                        	<div class="content">
                            	<div class="image">
                                	<a href="blog_post.html" class="pic"><img src="images/pic_big_drop_3.jpg" alt="" /></a>
                                    <p><a href="blog_post.html">Embarrassing hidden in the middleany thing</a></p>
                                </div>
                                <div class="line"></div>
                                
                                <div class="image">
                                	<a href="blog_post.html" class="pic"><img src="images/pic_big_drop_4.jpg" alt="" /></a>
                                    <p><a href="blog_post.html">Content of a page when looking.</a></p>
                                </div>
                                <div class="line"></div>
                                
                                <div class="popular_posts">
                                	<div class="title"><p>Popular Posts</p></div>
                                    <ul>
                                    	<li><a href="blog_post.html"><span>11 July, 2012</span>Established fact that a reader.</a></li>
                                        <li><a href="blog_post_w_slider.html"><span>08 July, 2012</span>Editors now use as their default model text.</a></li>
                                        <li><a href="blog_post_w_video.html"><span>05 July, 2012</span>Embarrassing hidden in the middle.</a></li>
                                        <li><a href="blog_post.html"><span>01 July, 2012</span>Anything embarrassing hidden in the middl.</a></li>
                                    </ul>
                                </div>
                                <div class="line"></div>
                                
                                <div class="more">
                                	<div class="title"><p>More In Business</p></div>
                                    <ul>
                                    	<li><a href="#">Business</a></li>
                                        <li><a href="#">Money</a></li>
                                        <li><a href="#">Isnvestor Programs</a></li>
                                        <li><a href="#">Banks</a></li>
                                    </ul>
                                </div>
                                
                                <div class="clearboth"></div>
                            </div>
                        </div>
                        
                        <div class="block_big_dropdown" data-menu="technology">
                        	<div class="content">
                            	<div class="image">
                                	<a href="blog_post.html" class="pic"><img src="images/pic_big_drop_5.jpg" alt="" /></a>
                                    <p><a href="blog_post.html">Simply dummy text of the printing.</a></p>
                                </div>
                                <div class="line"></div>
                                
                                <div class="image">
                                	<a href="blog_post.html" class="pic"><img src="images/pic_big_drop_6.jpg" alt="" /></a>
                                    <p><a href="blog_post.html">Internet tend to repeat predefined chunks.</a></p>
                                </div>
                                <div class="line"></div>
                                
                                <div class="popular_posts">
                                	<div class="title"><p>Popular Posts</p></div>
                                    <ul>
                                    	<li><a href="blog_post.html"><span>11 July, 2012</span>Publishing packages and web page</a></li>
                                        <li><a href="blog_post_w_slider.html"><span>08 July, 2012</span>Generators on the Internet tend to repeat.</a></li>
                                        <li><a href="blog_post_w_video.html"><span>05 July, 2012</span>Anything embarrassing hidden in the middle.</a></li>
                                        <li><a href="blog_post.html"><span>01 July, 2012</span>Words which don't look even slightly.</a></li>
                                    </ul>
                                </div>
                                <div class="line"></div>
                                
                                <div class="more">
                                	<div class="title"><p>More In Tech</p></div>
                                    <ul>
                                    	<li><a href="#">Web Development</a></li>
                                        <li><a href="#">Programming</a></li>
                                        <li><a href="#">Techique</a></li>
                                        <li><a href="#">Cars</a></li>
                                    </ul>
                                </div>
                                
                                <div class="clearboth"></div>
                            </div>
                        </div>
                        
                    	<div class="block_big_dropdown" data-menu="education">
                        	<div class="content">
                            	<div class="image">
                                	<a href="blog_post.html" class="pic"><img src="images/pic_big_drop_1.jpg" alt="" /></a>
                                    <p><a href="blog_post.html">Many desktop packages and web page editors.</a></p>
                                </div>
                                <div class="line"></div>
                                
                                <div class="image">
                                	<a href="blog_post.html" class="pic"><img src="images/pic_big_drop_2.jpg" alt="" /></a>
                                    <p><a href="blog_post.html">There are many variations passages</a></p>
                                </div>
                                <div class="line"></div>
                                
                                <div class="popular_posts">
                                	<div class="title"><p>Popular Posts</p></div>
                                    <ul>
                                    	<li><a href="blog_post.html"><span>11 July, 2012</span>Many desktop publishing packages and web page</a></li>
                                        <li><a href="blog_post_w_slider.html"><span>08 July, 2012</span>Randomised words which don't look even.</a></li>
                                        <li><a href="blog_post_w_video.html"><span>05 July, 2012</span>Anything embarrassing hidden in the middle.</a></li>
                                        <li><a href="blog_post.html"><span>01 July, 2012</span>Established fact that a reader.</a></li>
                                    </ul>
                                </div>
                                <div class="line"></div>
                                
                                <div class="more">
                                	<div class="title"><p>More In Education</p></div>
                                    <ul>
                                    	<li><a href="#">High school</a></li>
                                        <li><a href="#">Univercity</a></li>
                                        <li><a href="#">College</a></li>
                                        <li><a href="#">Students</a></li>
                                    </ul>
                                </div>
                                
                                <div class="clearboth"></div>
                            </div>
                        </div>
                    </div>
              	</section>
                
                <section class="section_secondary_menu">
                	<div class="inner">
                    	<nav class="secondary_menu">
                        	<ul>
                            	<li><a href="main_news_europe.html">Europe</a></li>
                                <li><a href="main_news_usa.html">USA</a></li>
                                <li><a href="main_news_m_east.html">Middle East</a></li>
                                <li><a href="main_news_money.html">Money</a></li>
                                <li><a href="main_news_science.html">Science and IT</a></li>
                                <li><a href="main_news_culture.html">Culture</a></li>
                                <li><a href="main_news_top.html">Top News</a></li>
                          	</ul>
                        </nav>
                        
                        <div class="block_clock">
                        	<p>Time: <span id="time"></span></p>
                        </div>
                    </div>
                </section>
            </div>
        </header>
    	<!-- HEADER END -->
        
        <!-- CONTENT BEGIN -->
        <div id="content" class="">
        	<div class="inner">
            	<div class="general_content">
                	<div class="main_content">
                    	<div class="block_breadcrumbs">
                        	<div class="text"><p>所在位置:</p></div>
                            
                            <ul>
                            	<li><a href="index.html">主页</a></li>
                                <li>找回密码</li>
                            </ul>
                        </div>
                        <div class="separator" style="height:28px;"></div>
                        
                        <p class="general_title"><span>找回密码</span></p>
                        <div class="separator" style="height:39px;"></div>
                        
                        <div class="block_registration">
                        	<form action="#" class="w_validation" />
                            	<div class="col_1">
                                	<div class="label"><p>手机<span>*</span>:</p></div>
                                    <div class="field"><input type="text" class="req" /></div>
                                    <div class="clearboth"></div>
                                    <div class="separator" style="height:14px;"></div>
                                    
                                    <div class="label"><p>邮箱<span>*</span>:</p></div>
                                    <div class="field"><input type="text" class="req" /></div>
                                    <div class="clearboth"></div>
                                    <div class="separator" style="height:12px;"></div>
                                    
                                    <div class="label"><p>密码<span>*</span>:</p></div>
                                    <div class="field"><input type="password" class="req" /></div>
                                    <div class="clearboth"></div>
                                    <div class="separator" style="height:12px;"></div>
                                    
                                    <div class="label"><p>确认密码<span>*</span>:</p></div>
                                    <div class="field"><input type="password" class="req" /></div>
                                    <div class="clearboth"></div>
                                </div>
                                
                                <div class="col_2">
                                	<div class="label"><p>姓名:</p></div>
                                    <div class="field"><input type="text" /></div>
                                    <div class="clearboth"></div>
                                    <div class="separator" style="height:14px;"></div>
                                    
                                    <div class="label"><p>昵称:</p></div>
                                    <div class="field"><input type="text" /></div>
                                    <div class="clearboth"></div>
                                    <div class="separator" style="height:12px;"></div>
                                    
                                    <div class="label"><p>性别:</p></div>
                                    <div class="checkbox"><input class="sliding_checkbox" type="checkbox" /></div>
                                    <script type="text/javascript">
										$(document).ready(function (){
											$('.sliding_checkbox').iButton({
												labelOn : '女',
												labelOff : '男',
												resizeHandle : false,
												resizeContainer : false
											});
										});
									</script>
                                    <div class="clearboth"></div>
                                    <div class="separator" style="height:12px;"></div>
                                    
                                    <div class="label"><p>职业:</p></div>
                                    <div class="select">
                                    	<select class="custom_select">
                                        	<option />&nbsp;
                                            <option />UI设计者
                                            <option />前台开发者
                                            <option />经理
                                        </select>
                                    </div>
                                    <div class="clearboth"></div>
                                </div>
                                
                                <div class="clearboth"></div>
                                <div class="separator" style="height:32px;"></div>
                                
                                <p class="info_text">By clicking on the button "Register" you agree to be the terms of service (<a href="#">User Agreement</a>)</p>
                                <p class="info_text"><input type="submit" class="general_button" value="找回密码" /></p>
                                <p class="info_text">You can register for an account through other social networks</p>
                                <div class="fb_button"><a href="#"><img src="images/button_fb_login.png" alt="" /></a></div>
                            </form>
                        </div>
                        
                        <div class="line_3" style="margin:42px 0px 0px;"></div>
                        
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
                    	<div id="logo_bottom"><a href="index.html"><img src="images/logo_bottom.png" alt="" /></a></div>
                        
                        <div class="block_to_top">
                        	<a href="#">BACK TO TOP</a>
                        </div>
                    </div>
                </section>
                
            	<section class="middle">
                	<div class="inner">
                    	<div class="line_1"></div>
                        
                        <div class="block_footer_widgets">
                        	<div class="column">
                            	<h3>Photos on flickr</h3>
                                
                                <div class="block_flickr_footer">
                                	<ul>
                                        <li><a href="http://www.flickr.com/" target="_blank"><img src="images/pic_flickr_1.png" alt="" /></a></li>
                                        <li><a href="http://www.flickr.com/" target="_blank"><img src="images/pic_flickr_2.png" alt="" /></a></li>
                                        <li><a href="http://www.flickr.com/" target="_blank"><img src="images/pic_flickr_3.png" alt="" /></a></li>
                                        <li><a href="http://www.flickr.com/" target="_blank"><img src="images/pic_flickr_4.png" alt="" /></a></li>
                                        <li><a href="http://www.flickr.com/" target="_blank"><img src="images/pic_flickr_5.png" alt="" /></a></li>
                                        <li><a href="http://www.flickr.com/" target="_blank"><img src="images/pic_flickr_6.png" alt="" /></a></li>
                                        <li><a href="http://www.flickr.com/" target="_blank"><img src="images/pic_flickr_7.png" alt="" /></a></li>
                                        <li><a href="http://www.flickr.com/" target="_blank"><img src="images/pic_flickr_8.png" alt="" /></a></li>
                                    </ul>
                                </div>
                            </div>
                            
                            <div class="column">
                            	<h3>Tags</h3>
                                
                                <div class="block_tags">
                                	<ul>
                                    	<li><a href="#">Business</a></li>
                                        <li><a href="#">Science</a></li>
                                        <li><a href="#">conferece</a></li>
                                        <li><a href="#">Photo</a></li>
                                        <li><a href="#">education</a></li>
                                        <li><a href="#">AI</a></li>
                                        <li><a href="#">Sport</a></li>
                                        <li><a href="#">mobile</a></li>
                                        <li><a href="#">Technology</a></li>
                                        <li><a href="#">computer</a></li>
                                        <li><a href="#">Video</a></li>
                                        <li><a href="#">apple</a></li>
                                        <li><a href="#">news</a></li>
                                        <li><a href="#">Euro</a></li>
                                        <li><a href="#">Culture</a></li>
                                        <li><a href="#">interior</a></li>
                                        <li><a href="#">Midle east</a></li>
                                        <li><a href="#">Design</a></li>
                                        <li><a href="#">euro 2012</a></li>
                                        <li><a href="#">flowers</a></li>
                                    </ul>
                                </div>
                            </div>
                            
                            <div class="column">
                            	<h3>most read news</h3>
                                
                                <div class="block_most_read_news">
                                	<div class="article">
                                    	<div class="pic">
                                        	<a href="news_post.html" class="w_hover">
                                            	<img src="images/pic_most_read_1.png" alt="" />
                                                <span></span>
                                            </a>
                                        </div>
                                        
                                        <div class="text">
                                        	<p class="title"><a href="news_post.html">Content of a page when randomised.</a></p>
                                            <p class="date">08 July, 2012</p>
                                        </div>
                                    </div>
                                    <div class="line_1"></div>
                                    
                                    <div class="article">
                                    	<div class="pic">
                                        	<a href="news_post.html" class="w_hover">
                                            	<img src="images/pic_most_read_2.png" alt="" />
                                                <span></span>
                                            </a>
                                        </div>
                                        
                                        <div class="text">
                                        	<p class="title"><a href="news_post.html">Established fact that a will be distracted.</a></p>
                                            <p class="date">08 July, 2012</p>
                                        </div>
                                    </div>
                                    <div class="line_1"></div>
                                    
                                    <div class="article">
                                    	<div class="pic">
                                        	<a href="news_post.html" class="w_hover">
                                            	<img src="images/pic_most_read_3.png" alt="" />
                                                <span></span>
                                            </a>
                                        </div>
                                        
                                        <div class="text">
                                        	<p class="title"><a href="news_post.html">Distracted by the readable content of a page.</a></p>
                                            <p class="date">08 July, 2012</p>
                                        </div>
                                    </div>
                                    <div class="line_1"></div>
                                    
                                </div>
                            </div>
                            
                            <div class="column">
                            	<h3>contact widget</h3>
                                
                                <div class="block_contact_footer">
                                	<form action="#" />
                                    	<p class="text">姓名:</p>
                                        <div class="field"><input type="text" /></div>
                                        
                                        <p class="text">邮箱:</p>
                                        <div class="field"><input type="text" /></div>
                                        
                                        <p class="text">备注:</p>
                                        <div class="textarea"><textarea cols="1" rows="1"></textarea></div>
                                        
                                        <div class="clear_form"><input type="reset" value="Clear form" /></div>
                                        <div class="send"><input type="submit" class="general_button" value="Submit" /></div>
                                        
                                        <div class="clearboth"></div>
                                    </form>
                                </div>
                            </div>
                            
                            <div class="clearboth"></div>
                        </div>
                    </div>
                </section>
                
            	<section class="bottom">
                	<div class="inner">
                    	<div class="line_1"></div>
                        
                        <div class="fr">
                        	<div class="block_menu_footer">
                            	<ul>
                                	<li><a href="business.html">商业</a></li>
                                    <li><a href="technology.html">科技</a></li>
                                    <li><a href="education.html">教育</a></li>
                                    <li><a href="media.html">媒体</a></li>
                                </ul>
                            </div>
                            
                            <div class="block_social_footer">
                            	<ul>
                                	<li><a href="#" class="fb">Facebook</a></li>
                                    <li><a href="#" class="tw">Twitter</a></li>
                                    <li><a href="#" class="rss">RSS</a></li>
                                </ul>
                            </div>
                        </div>
                        
                        <div class="block_copyrights"><p>&copy; 2017 新闻公告 上海理工大学版权所有.</p></div>
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
                
                <div class="subtitle"><p>一般用户登录</p></div>
                
                <div class="fb_button"><a href="#"><img src="images/button_fb_login.png" alt="" /></a></div>
                <div class="text"><p>Use your account on the social network Facebook, to create a profile on BusinessPress</p></div>
            </div>
        </div>
    </div>
    <!-- POPUP END -->
</body>

</html>