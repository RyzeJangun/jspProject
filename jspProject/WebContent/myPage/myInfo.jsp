<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
<%@ include file="../include/session_check.jsp" %>
<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat" %>
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
<title>Insert title here</title>
<c:if test="${param.message == 'z' }">
	<script type="text/javascript">
		alert(name+"회원정보가 수정되었습니다.");
	</script>
</c:if>
<style type="text/css">
 body{
  background-color: black;
  }
</style>
<script type="text/javascript">
function info_update(){
	var form1 = $("#form1");
	document.form1.action="${path}/userManage_servlet/update.do";
	document.form1.submit();
}

function info_delete(){
	if(confirm("삭제하시겠습니까?")){
		document.form1.action="${path}/userManage_servlet/delete.do";
		document.form1.submit();
	}
}
</script>
<script src="../include/jquery-3.4.1.min.js"></script>
</head>
<body>
<h3 style="text-align:center;"><img src="images/music_16-wallpaper-1920x1080.jpg" width="60%" height="60%"></h3>

<div class="container" id="container">
	<div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
		<div class="panel panel-success">

			<div class="panel-body">
			<form id="login-form" name="login_form" action="${path}/userManage_servlet/update.do" method="post">
				<div>ID<input type="text" class="form-control" name="id"  value="${items.id}" id="id" placeholder="아이디" readonly="readonly">
				</div><br><br>
				<div>비밀번호<input type="password" class="form-control" name="pw" id="pass1" placeholder="비밀번호">
				(영문대소문자,숫자를 사용한 8자~12자 이내로 입력하시오.)
				</div><br><br>
				<div>성명<input type="text" class="form-control" name="name" value="${items.name}" readonly="readonly">
				</div><br>
				<div>생년월일<br><select name="year">
                <%for(int i=2020; i>1949; i--){ %>
                <option value="${items.birth}"><%=i %>년</option>
                 <%} %>
                </select>
 
              <select name="month">
              <%for(int i=1; i<13; i++){ %>
              <option value="${items.birth}"><%=i %>월</option>
              <%} %>
              </select>
 
              <select name="day">
              <%for(int i=1; i<=31; i++){ %>
              <option value="${items.birth}"><%=i %>일</option>
              <%} %>
              </select>
				</div><br><br>
				<div>성별<select name="gender" class="form-control">
                <option value="">${items.gender}</option>
                <option value="남자">남자</option>
                <option value="여자">여자</option>
                </select>
				</div><br><br>
				<div>E-mail<input type="email" class="form-control" name="email" value="${items.email}" pattern="[a-z0-9]{2,}@[a-z0-9]{2,}\.[a-z]{2,}" title="ex)qusdndudwkd@naver.com" value="${items.email}">
				</div><br><br> 
				<div>HP<input type="tel" class="form-control" name="hp" value="${items.hp}" pattern="(010)-\d{3,4}-\d{4}" title="010-####-####">
				</div><br><br>
				<div>주소(거주지)<input type="text" class="form-control" name="address" value="${items.address}">
				</div><br><br>
				<div>광고 문자 서비스를 동의 합니까?<input type="radio" name="ad" checked="${items.ad}" value="예">예<input type="radio" name="ad" checked="${items.ad}" value="아니오">아니오
				</div><br><br>
				<div>
				<button id="btnUpdate" type="submit" class="form-control btn btn-danger" onclick="info_update()">회원수정</button><button id="btnDelete" type="submit" class="form-control btn btn-danger" onclick="info_delete()">회원탈퇴</button>
				</div>
			</form>
			</div>	
			</div>
		</div>
	</div>




</body>
</html>