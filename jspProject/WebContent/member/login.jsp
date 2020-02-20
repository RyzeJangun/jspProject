<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<c:if test="${param.message == 'y' }">
	<script type="text/javascript">
		alert("아이디나 패스워드가 틀렸습니다.");
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

			<div class="panel-body">
			<form id="login-form" name="login_form" action="${path}/userManage_servlet/login.do" method="post">
				<div><input type="text" class="form-control" name="id" id="id" placeholder="아이디">
				</div><br>
				<div><input type="password" class="form-control" name="pw" id="pass1" placeholder="비밀번호">
				</div><br>
				<div>
				<button type="submit" class="form-control btn btn-danger">로그인</button>
				</div>
				<div class="container-fluid" style="text-align: center;">
  	 	<div class="row">
    	<div class="col-md-4">
    		<a href="#">아이디 찾기 </a>
			</div>
			<div class="col-md-4">
			<a href="#">비밀번호 찾기 </a>
			</div>
			<div class="col-md-4">
			<a href="join.jsp">회원가입</a>
			</div>
			</div>
			</div>	
			</form>
			</div>
		</div>
	</div>

</div>


</body>
</html>