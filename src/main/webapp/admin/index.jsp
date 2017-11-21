<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta content="" name="description" />
    <meta content="webthemez" name="author" />
    <title>上海理工大学-后台管理</title>
    <!-- Bootstrap Styles-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FontAwesome Styles-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!-- Custom Styles-->
    <link href="assets/css/custom-styles.css" rel="stylesheet" />
    
</head>

<body>
    <div id="wrapper">
        <nav class="navbar navbar-default top-navbar" role="navigation">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">伸缩导航栏</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.jsp"><i></i> 后台管理</a>
				
		<div id="sideNav" href="">
		<i class="fa fa-bars icon"></i> 
		</div>
            </div>

            <ul class="nav navbar-top-links navbar-right">
                           
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                        <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="fa fa-sign-out fa-fw"></i> 注销</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
        </nav>
        <!--/. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">

                    <li>
                        <a class="active-menu" href="index.jsp"><i class="fa fa-dashboard"></i> 老师管理<span class="fa arrow"></span></a>
                        <!-- <ul class="nav nav-second-level">
                            <li>
                                <a href="chart.html">增加用户</a>
                            </li>
                            <li>
                                <a href="morris-chart.html">删除用户</a>
                            </li>
                            <li>
                                <a href="chart.html">修改用户</a>
                            </li>
                            <li>
                                <a href="morris-chart.html">查询用户</a>
                            </li>
						</ul> -->
                    </li>
                    <!-- <li>
                        <a href="ui-elements.html"><i class="fa fa-desktop"></i> 老师管理<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="chart.html">增加老师</a>
                            </li>
                            <li>
                                <a href="morris-chart.html">删除老师</a>
                            </li>
                            <li>
                                <a href="chart.html">修改老师</a>
                            </li>
                            <li>
                                <a href="morris-chart.html">查询老师</a>
                            </li>
						</ul>
                    </li>  -->
					 
					<li>
                        <a href="news_manage.jsp"><i class="fa fa-sitemap"></i> 新闻管理<span class="fa arrow"></span></a>
                        <!-- <ul class="nav nav-second-level">
                            <li>
                                <a href="chart.html">增加新闻</a>
                            </li>
                            <li>
                                <a href="morris-chart.html">删除新闻</a>
                            </li>
                            <li>
                                <a href="chart.html">修改新闻</a>
                            </li>
                            <li>
                                <a href="morris-chart.html">查询新闻</a>
                            </li>
						</ul> -->
					</li>	

                </ul>

            </div>

        </nav>
        <!-- /. NAV SIDE  -->
      
		<div id="page-wrapper">
		  <div class="header"> 
                        <h1 class="page-header">
                            	老师管理
                        </h1>
						<ol class="breadcrumb">
					  <li><a href="#">首页</a></li>
					  <li><a href="#">老师管理</a></li>
					  <!-- <li class="active">Data</li> -->
					</ol> 
									
		</div>
            <div id="page-inner">
				<div class="row">
                        <div class="col-xs-12">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <div class="card-title">
                                        <div class="title">老师管理</div>
                                    </div>
                                </div>
                                <div class="panel-body">
                                    <form class="form-horizontal">
                                        <div class="form-group">
                                            <label for="inputEmail3" class="col-sm-2 control-label">老师姓名</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="tearcherName" name="tearcherName" placeholder="姓名">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="inputEmail3" class="col-sm-2 control-label">老师简介</label>
                                            <div class="col-sm-10">
                                                <textarea class="form-control" id="personalProfile" name="personalProfile" rows="3"  placeholder="老师简介"></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="inputEmail3" class="col-sm-2 control-label">学习工作</label>
                                            <div class="col-sm-10">
                                                <textarea class="form-control" id="studyExperience" name="studyExperience" rows="3"  placeholder="老师学习和工作经历"></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="inputEmail3" class="col-sm-2 control-label">科研成就</label>
                                            <div class="col-sm-10">
                                                <textarea class="form-control" id="workAchievements" name="workAchievements" rows="3"  placeholder="老师科研工作与成绩"></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="inputEmail3" class="col-sm-2 control-label">工作职称</label>
                                            <div class="col-sm-10">
                                                <textarea class="form-control" id="academicGroups" name="academicGroups" rows="3"  placeholder="老师社会学术团体兼职"></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="inputEmail3" class="col-sm-2 control-label">研究方向</label>
                                            <div class="col-sm-10">
                                                <textarea class="form-control" id="researchDirection" name="researchDirection" rows="3"  placeholder="老师主要研究方向"></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="inputEmail3" class="col-sm-2 control-label">老师电话</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="contactStyle" name="contactStyle" placeholder="老师电话">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="inputEmail3" class="col-sm-2 control-label">老师邮箱</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="inputEmail3" placeholder="老师邮箱">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="inputEmail3" class="col-sm-2 control-label">老师网站</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="inputEmail3" placeholder="老师网站">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="inputEmail3" class="col-sm-2 control-label">老师照片</label>
                                            <div class="col-sm-10">
                                                <input type="file" id="newsPicture" name="newsPicture" placeholder="新闻资料">
                                            </div>
                                        </div>
                                        <!-- <div class="form-group">
                                            <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
                                            <div class="col-sm-10">
                                                <input type="password" class="form-control" id="inputPassword3" placeholder="Password">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-offset-2 col-sm-10">
                                              <div class="checkbox3 checkbox-round checkbox-check checkbox-light">
                                                <input type="checkbox" id="checkbox-10">
                                                <label for="checkbox-10">
                                                  Remember me
                                                </label>
                                              </div>
                                            </div>
                                        </div> -->
                                        <div class="form-group">
                                            <div class="col-sm-offset-2 col-sm-10">
                                                <!-- <button type="submit" class="btn btn-default" onclick="addTeacher()">添加老师信息</button> -->
                                                <input type="button" class="btn btn-default" onclick="addTeacher()" value="添加老师信息"/> 
                                                <button type="submit" class="btn btn-default" onclick="deleteTeacher()">删除老师信息</button>
                                                <button type="submit" class="btn btn-default" onclick="queryTeacher()">查询老师信息</button>
                                                <button type="submit" class="btn btn-default" onclick="modifyTeacher()">更改老师信息</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
		
				<footer><p>版权所有&copy; 2017上海理工大学 沪ICP备08108292号-5 技术支持:上海理工大学电子商务发展研究院和管理科学与工程一级学科博士点</p>
				
        
				</footer>
            </div>
            <!-- /. PAGE INNER  -->
        </div>
        <!-- /. PAGE WRAPPER  -->
    </div>
    
    <div id="txtHint"></div>
    <!-- /. WRAPPER  -->
    <!-- JQuery Js -->
    <script src="js/jquery.js"></script>
    <!-- Bootstrap Js -->
    <!-- <script src="assets/js/bootstrap.min.js"></script> -->
    
	<script type="text/javascript">
		
    	function addTeacher() {
    		
			var tearcherName = $.trim($("#tearcherName").val());
			var personalProfile = $.trim($("#personalProfile").val());
			var studyExperience = $.trim($("#studyExperience").val());
			var workAchievements = $.trim($("#workAchievements").val());
			var academicGroups = $.trim($("#academicGroups").val());
			var researchDirection = $.trim($("#researchDirection").val());
			var contactStyle = $.trim($("#contactStyle").val());
			var newsPicture = document.getElementById("newsPicture");
			
			if(tearcherName=='')
			{
				alert("输入的教师名为空!");
			}
			else 
			{
				var data = {
						tearcherName:tearcherName,
						personalProfile:personalProfile,
						studyExperience:studyExperience,
						workAchievements:workAchievements,
						academicGroups:academicGroups,
						researchDirection:researchDirection,
						contactStyle:contactStyle
				};
					
	    		$.ajax({
	    			type:"POST",
	    			url:"<%=basePath%>tearcher/add",
	    			data:JSON.stringify(data),
	    			contentType: "application/json; charset=utf-8", 
	    			dataType:'json',
	    			success:function(map){
	    				var status = JSON.stringify(map.status);
	    				var message = JSON.stringify(map.message);
	    				var status_suceess = JSON.stringify("200");
	    				
	    				if(status==status_suceess){
	    					alert(JSON.stringify(map.message));
	    					window.location.href="http://localhost:8080/NewsBulletin/admin/index.jsp";
	    				} else {
	    					alert(message);
	    				}
	    			}
	    		});
			}
		}
    	
    	function deleteTeacher() {
    		
			var tearcherName = $.trim($("#tearcherName").val());
			
			if(tearcherName=='')
			{
				alert("输入的教师名为空!");
			}
			else 
			{ 
				var data = {
						tearcherName:tearcherName
					};
					
					$.ajax({
						type:"POST",
						url:"<%=basePath%>tearcher/delete",
						data:JSON.stringify(data),
						contentType: "application/json; charset=utf-8", 
						dataType:'json',
						success:function(map){
		    				var status = JSON.stringify(map.status);
		    				var message = JSON.stringify(map.message);
		    				
		    				var status_suceess = JSON.stringify("200");
		    				if(status==status_suceess){
		    					alert(message);
		    				} else {
		    					alert(message);
		    				}
		    			}
					});
			}
		}
    	
    	function queryTeacher() {
			var tearcherName = $.trim($("#tearcherName").val());
			
			if(tearcherName=='')
			{
				alert("输入的教师名为空!");
			}
			else 
			{ 
				var data = {
						tearcherName:tearcherName
					};
					
					$.ajax({
						type:"POST",
						url:"<%=basePath%>tearcher/query",
						data:JSON.stringify(data),
						contentType: "application/json; charset=utf-8", 
						dataType:'json',
						success:function(map){
		    				var status = JSON.stringify(map.status);
		    				alert(status);
		    				var message = JSON.stringify(map.message);
		    				var status_suceess = JSON.stringify("200");
		    				
		    				if(status==status_suceess){
		    					
		    					$("#tearcherName").html(JSON.stringify(map.tearcherName).replace(/\"/g, ""));
		    					$("#personalProfile").html(JSON.stringify(map.personalProfile).replace(/\"/g, ""));
		    					$("#studyExperience").html(JSON.stringify(map.studyExperience).replace(/\"/g, ""));
		    					$("#workAchievements").html(JSON.stringify(map.workAchievements).replace(/\"/g, ""));
		    					$("#academicGroups").html(JSON.stringify(map.academicGroups).replace(/\"/g, ""));
		    					$("#researchDirection").html(JSON.stringify(map.researchDirection).replace(/\"/g, ""));
		    					$("#contactStyle").html(JSON.stringify(map.contactStyle).replace(/\"/g, ""));
		    					
		    					/* document.getElementById("tearcherName").innerHTML= JSON.stringify(map.tearcherName).replace(/\"/g, "");
		    					document.getElementById("personalProfile").innerHTML= JSON.stringify(map.personalProfile).replace(/\"/g, "");
		    					document.getElementById("studyExperience").innerHTML= JSON.stringify(map.studyExperience).replace(/\"/g, "");
		    					document.getElementById("workAchievements").innerHTML= JSON.stringify(map.workAchievements).replace(/\"/g, "");
		    					document.getElementById("academicGroups").innerHTML= JSON.stringify(map.academicGroups).replace(/\"/g, "");
		    					document.getElementById("researchDirection").innerHTML= JSON.stringify(map.researchDirection).replace(/\"/g, "");
		    					document.getElementById("contactStyle").innerHTML= JSON.stringify(map.contactStyle).replace(/\"/g, ""); */
		    				} else {
		    					alert("查询失败");
		    				}
		    			}
					});
			}
		}
    	
    	function modifyTeacher() {
			var tearcherName = $.trim($("#tearcherName").val());
			var personalProfile = $.trim($("#personalProfile").val());
			var studyExperience = $.trim($("#studyExperience").val());
			var workAchievements = $.trim($("#workAchievements").val());
			var academicGroups = $.trim($("#academicGroups").val());
			var researchDirection = $.trim($("#researchDirection").val());
			var contactStyle = $.trim($("#contactStyle").val());
			var newsPicture = $.trim($("newsPicture").val());
			
			var data = {
				tearcherName:tearcherName,
				personalProfile:personalProfile,
				studyExperience:studyExperience,
				workAchievements:workAchievements,
				academicGroups:academicGroups,
				researchDirection:researchDirection,
				contactStyle:contactStyle
			};
			
			$.ajax({
				type:"POST",
				data:JSON.stringify(data),
				url:"<%=basePath%>tearcher/modify",
				contentType:"application/json; charset=utf-8",
				dataType:'json',
				success:function(map){
					var status = JSON.stringify(map.status);
    				var message = JSON.stringify(map.message);
    				var status_suceess = JSON.stringify("200");
    				alert(map.status);
    				if(status==status_suceess){
    					alert(message);
    				} else {
    					alert(message);
    				}
				}
			});
		}
    	
    	
    	/* var xmlhttp;
        if (window.XMLHttpRequest) {
          xmlhttp=new XMLHttpRequest();
         }	
        else{
            xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
        }
        xmlhttp.onreadystatechange = function () {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                document.getElementById("txtHint").innerHTML = xmlhttp.responseText;
            }
        }
        xmlhttp.open("POST", "http://localhost:8080/NewsBulletin/tearcher/query", true);
        xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xmlhttp.send("tearcherName=" + tearcherName); */
    </script>
</body>

</html>
