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
  <li class="genre"><a href="#" class="font" style="color:#ff5050;">댄스</a></li>
  <li class="genre"><a href="hiphop.jsp" class="font" style="color:white;">랩/힙합</a></li>
  <li class="genre"><a href="rnb.jsp" class="font" style="color:white;font-size: 1.4rem">RnB/Soul</a></li>
  <li class="genre"><a href="CCM.jsp" class="font" style="color:white;">CCM</a></li>
 </ul>
</div>
</div>
   <div class="contents">
       <a class="list" style="color:black;">    
     <img src="images/Exo 6집.jpg" width="90%" height="90%"><br> 
           가수/그룹명  - EXO<br><br>
           곡 제목 - Obsession<br><br>
           앨범 명 - OBSESSION - The 6th Album<br><br>
           듣기 <br> 
     <audio preload="none" controls preload="none"><source src="mp3/EXO 엑소 'Obsession' MV.mp3" type="audio/mpeg"></audio>
     </a>
     
   <a class="list" style="color:black;">    
     <img src="images/마마무 reality in black.jpg" width="90%" height="90%"><br> 
           가수/그룹명  - 마마무<br><br>
           곡 제목 - HIP<br><br>
           앨범 명 - reality in BLACK<br><br>
           듣기 <br> 
     <audio preload="none" controls preload="none"><source src="mp3/MAMAMOO (마마무) - HIP (Color Coded Lyrics Eng Rom Han 가사).mp3" type="audio/mpeg"></audio>
     </a>
     
     <a class="list" style="color:black;">    
     <img src="images/마마무 MEMORY.jpg" width="90%" height="90%"><br> 
           가수/그룹명  - 마마무<br><br>
           곡 제목 - Decalcomanie<br><br>
           앨범 명 - MEMORY<br><br>
           듣기 <br> 
     <audio preload="none" controls preload="none"><source src="mp3/마마무 (MAMAMOO) - Décalcomanie (데칼코마니) MV.mp3" type="audio/mpeg"></audio>
     </a>
     
     <a class="list" style="color:black;">    
     <img src="images/마마무 RED MOON.jpg" width="90%" height="90%"><br> 
           가수/그룹명  - 마마무<br><br>
           곡 제목 - 너나 해<br><br>
           앨범 명 - RED MOON<br><br>
           듣기 <br> 
     <audio preload="none" controls preload="none"><source src="mp3/[MV] 마마무(MAMAMOO) - 너나 해(Egotistic).mp3" type="audio/mpeg"></audio>
     </a>
     
     <a class="list" style="color:black;">
     <img src="images/방탄소년단 LOVE.jpg" width="90%" height="90%"><br>
     가수/그룹명 - 방탄소년단<br><br>
     곡제목 - DNA<br><br>
     앨범 명 - LOVE YOURSELF 結 ‘Answer'<br><br>
     듣기<br>
     <audio preload="none" controls><source src="mp3/BTS (방탄소년단) 'DNA' Official MV.mp3" type="audio/mpeg"></audio>
     </a>
     
  <a class="list" style="color:black;">
  <img src="images/리그오브레전드 KDA.jpg" width="75%" height="75%"><br>
     가수/그룹명 - (여자)아이들,<br>Madison Beer,<br>Jaira Burns,<br>K/DA,League of Legends<br><br>
     곡제목 - K/DA<br><br>
     앨범 명 - POP/STARS<br><br>
     듣기<br>
   <audio preload="none" controls><source src="mp3/K DA - POP STARS (ft. Madison Beer, (G)I-DLE, Jaira Burns)   Music Video - League of Legends.mp3" type="audio/mpeg"></audio>
   </a>
   
    <a class="list" style="color:black;">
  <img src="images/블랙핑크 킬빌러브.jpg" width="90%" height="90%"><br>
     가수/그룹명 - 블랙핑크<br><br>
     곡제목 - Kill This Love<br><br>
     앨범 명 - KILL THIS LOVE<br><br>
     듣기<br>
   <audio preload="none" controls><source src="mp3/BLACKPINK - 'Kill This Love' M V.mp3" type="audio/mpeg"></audio>
   </a>
     
     <a class="list" style="color:black;">
     <img src="images/블랙핑크 SQUARE UP.jpg" width="90%" height="90%"><br>
           가수/그룹명  - 블랙핑크<br><br>
           곡 제목 - 뚜두뚜두 (DDU-DU DDU-DU)<br><br>
           앨범 명 - SQUARE U<br><br>
           듣기 <br> 
     <audio preload="none" controls><source src="mp3/BLACKPINK - ‘뚜두뚜두 (DDU-DU DDU-DU)’ M V.mp3" type="audio/mpeg"></audio>
     </a>
     
       <a class="list" style="color:black;">
     <img src="images/블랙핑크 SQUARE ONE.jpg" width="85%" height="85%"><br>
           가수/그룹명  - 블랙핑크<br><br>
           곡 제목 - 붐바야<br><br>
           앨범 명 - SQUARE ONE<br><br>
           듣기 <br>
     <audio preload="none" controls><source src="mp3/BLACKPINK - '붐바야'(BOOMBAYAH) M V.mp3" type="audio/mpeg"></audio> 
     </a>
     
       <a class="list" style="color:black;">
     <img src="images/워너원 1X1=1(TO BE ONE).jpg" width="85%" height="85%"><br>
           가수/그룹명  - 워너원<br><br>
           곡 제목 - 에너제틱 (Energetic)<br><br>
           앨범 명 - 1X1=1(TO BE ONE)<br><br>
           듣기 <br> 
     <audio preload="none" controls><source src="mp3/Wanna One (워너원) - 에너제틱 (Energetic) MV.mp3" type="audio/mpeg"></audio>
     </a>
     
         <a class="list" style="color:black;">
     <img src="images/워너원 1¹¹=1 (POWER OF DESTINY).jpg" width="85%" height="85%"><br>
           가수/그룹명  - 워너원<br><br>
           곡 제목 - 봄바람<br><br>
           앨범 명 - 1¹¹=1 (POWER OF DESTINY)<br><br>
           듣기 <br> 
     <audio preload="none" controls><source src="mp3/Wanna One (워너원) - '봄바람 (Spring Breeze)’ M V.mp3" type="audio/mpeg"></audio>
     </a>
     </div>

  <!-- footer -->  
 <div class="genre_bar"></div>
 
</body>
</html>