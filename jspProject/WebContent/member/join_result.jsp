<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../include/header.jsp" %>
    <%@ include file="../include/session_check.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">  
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../include/jquery-3.4.1.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<%@ include file="../include/header.jsp" %>
<c:if test="${param.message == '회원가입 성공' }">
	<script type="text/javascript">
		alert("회원가입 되었습니다.");
	</script>
</c:if>
<style type="text/css">
 body{
  background-color: black;
  }
</style>
</head>
<body>
 <h1 style="text-align: center;"><a href="../main/logout.jsp"><img src="images/music_16-wallpaper-1920x1080.jpg" width="60%" height="60%"></a></h1>
		<br><br>
<div class="container" id="container">
	<div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
		<div class="panel panel-success">
			<div class="panel-body" style="font-size: 30px" align="center">
			  <%
request.setCharacterEncoding("utf-8");
String name=request.getParameter("name");
System.out.print(name);
%>
<%=name %>님 회원가입 성공
<a href="${path}/userManage_servlet/login.do"><button class="form-control btn btn-danger">로그인</button></a>
			</div>
			
			
			</div>
			</div>			
	</div>




</body>
</html>