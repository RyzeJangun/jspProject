<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
<%@ include file="../include/session_check.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" media="(min-width:1311px) and (max-width:1920px)" href="${path}/css/pc.css">
<link type="text/css" rel="stylesheet" media="(min-width:1130px) and (max-width:1310px)" href="${path}/css/notebook.css">
<link type="text/css" rel="stylesheet" media="(min-width:1050px) and (max-width:1129px)" href="${path}/css/tablet.css">
<link type="text/css" rel="stylesheet" media="(min-width:900px) and (max-width:1049px)" href="${path}/css/tablet2.css">
<link type="text/css" rel="stylesheet" media="(min-width:0px) and (max-width:899px)" href="${path}/css/mobile.css">

<style type="text/css">
  *{padding:0; margin:0;}
   li{list style:none;}
      h1{
   display: block;
    font-size: 2em;
    margin-block-start: 0.67em;
    margin-block-end: 0.67em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    }

   
   .list img:hover{
      	-webkit-transform:scale(1.3);
     -moz-transform:scale(1.3);
     -ms-transform:scale(1.3);   
     -o-transform:scale(1.3);
     transform:scale(1.3);
      -webkit-transition:.3s;
    -moz-transition:.3s;
    -ms-transition:.3s;
    -o-transition:.3s;
     transition:.5s;
   }
   
    ul{
  display:table;/*테이블 형식*/
  margin-left: auto;
  margin-right: auto; 
}

 
 ul.navi li{
  background-color:black;
  list-style-type: none;/*불릿 없앰*/
  display: block;/*블럭 영역 만듦*/
  width: 7em;/*너비*/
  height: 2em;/*높이*/
  float:left;/*왼쪽 플로팅*/
  text-align:center;
  font-size: 1.2rem;
  margin-left:50px;
  margin-top:10px;
  padding:10px;
  /*첫번째 폰트가 없으면 두번째 폰트 선택*/
  border:0px #400040 solid;
  box-shadow: 5px 5px 10px #bbb;
  -webkit-transform:scale(1);
    -moz-transform:scale(1);
    -ms-transform:scale(1); 
    -o-transform:scale(1);  
     transform:scale(1);
    -webkit-transition:.3s;
    -moz-transition:.3s;
    -ms-transition:.3s;
    -o-transition:.3s;
     transition:.5s;
}

 ul.navi li:hover { 
  background-color:#e37dff; <!--목록배경바뀜-->
 }
 
  .font{
  font-weight:normal;
   text-decoration: none;
   font-family: inherit;
   text-shadow:10px 10px 10px #000000<!--추가-->
 }
 ul.navi li:hover>a{/*직계자손 태그 a*/
 text-shadow:0px 3px 0px #000000;/*텍스트 그림자*/
   -webkit-transform:scale(1.5);
    -moz-transform:scale(1.5);
    -ms-transform:scale(1.5); 
    -o-transform:scale(1.5);  
     transform:scale(1.5);
    -webkit-transition:.3s;
    -moz-transition:.3s;
    -ms-transition:.3s;
    -o-transition:.3s;
     transition:.3s;
 }
 
 ul.navi li{/*첫번째 항목의 스타일 Home*/
  border-radius: 2em;
  border-radius: 2em;
 }
 
 .loginfont{
   width: 7em;/*너비*/
  height: 2em;/*높이*/
  border:0px #400040 solid;
  
  box-shadow: 5px 5px 10px #bbb;
      font-weight:normal;
   text-decoration: none;
   font-family: inherit;
   text-shadow:10px 10px 10px #000000<!--추가-->
    font-size: 1.2rem;
    display:table;/*테이블 형식*/       
    background-color:#595959; <!--목록배경바뀜-->
    text-shadow:0px 3px 0px #000000;/*텍스트 그림자*/
   -webkit-transform:scale(1.5);
    -moz-transform:scale(1.5);
    -ms-transform:scale(1.5); 
    -o-transform:scale(1.5);  
     transform:scale(1.5);
    -webkit-transition:.3s;
    -moz-transition:.3s;
    -ms-transition:.3s;
    -o-transition:.3s;
     transition:.3s;
   
  }
  
   .loginfont:hover{
    text-shadow:10px 10px 10px #000000<!--추가-->
   -webkit-transform:scale(1.5);
    -moz-transform:scale(1.5);
    -ms-transform:scale(1.5); 
    -o-transform:scale(1.5);  
     transform:scale(1.5);
    -webkit-transition:.3s;
    -moz-transition:.3s;
    -ms-transition:.3s;
    -o-transition:.3s;
     transition:.3s;
 }

 
 .genre{
        font-size:20px;       
        text-align:center;
 }
