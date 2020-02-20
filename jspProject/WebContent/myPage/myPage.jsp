<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
<%@ include file="../include/session_check.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../include/jquery-3.4.1.min.js"></script>
<link type="text/css" rel="stylesheet" href="${path}/css/pc.css">
<link type="text/css" rel="stylesheet" media="(min-width:1130px) and (max-width:1310px)" href="${path}/css/notebook.css">
<link type="text/css" rel="stylesheet" media="(min-width:1050px) and (max-width:1129px)" href="${path}/css/tablet.css">
<link type="text/css" rel="stylesheet" media="(min-width:900px) and (max-width:1049px)" href="${path}/css/tablet2.css">
<link type="text/css" rel="stylesheet" media="(min-width:0px) and (max-width:899px)" href="${path}/css/mobile.css">
<c:if test="${param.message == 'x' }">
	<script type="text/javascript">
		alert(name+"로그인 성공되었습니다.");
	</script>
</c:if>
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
  
  .menu_bar{
    position: fixed;
    top: 0;
    bottom: 81px;
    left: 0;
    z-index: 60;
    width: 250px;
    background-color: black;
  }
  
   h1{
   display: block;
    font-size: 2em;
    margin-block-start: 0.67em;
    margin-block-end: 0.67em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
    z-index: 100;
    }
    
    
  .contents{
   
    float:left;
    text-align: center; 
    border-top: silver solid 1px; 
    display: inline-block; 
    width: 80%; 
    margin:100px;
    margin-left:250px; 
    padding: 100px;
    
  }

  .list{
      width: 300px;
      height:5%;
      background-color: white; 
      display: inline-block; 
      font-size: 0.7rem;
      font-color:black;
      padding:10px;
      margin-bottom:10px;
   }
   
   .list img:hover{
      	-webkit-transform:scale(2.0);
     -moz-transform:scale(2.0);
     -ms-transform:scale(2.0);   
     -o-transform:scale(2.0);
     transform:scale(2.0);
      -webkit-transition:.3s;
    -moz-transition:.3s;
    -ms-transition:.3s;
    -o-transition:.3s;
     transition:.5s;
   }
  
  .genre_bar{
    position: fixed;
    right: 0;
    bottom: 0;
    left: 0;
    z-index: 90;
    height: 81px;
    background-color: rgba(25, 25, 25, 0.95);
  }
