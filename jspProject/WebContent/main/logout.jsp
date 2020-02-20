<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../include/jquery-3.4.1.min.js"></script>
<c:if test="${param.message == 'logout' }">
	<script type="text/javascript">
		alert("로그아웃 되었습니다.");
	</script>
</c:if>
<link type="text/css" rel="stylesheet" href="css/pc.css">
<link type="text/css" rel="stylesheet" media="(min-width:1130px) and (max-width:1310px)" href="css/notebook.css">
<link type="text/css" rel="stylesheet" media="(min-width:1050px) and (max-width:1129px)" href="css/tablet.css">
<link type="text/css" rel="stylesheet" media="(min-width:900px) and (max-width:1049px)" href="css/tablet2.css">
<link type="text/css" rel="stylesheet" media="(min-width:0px) and (max-width:899px)" href="css/mobile.css">
<style type="text/css">
  *{padding:0; margin:0;}
   
</style>
</head>
<body>
<div class="menu_bar">
<h1><img alt="사이트로고" src="images/나만의모바일로고.JPG" width="90%" height="90%"></h1><br>
 <div align="center">
 <ul>
  <li><a href="../member/login.jsp" class="loginfont" style="color:white;">로그인</a></li>
  </ul>
  </div>
  <div align="center" style="margin-top:100px;">
  <ul class="navi">
  <li class="genre"><a href="#main" class="font" style="color:#ff5050;">최신음악 차트</a></li>
  <li class="genre"><a href="../music/ballad.jsp" class="font" style="color:white;font-size: 1.0rem;">발라드/드라마ost</a></li>
  <li class="genre"><a href="../music/dance.jsp" class="font" style="color:white;">댄스</a></li>
  <li class="genre"><a href="../music/hiphop.jsp" class="font" style="color:white;">랩/힙합</a></li>
  <li class="genre"><a href="../music/rnb.jsp" class="font" style="color:white;font-size: 1.4rem">RnB/Soul</a></li>
  <li class="genre"><a href="../music/CCM.jsp" class="font" style="color:white;">CCM</a></li>
 </ul>
</div>
</div>
  <div class="contents">
      <a class="list" style="color:black;">    
     <img src="images/아이유 Love poem.jpg" width="90%" height="90%"><br> 
           순위 - 1위<br><br>
           가수/그룹명  - 아이유<br><br>
           곡 제목 - Blueming<br><br>
           앨범 명 - Love Poem<br><br>
           듣기 <br> 
     #로그인 후 감상가능 합니다.
     </a>
     
     <a class="list" style="color:black;">
     <img src="images/노을 늦은 밤 너의 집 앞 골목길에서.jpg" width="90%" height="90%"><br>
     순위 - 2위<br><br>
     가수/그룹명 - 노을<br><br>
     곡제목 - 늦은 밤 너의 집 앞 골목길에서<br><br>
     앨범 명 - 늦은 밤 너의 집 앞 골목길에서  <br><br>
     듣기<br>
     #로그인 후 감상가능 합니다.
     </a>
     
     <a class="list" style="color:black;">
     <img src="images/아이유 Love poem.jpg" width="90%" height="90%"><br>
           순위 - 3위<br><br>
           가수/그룹명  - 아이유<br><br>
           곡 제목 - Love Poem<br><br>
           앨범 명 - Love Poem<br><br>
           듣기 <br> 
     #로그인 후 감상가능 합니다.
     </a>
     
     <a class="list" style="color:black;">
     <img src="images/마마무 reality in black.jpg" width="90%" height="90%"><br>
            순위 - 4위<br><br>
           가수/그룹명  - 마마무<br><br>
           곡 제목 - HIP<br><br>
           앨범 명 - reality in BLACK<br><br>
           듣기 <br>
     #로그인 후 감상가능 합니다.          
     </a>
     
     <a class="list" style="color:black;">
     <img src="images/Into the Unknown.jpg" width="90%" height="90%"><br>
           순위 - 5위<br><br>
           가수/그룹명  - Panic! At the DISCO<br><br>
           곡 제목 - Into the Unknown<br><br>
           앨범 명 - 겨울왕국2 OST<br><br>
           듣기 <br> 
     #로그인 후 감상가능 합니다.
     </a>
     
     <a class="list" style="color:black;">
     <img src="images/이 번호로 전화해줘.jpg" width="90%" height="90%"><br>
            순위 - 6위<br><br>
           가수/그룹명  - 바이브<br><br>
           곡 제목 - 이 번호로 전화해줘<br><br>
           앨범 명 - 이 번호로 전화해줘<br><br>
           듣기 <br>
     #로그인 후 감상가능 합니다.
     </a>
     
       <a class="list" style="color:black;">
     <img src="images/악동뮤지션 항해.jpg" width="85%" height="85%"><br>
            순위 - 7위<br><br>
           가수/그룹명  - 악동뮤지션<br><br>
           곡 제목 - 어떻게 이별까지 사랑하겠어, <br>널 사랑하는 거지<br><br>
           앨범 명 - 항해<br><br>
           듣기 <br>
     #로그인 후 감상가능 합니다. 
     </a>
     
     <a class="list" style="color:black;">
     <img src="images/장범준 멜로가 체질OST.jpg" width="85%" height="85%"><br>
            순위 - 8위<br><br>
           가수/그룹명  - 장범준<br><br>
           곡 제목 - 흔들리는 꽃들 속에서 <br>네 샴푸향이 느껴진거야<br><br>
           앨범 명 - 멜로가 체질 OST Part 3<br><br>
           듣기 <br>
     #로그인 후 감상가능 합니다. 
     </a>
     
     <a class="list" style="color:black;">
     <img src="images/아이유 Love poem.jpg" width="90%" height="90%"><br>
            순위 - 9위<br><br>
           가수/그룹명  - 아이유<br><br>
           곡 제목 - 시간의 바깥<br><br>
           앨범 명 - Love Poem<br><br>
           듣기 <br>
     #로그인 후 감상가능 합니다.
     </a>
     
     <a class="list" style="color:black;">
     <img src="images/송하예 새 사랑.jpg" width="90%" height="90%"><br>
            순위 - 10위<br><br>
           가수/그룹명  - 송하예<br><br>
           곡 제목 - 새 사랑<br><br>
           앨범 명 - 새 사랑<br><br>
           듣기 <br>
     #로그인 후 감상가능 합니다. 
     </a>
     
       <a class="list" style="color:black;">
     <img src="images/창모 boyhood.jpg" width="90%" height="90%"><br>
            순위 - 11위<br><br>
           가수/그룹명  - 창모<br><br>
           곡 제목 - METEOR<br><br>
           앨범 명 - Boyhood<br><br>
           듣기 <br>
     #로그인 후 감상가능 합니다.
     </a>
     
       <a class="list" style="color:black;">
     <img src="images/정승환 12월25일 고백.jpg" width="90%" height="90%"><br>
            순위 - 12위<br><br>
           가수/그룹명  - 정승환<br><br>
           곡 제목 - 십이월 이십오일의 고백<br><br>
           앨범 명 - 십이월 이십오일의 고백<br><br>
           듣기 <br>
     #로그인 후 감상가능 합니다. 
     </a>
  </div>

  <!-- footer -->  
 <div class="genre_bar"></div>
 
</body>
</html>