</style>
<script src="../include/jquery-3.4.1.min.js"></script>
<c:if test="${param.message == 'x' }">
	<script type="text/javascript">
		alert(name+"로그인 성공되었습니다.");
	</script>
</c:if>
</head>
<body>
<div class="menu_bar">
<h1><img src="images/나만의모바일로고.JPG" width="90%" height="90%"></h1><br>
 
  <div align="center" style="margin-top:100px;">
  <ul class="navi">
  <li class="genre" style="color:white;">${sessionScope.name}</li>
   <li><a href="${path}/userManage_servlet/logout.do" class="font" style="color:white;">로그아웃</a></li>
   <li><a href="${path}/userManage_servlet/view.do" class="font" style="color:white;">내정보</a></li>
  <li class="genre"><a href="../myPage/myPage.jsp" class="font" style="color:white;">최신음악 차트</a></li>
  <li class="genre"><a href="ballad.jsp" class="font" style="color:white;font-size: 1.0rem;">발라드/드라마ost</a></li>
  <li class="genre"><a href="dance.jsp" class="font" style="color:white;">댄스</a></li>
  <li class="genre"><a href="hiphop.jsp" class="font" style="color:white;">랩/힙합</a></li>
  <li class="genre"><a href="#" class="font" style="color:#ff5050;font-size: 1.4rem">RnB/Soul</a></li>
  <li class="genre"><a href="CCM.jsp" class="font" style="color:white;">CCM</a></li>
 </ul>
