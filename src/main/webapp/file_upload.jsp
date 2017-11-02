<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>上海理工大学电子商务发展研究院-文件上传</title>
	</head>
	<body>
		<form name="serForm" action="${basePath}user/uploadfile1" method="post"  enctype="multipart/form-data">
			<h1>采用流的方式上传文件</h1>
			<input type="file" name="file">
			<input type="submit" value="upload"/>
		</form>
	 
		<form name="Form2" action="${basePath}user/uploadfile2" method="post"  enctype="multipart/form-data">
			<h1>采用multipart提供的file.transfer方法上传文件</h1>
			<input type="file" name="file">
			<input type="submit" value="upload"/>
		</form>
	 
		<form name="Form2" action="${basePath}user/springupload" method="post"  enctype="multipart/form-data">
			<h1>使用spring mvc提供的类的方法上传文件</h1>
			<input type="file" name="file">
			<input type="submit" value="upload"/>
		</form>
		
		<input id='fileName' type="text" name="fileName"/>
    	<a href="${basePath}user/downloadfile" target="blank"><button>下载</button></a>
    	<script type="text/javascript">
		    $(function(){
		        $('a').click(function(){
		            var link=this.href+'?'+'fileName='+$('#fileName').val();
		            window.open(link);
		            return false;
		        });
		    });
		</script>
    	
    	
    	<h1>Welcome to FileDownloader Example</h1>
		
		Click on below links to see FileDownload in action.<br/><br/>
		
		
		<a href="${basePath}user/downloadfile/{internal}">Download This File (located inside project)</a>  
		<br/>
		<a href="${basePath}user/downloadfile">Download This File (located outside project, on file system)</a>
		
	</body>
</html>
