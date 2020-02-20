<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>접속허가창</title>
</head>
<body>
<%
String userid=request.getParameter("userid");
String pwd=request.getParameter("pwd");
String message="";
if(userid.equals("Byun") && pwd.equals("znjzm1234")){
	message="환영합니다!! 접속 하시겠습니까?";
} else{	
	response.sendRedirect("musicBoxFail.html");
}
%>
<h3 style="text-align: center;"><%=message %></h3>
  <h3 style="text-align: center;"><a href="main2.html"><img src="images/로그인.JPG" width="100px" height="100px"></a></h3>
  
</body>
</html>