</div>
</div>
 <div class="contents">
  <a class="list" style="color:black;">    
     <img src="images/브아솔 soul right.jpg" width="90%" height="90%"><br> 
           가수/그룹명  - 브라운 아이드 소울(Brown Eyed Soul)<br><br>
           곡 제목 - 그대의 밤, 나의 아침<br><br>
           앨범 명 -It' Soul Right<br><br>
           듣기 <br> 
     <audio preload="none" controls preload="none"><source src="mp3/브라운 아이드 소울 - 그대의 밤, 나의 아침   가사.mp3" type="audio/mpeg"></audio>
     </a>
     
   <a class="list" style="color:black;">    
     <img src="images/브아솔 soul right.jpg" width="90%" height="90%"><br> 
           가수/그룹명  - 브라운 아이드 소울(Brown Eyed Soul)<br><br>
           곡 제목 - Right (Feat. SOLE)<br><br>
           앨범 명 - It' Soul Right<br><br>
           듣기 <br> 
     <audio preload="none" controls preload="none"><source src="mp3/브라운 아이드 소울 (Brown Eyed Soul) - Right (Feat. SOLE) MV.mp3" type="audio/mpeg"></audio>
     </a>
     
     <a class="list" style="color:black;">    
     <img src="images/나얼 sound doctrine.jpg" width="90%" height="90%"><br> 
           가수/그룹명  - 나얼(Naul)<br><br>
           곡 제목 - Gloria<br><br>
           앨범 명 - Sound Doctrine<br><br>
           듣기 <br> 
     <audio preload="none" controls preload="none"><source src="mp3/나얼 (Naul) - Gloria MV.mp3" type="audio/mpeg"></audio>
     </a>
     
     <a class="list" style="color:black;">    
     <img src="images/나얼 sound doctrine.jpg" width="90%" height="90%"><br> 
           가수/그룹명  - 나얼(Naul)<br><br>
           곡 제목 - 널 부르는 밤<br><br>
           앨범 명 - Sound Doctrine<br><br>
           듣기 <br> 
     <audio preload="none" controls preload="none"><source src="mp3/나얼 (Naul) - 널 부르는 밤 (Feel Like) MV.mp3" type="audio/mpeg"></audio>
     </a>
     
  <a class="list" style="color:black;">
  <img src="images/나얼 sound doctrine.jpg" width="90%" height="90%"><br>
     가수/그룹명 - 나얼(Naul)<br><br>
     곡제목 - Baby Fun<br><br>
     앨범 명 - Sound Doctrine<br><br>
     듣기<br>
   <audio preload="none" controls><source src="mp3/나얼 (Naul) - Baby Funk MV.mp3" type="audio/mpeg"></audio>
   </a>
   
     <a class="list" style="color:black;">
     <img src="images/딘 instagram.jpg" width="90%" height="90%"><br>
     가수/그룹명 - 딘(DEAN)<br><br>
     곡제목 - instagram<br><br>
     앨범 명 - instagram<br><br>
     듣기<br>
     <audio preload="none" controls><source src="mp3/Dean - instagram. Lyrics.mp3" type="audio/mpeg"></audio>
     </a>
     
   
    <a class="list" style="color:black; font-size:0.2rem;">
  <img src="images/딘 what2do.jpg" width="90%" height="90%"><br>
     가수/그룹명 - 딘(DEAN)<br><br>
     곡제목 - what2do<br>(Feat. Crush, Jeff Bernat)<br><br>
     앨범 명 - what2do<br><br>
     듣기<br>
   <audio preload="none" controls><source src="mp3/Dean - What 2 Do ft. Crush, Jeff Bernat (Official Video).mp3" type="audio/mpeg"></audio>
   </a>
     
     <a class="list" style="color:black;">
     <img src="images/헤이즈 and july.jpg" width="90%" height="90%"><br>
           가수/그룹명  - 헤이즈(Heize)<br><br>
           곡 제목 - And July (Feat. DEAN, DJ Friz)<br><br>
           앨범 명 - And July<br><br>
           듣기 <br> 
     <audio preload="none" controls><source src="mp3/헤이즈 (Heize) - And July (Feat. DEAN, DJ Friz) MV.mp3"  type="audio/mpeg"></audio>
     </a>
     
       <a class="list" style="color:black;">
     <img src="images/헤이즈 and july.jpg" width="85%" height="85%"><br>
           가수/그룹명  - 헤이즈(Heize)<br><br>
           곡 제목 - 돌아오지마<br><br>
           앨범 명 - And July<br><br>
           듣기 <br>
     <audio preload="none" controls><source src="mp3/Heize (헤이즈) - 돌아오지마 (Feat. 용준형 Of BEAST 비스트).mp3" type="audio/mpeg"></audio> 
     </a>
     
       <a class="list" style="color:black;">
     <img src="images/문명진 잠 못 드는 밤에.jpg" width="85%" height="85%"><br>
           가수/그룹명  - 문명진<br><br>
           곡 제목 - 잠 못 드는 밤에<br><br>
           앨범 명 - 잠 못 드는 밤에<br><br>
           듣기 <br> 
     <audio preload="none" controls><source src="mp3/문명진 - 잠못드는 밤에.mp3" type="audio/mpeg"></audio>
     </a>
     
         <a class="list" style="color:black;">
     <img src="images/40 듣는편지.jpg" width="85%" height="85%"><br>
           가수/그룹명  - 포티(40)<br><br>
           곡 제목 - 듣는편지<br><br>
           앨범 명 - 듣는편지<br><br>
           듣기 <br> 
     <audio preload="none" controls><source src="mp3/듣는편지 - (포티) 가사.mp3" type="audio/mpeg"></audio>
     </a>
 </div>

  <!-- footer -->  
 <div class="genre_bar"></div>
 
</body>
</html>