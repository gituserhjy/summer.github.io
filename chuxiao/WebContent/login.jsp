<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>输入姓名学号</title>
</head>
<body>
	<form action="chuxiao.jsp" method="post" name="form"  >

		<br/>姓名：<input type="text" name="username"/>
		<br/>学号：<input type="text" name="id">
		<br/><input type="submit" name="submit" value="确定">
	</form>

</body>
</html>