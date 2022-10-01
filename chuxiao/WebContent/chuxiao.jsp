<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<script>
			function startTime(){
				var today = new Date();
				var hh=today.getHours();
				var mm=today.getMinutes();
				var ss=today.getSeconds();
				var vv=today.getMilliseconds()
				hh=checkTime(hh);
				mm=checkTime(mm);
				ss=checkTime(ss);
				document.getElementById('nowDateTimeSpan').innerHTML=hh+":"+mm+":"+ss+"."+vv;
				setTimeout('startTime()',3);//每一秒中重新加载startTime()方法
			}
			function checkTime(i)
	           {
	               if (i<10){
	                   i="0" + i;
	               }
	                return i;
	           }
</script>
<style type="text/css">
div{
	position:absolute;
	left:0;
	right:0;
	top:0;
	bottom:0;
	margin:auto;
	text-align:center;
	
}
p{
	text-style:heiti;
}
hr{
	color:rgb(190,190,190)
}
span{
	font-style:heiti;
	font-size:10px;
}
font{
	font-size:20px;
}
</style>
<meta charset="UTF-8">
<title>出校</title>
</head>
<body onload="startTime()">
	<div position=center;>
		<p>出校</p>
		<img alt="" src="./img/1.jpg"><br>
		<span>
		<% String username = request.getParameter("username");out.println(username+"-"); %>
		<% String id = request.getParameter("id");out.println(id+"<br>"); %>
		</span>
		<hr />
		<p>学生：白名单验证通过，该申请离校扫码1次，离校码只能使用一次，请不要重复打开</p>
		<font color="red">
		<p id="nowDateTimeSpan"></p>
		</font>
		<img src="in/in.jpg" width="70" height="68">
	</div>
	
</body>
</html>