</style>
</head>
<body>
<div class="menu_bar">
<h1><img src="${path}/images/나만의모바일로고.JPG" width="90%" height="90%"></h1><br>

  <div align="center" style="margin-top:100px;">
  <ul class="navi">
   <li class="genre" style="color:white;">${sessionScope.name}</li>
   <li><a href="${path}/userManage_servlet/logout.do" class="font" style="color:white;">로그아웃</a></li>
   <li><a href="${path}/userManage_servlet/view.do" class="font" style="color:white;">내정보</a></li>
   <li class="genre"><a href="#" class="font" style="color:white;">나의 음악</a></li>
  <li class="genre"><a href="#" class="font" style="color:#ff5050;">최신음악 차트</a></li>
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
     <img src="${path}/images/아이유 Love poem.jpg" width="90%" height="90%"><br> 
           순위 - 1위<br><br>
           가수/그룹명  - 아이유<br><br>
           곡 제목 - Blueming<br><br>
           앨범 명 - Love Poem<br><br>
           듣기 <br> 
     <audio preload="none" controls><source src="mp3/Blueming (Blueming).mp3" type="audio/mpeg"></audio>
     </a>
     
     <a class="list" style="color:black;">
     <img src="images/노을 늦은 밤 너의 집 앞 골목길에서.jpg" width="90%" height="90%"><br>
     순위 - 2위<br><br>
     가수/그룹명 - 노을<br><br>
     곡제목 - 늦은 밤 너의 집 앞 골목길에서<br><br>
     앨범 명 - 늦은 밤 너의 집 앞 골목길에서  <br><br>
     듣기<br>
     <audio preload="none" controls><source src="mp3/노을 - 늦은 밤 너의 집 앞 골목길에서   가사.mp3" type="audio/mpeg"></audio>
     </a>
     
     <a class="list" style="color:black;">
     <img src="${path}/images/아이유 Love poem.jpg" width="90%" height="90%"><br>
           순위 - 3위<br><br>
           가수/그룹명  - 아이유<br><br>
           곡 제목 - Love Poem<br><br>
           앨범 명 - Love Poem<br><br>
           듣기 <br> 
     <audio preload="none" controls><source src="mp3/Love poem (Love poem).mp3" type="audio/mpeg"></audio>
     </a>
     
     <a class="list" style="color:black;">
     <img src="images/마마무 reality in black.jpg" width="90%" height="90%"><br>
            순위 - 4위<br><br>
           가수/그룹명  - 마마무<br><br>
           곡 제목 - HIP<br><br>
           앨범 명 - reality in BLACK<br><br>
           듣기 <br>
     <audio preload="none" controls><source src="mp3/MAMAMOO (마마무) - HIP (Color Coded Lyrics Eng Rom Han 가사).mp3"></audio>            
     </a>
     
     <a class="list" style="color:black;">
     <img src="images/Into the Unknown.jpg" width="90%" height="90%"><br>
           순위 - 5위<br><br>
           가수/그룹명  - Panic! At the DISCO<br><br>
           곡 제목 - Into the Unknown<br><br>
           앨범 명 - 겨울왕국2 OST<br><br>
           듣기 <br> 
     <audio preload="none" controls><source src="mp3/Panic! At The Disco - Into the Unknown (From  Frozen 2 ).mp3" type="audio/mpeg"></audio>
     </a>
     
     <a class="list" style="color:black;">
     <img src="images/이 번호로 전화해줘.jpg" width="90%" height="90%"><br>
            순위 - 6위<br><br>
           가수/그룹명  - 바이브<br><br>
           곡 제목 - 이 번호로 전화해줘<br><br>
           앨범 명 - 이 번호로 전화해줘<br><br>
           듣기 <br>
     <audio preload="none" controls><source src="mp3/바이브 - 이 번호로 전화해줘   가사.mp3" type="audio/mpeg"></audio> 
     </a>
     
       <a class="list" style="color:black;">
     <img src="images/악동뮤지션 항해.jpg" width="85%" height="85%"><br>
            순위 - 7위<br><br>
           가수/그룹명  - 악동뮤지션<br><br>
           곡 제목 - 어떻게 이별까지 사랑하겠어, <br>널 사랑하는 거지<br><br>
           앨범 명 - 항해<br><br>
           듣기 <br>
     <audio preload="none" controls><source src="mp3/AKMU - '어떻게 이별까지 사랑하겠어, 널 사랑하는 거지(How can I love the heartbreak, you`re the one I love)' M V.mp3" type="audio/mpeg"></audio> 
     </a>
     
     <a class="list" style="color:black;">
     <img src="images/장범준 멜로가 체질OST.jpg" width="85%" height="85%"><br>
            순위 - 8위<br><br>
           가수/그룹명  - 장범준<br><br>
           곡 제목 - 흔들리는 꽃들 속에서 <br>네 샴푸향이 느껴진거야<br><br>
           앨범 명 - 멜로가 체질 OST Part 3<br><br>
           듣기 <br>
     <audio preload="none" controls><source src="mp3/AKMU - '어떻게 이별까지 사랑하겠어, 널 사랑하는 거지(How can I love the heartbreak, you`re the one I love)' M V.mp3" type="audio/mpeg"></audio> 
     </a>
     
     <a class="list" style="color:black;">
     <img src="images/아이유 Love poem.jpg" width="90%" height="90%"><br>
            순위 - 9위<br><br>
           가수/그룹명  - 아이유<br><br>
           곡 제목 - 시간의 바깥<br><br>
           앨범 명 - Love Poem<br><br>
           듣기 <br>
    <audio preload="none" controls><source src="mp3/above the time (시간의 바깥).mp3" type="audio/mpeg"></audio> 
     </a>
     
     <a class="list" style="color:black;">
     <img src="images/송하예 새 사랑.jpg" width="90%" height="90%"><br>
            순위 - 10위<br><br>
           가수/그룹명  - 송하예<br><br>
           곡 제목 - 새 사랑<br><br>
           앨범 명 - 새 사랑<br><br>
           듣기 <br>
     <audio preload="none" controls><source src="mp3/송하예 - 새 사랑   가사.mp3" type="audio/mpeg"></audio> 
     </a>
     
       <a class="list" style="color:black;">
     <img src="images/창모 boyhood.jpg" width="90%" height="90%"><br>
            순위 - 11위<br><br>
           가수/그룹명  - 창모<br><br>
           곡 제목 - METEOR<br><br>
           앨범 명 - Boyhood<br><br>
           듣기 <br>
     <audio preload="none" controls><source src="mp3/창모 (CHANGMO) - METEOR [Official Music Video].mp3" type="audio/mpeg"></audio> 
     </a>
     
       <a class="list" style="color:black;">
     <img src="images/정승환 12월25일 고백.jpg" width="90%" height="90%"><br>
            순위 - 12위<br><br>
           가수/그룹명  - 정승환<br><br>
           곡 제목 - 십이월 이십오일의 고백<br><br>
           앨범 명 - 십이월 이십오일의 고백<br><br>
           듣기 <br>
     <audio preload="none" controls><source src="mp3/[MV] Jung Seung Hwan(정승환) _ My christmas wish(십이월 이십오일의 고백).mp3" type="audio/mpeg"></audio> 
     </a>
    </div>
  <!-- footer -->  
 <div class="genre_bar"></div>
 
</body>
</html>