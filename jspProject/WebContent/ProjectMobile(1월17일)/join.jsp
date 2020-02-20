<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>jQuery Mobile</title>
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
<link type="text/css" rel="stylesheet" href="pc.css">
<link type="text/css" rel="stylesheet" media="(min-width:1130px) and (max-width:1310px)" href="notebook.css">
<link type="text/css" rel="stylesheet" media="(min-width:1050px) and (max-width:1129px)" href="tablet.css">
<link type="text/css" rel="stylesheet" media="(min-width:900px) and (max-width:1049px)" href="tablet2.css">
<link type="text/css" rel="stylesheet" media="(min-width:0px) and (max-width:899px)" href="mobile.css">
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
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
</head>
<body>
<!-- 메인창 장르별창 -->
<div data-role="page" id="main" title="메인창">
 
 <!-- 메뉴바 부분  -->
 <div data-role="nav" data-position="fixed" class="menu_bar">
  <h1><img alt="사이트로고" src="images/나만의모바일로고.JPG" width="90%" height="90%"></h1><br>
 <div align="center">
 <ul>
  <li class="genre"><a href="#panel1" class="loginfont" style="color:white;">로그인</a></li>
  </ul>
  </div>
  <div align="center" style="margin-top:100px;">
  <ul class="navi">
  <li class="genre"><a href="#main" class="font" style="color:#ff5050;">최신음악 차트</a></li>
  <li class="genre"><a href="#ballad" class="font" style="color:white;font-size: 1.0rem;">발라드/드라마ost</a></li>
  <li class="genre"><a href="#dance" class="font" style="color:white;">댄스</a></li>
  <li class="genre"><a href="#hiphop" class="font" style="color:white;">랩/힙합</a></li>
  <li class="genre"><a href="#rb" class="font" style="color:white;font-size: 1.4rem">R&B/Soul</a></li>
  <li class="genre"><a href="#CCM" class="font" style="color:white;">CCM</a></li>
 </ul>
</div>
 </div>
 
 <!-- 컨텐츠 부분 -->
 <div data-role="content" class="contents"> 
 
 <!-- 로그인,회원가입,메뉴 패널 -->
  <div style="background-color: black; color:white;" data-role="panel" id="panel1" data-display="overlay" 
   data-position="right">
    <form>
      <h1><img alt="사이트로고" src="images/나만의모바일로고.JPG" width="90%" height="90%"></h1>
      <table>
      <tr><td>ID : </td>
      <td><input name="name" id="name" type="text" value="" 
      data-mini="true" data-clear-btn="true" required></td>
     <tr><td>비밀번호 : </td>
      <td><input name="password" id="password" type="password" 
      value="" data-mini="true" data-clear-btn="true" required></td></tr>
      </table>
      <div class="ui-grid-a">
         
        <div class="ui-block-a"><a href="#" 
        data-role="button" data-rel="close">로그인</a>
        </div>
        <div class="ui-block-b"><a href="#" 
        data-role="button" data-rel="close">회원가입</a>
        </div>
      </div>
    </form>
  </div>
  
  <!-- 음악,사진 목록 부분 -->
     <a class="list" style="color:black;">    
     <img src="images/아이유 Love poem.jpg" width="90%" height="90%"><br> 
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
     <img src="images/아이유 Love poem.jpg" width="90%" height="90%"><br>
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
 <div data-position="fixed" class="genre_bar"></div>
 </div>
 
<!-- --------------------------------------------------------------------------- --> 
 
 <!-- 발라드창 -->
<div data-role="page" id="ballad" title="발라드/드라마ost">
 
 
 <!-- 메뉴바 부분  -->
 <div data-role="nav" data-position="fixed" class="menu_bar">
  <h1><img alt="사이트로고" src="images/나만의모바일로고.JPG" width="90%" height="90"></h1>
 <div align="center">
 <ul>
  <li class="genre"><a href="#panel1" class="loginfont" style="color:white;">로그인</a></li>
  </ul>
  </div>
  <div align="center" style="margin-top:100px;">
 <ul class="navi">
  <li class="genre"><a href="#main" class="font" style="color:white;">최신음악 차트</a></li>
  <li class="genre"><a href="#ballad" class="font" style="color:#ff5050;font-size: 1.0rem;">발라드/드라마ost</a></li>
  <li class="genre"><a href="#dance" class="font" style="color:white;">댄스</a></li>
  <li class="genre"><a href="#hiphop" class="font" style="color:white;">랩/힙합</a></li>
  <li class="genre"><a href="#rb" class="font" style="color:white;font-size: 1.4rem">R&B/Soul</a></li>
  <li class="genre"><a href="#CCM" class="font" style="color:white;">CCM</a></li>
 </ul>
</div>
 </div>
 
 <!-- 컨텐츠 부분 -->
 <div data-role="content" class="contents"> 
 
 <!-- 로그인,회원가입,메뉴 패널 -->
  <div style="background-color: black; color:white;" data-role="panel" id="panel1" data-display="overlay" 
   data-position="right">
    <form>
      <h1><img alt="사이트로고" src="images/나만의모바일로고.JPG" width="90%" height="90"></h1>
      <table>
      <tr><td>ID : </td>
      <td><input name="name" id="name" type="text" value="" 
      data-mini="true" data-clear-btn="true"></td>
     <tr><td>비밀번호 : </td>
      <td><input name="password" id="password" type="password" 
      value="" data-mini="true" data-clear-btn="true"></td></tr>
      </table>
      <div class="ui-grid-a">
        <div class="ui-block-a"><a href="#" 
        data-role="button" data-rel="close">로그인</a>
        </div>
        <div class="ui-block-b"><a href="#" 
        data-role="button" data-rel="close">회원가입</a>
        </div>
      </div>
    </form>
  </div>
  
  <!-- 음악,사진 목록 부분 -->
     <a class="list" style="color:black;">    
     <img src="images/박효신 dreamer 7집.JPG" width="90%" height="90%"><br> 
           가수/그룹명  - 박효신<br><br>
           곡 제목 - 야생화<br><br>
           앨범 명 - 7집 I am A Dreamer<br><br>
           듣기 <br> 
     <audio preload="none" controls preload="none"><source src="mp3/박효신(Park Hyo Shin) - 야생화(Wild Flower) Special Video.mp3" type="audio/mpeg"></audio>
     </a>
     
   <a class="list" style="color:black;">    
     <img src="images/박효신 dreamer 7집.JPG" width="90%" height="90%"><br> 
           가수/그룹명  - 박효신<br><br>
           곡 제목 - Home<br><br>
           앨범 명 - 7집 I am A Dreamer<br><br>
           듣기 <br> 
     <audio preload="none" controls preload="none"><source src="mp3/home 박효신 고음질 (가사 첨부).mp3" type="audio/mpeg"></audio>
     </a>
     
     <a class="list" style="color:black;">    
     <img src="images/박효신 5집 The Breeze Of Sea.jpg" width="90%" height="90%"><br> 
           가수/그룹명  - 박효신<br><br>
           곡 제목 - 추억은 사랑을 닮아<br><br>
           앨범 명 - 5집 The Breeze Of Sea<br><br>
           듣기 <br> 
     <audio preload="none" controls preload="none"><source src="mp3/박효신 - 추억은 사랑을 닮아.mp3" type="audio/mpeg"></audio>
     </a>
     
     <a class="list" style="color:black;">    
     <img src="images/아이유 Love poem.jpg" width="90%" height="90%"><br> 
           가수/그룹명  - 아이유<br><br>
           곡 제목 - Love Poem<br><br>
           앨범 명 - Love Poem<br><br>
           듣기 <br> 
     <audio preload="none" controls preload="none"><source src="mp3/Love poem (Love poem).mp3" type="audio/mpeg"></audio>
     </a>
     
     <a class="list" style="color:black;">
     <img src="images/노을 늦은 밤 너의 집 앞 골목길에서.jpg" width="90%" height="90%"><br>
     가수/그룹명 - 노을<br><br>
     곡제목 - 늦은 밤 너의 집 앞 골목길에서<br><br>
     앨범 명 - 늦은 밤 너의 집 앞 골목길에서  <br><br>
     듣기<br>
     <audio preload="none" controls><source src="mp3/노을 - 늦은 밤 너의 집 앞 골목길에서   가사.mp3" type="audio/mpeg"></audio>
     </a>
     
  <a class="list" style="color:black;">
  <img src="images/김범수 solista part2.jpg" width="90%" height="90%"><br>
     가수/그룹명 - 김범수<br><br>
     곡제목 - 끝사랑<br><br>
     앨범 명 - 7집 SOLISTA Part 2  <br><br>
     듣기<br>
   <audio preload="none" controls><source src="mp3/김범수 7집 Part.2 _ 끝사랑 MV.mp3" type="audio/mpeg"></audio>
   </a>
   
    <a class="list" style="color:black;">
  <img src="images/김범수 solista part2.jpg" width="90%" height="90%"><br>
     가수/그룹명 - 김범수<br><br>
     곡제목 - 지나간다<br><br>
     앨범 명 - 7집 SOLISTA Part 2  <br><br>
     듣기<br>
   <audio preload="none" controls><source src="mp3/김범수 _ 지나간다.mp3" type="audio/mpeg"></audio>
   </a>
     
     <a class="list" style="color:black;">
     <img src="images/이 번호로 전화해줘.jpg" width="90%" height="90%"><br>
           가수/그룹명  - 바이브<br><br>
           곡 제목 - 이 번호로 전화해줘<br><br>
           앨범 명 - 이 번호로 전화해줘<br><br>
           듣기 <br> 
     <audio preload="none" controls><source src="mp3/바이브 - 이 번호로 전화해줘   가사.mp3" type="audio/mpeg"></audio>
     </a>
     
       <a class="list" style="color:black;">
     <img src="images/악동뮤지션 항해.jpg" width="85%" height="85%"><br>
           가수/그룹명  - 악동뮤지션<br><br>
           곡 제목 - 어떻게 이별까지 사랑하겠어, <br>널 사랑하는 거지<br><br>
           앨범 명 - 항해<br><br>
           듣기 <br>
     <audio preload="none" controls><source src="mp3/AKMU - '어떻게 이별까지 사랑하겠어, 널 사랑하는 거지(How can I love the heartbreak, you`re the one I love)' M V.mp3" type="audio/mpeg"></audio> 
     </a>
     
       <a class="list" style="color:black;">
     <img src="images/벤 recipe.jpg" width="90%" height="90%"><br>
           가수/그룹명  - 벤(Ben)<br><br>
           곡 제목 - 열애중<br><br>
           앨범 명 - RECIPE<br><br>
           듣기 <br> 
     <audio preload="none" controls><source src="mp3/열애중 Love, ing.mp3" type="audio/mpeg"></audio>
     </a>
     
         <a class="list" style="color:black;">
     <img src="images/송하예 새 사랑.jpg" width="90%" height="90%"><br>
           가수/그룹명  - 송하예<br><br>
           곡 제목 - 새 사랑<br><br>
           앨범 명 - 새 사랑<br><br>
           듣기 <br> 
     <audio preload="none" controls><source src="mp3/송하예 - 새 사랑   가사.mp" type="audio/mpeg"></audio>
     </a>
     
     <a class="list" style="color:black;">
     <img src="images/박효신 gift.jpg" width="90%" height="90%"><br>
           가수/그룹명  - 박효신<br><br>
           곡 제목 - gift<br><br>
           앨범 명 - Gift Part.1<br><br>
           듣기 <br> 
     <audio preload="none" controls><source src="mp3/박효신-gift 한글가사 자막.mp3" type="audio/mpeg"></audio>
     </a>
     
     </div>
   
   <!-- footer -->  
 <div data-position="fixed" class="genre_bar"></div>
 </div>
 
 <!-- ------------------------------------------------------------------------ -->
 
  <!-- 댄스 음악 창 -->
<div data-role="page" id="dance" title="댄스">
 
 
 <!-- 메뉴바 부분  -->
 <div data-role="nav" data-position="fixed" class="menu_bar">
  <h1><img alt="사이트로고" src="images/나만의모바일로고.JPG" width="90%" height="90"></h1>
   <div align="center">
 <ul>
  <li class="genre"><a href="#panel1" class="loginfont" style="color:white;">로그인</a></li>
  </ul>
  </div>
  <div align="center" style="margin-top:100px;">
 <ul class="navi">
  <li class="genre"><a href="#main" class="font" style="color:white;">최신음악 차트</a></li>
  <li class="genre"><a href="#ballad" class="font" style="color:white;font-size: 1.0rem;">발라드/드라마ost</a></li>
  <li class="genre"><a href="#dance" class="font" style="color:#ff5050;">댄스</a></li>
  <li class="genre"><a href="#hiphop" class="font" style="color:white;">랩/힙합</a></li>
  <li class="genre"><a href="#rb" class="font" style="color:white;font-size: 1.4rem">R&B/Soul</a></li>
  <li class="genre"><a href="#CCM" class="font" style="color:white;">CCM</a></li>
 </ul>
</div>
 </div>
 
 <!-- 컨텐츠 부분 -->
 <div data-role="content" class="contents"> 
 
 <!-- 로그인,회원가입,메뉴 패널 -->
  <div style="background-color: black; color:white;" data-role="panel" id="panel1" data-display="overlay" 
   data-position="right">
    <form>
      <h1><img alt="사이트로고" src="images/나만의모바일로고.JPG" width="90%" height="90"></h1>
      <table>
      <tr><td>ID : </td>
      <td><input name="name" id="name" type="text" value="" 
      data-mini="true" data-clear-btn="true"></td>
     <tr><td>비밀번호 : </td>
      <td><input name="password" id="password" type="password" 
      value="" data-mini="true" data-clear-btn="true"></td></tr>
      </table>
      <div class="ui-grid-a">
        <div class="ui-block-a"><a href="#" 
        data-role="button" data-rel="close">로그인</a>
        </div>
        <div class="ui-block-b"><a href="#" 
        data-role="button" data-rel="close">회원가입</a>
        </div>
      </div>
    </form>
  </div>
  
  <!-- 음악,사진 목록 부분 댄스-->
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
 <div data-position="fixed" class="genre_bar"></div>
 </div>
 
 <!-- --------------------------------------------------------------------------- -->
 
  <!-- 랩/힙합 창 -->
<div data-role="page" id="hiphop" title="랩/힙합 창">
 
 
 <!-- 메뉴바 부분  -->
 <div data-role="nav" data-position="fixed" class="menu_bar">
  <h1><img alt="사이트로고" src="images/나만의모바일로고.JPG" width="90%" height="90"></h1>
   <div align="center">
 <ul>
  <li class="genre"><a href="#panel1" class="loginfont" style="color:white;">로그인</a></li>
  </ul>
  </div>
  <div align="center" style="margin-top:100px;">
 <ul class="navi">
  <li class="genre"><a href="#main" class="font" style="color:white;">최신음악 차트</a></li>
  <li class="genre"><a href="#ballad" class="font" style="color:white;font-size: 1.0rem;">발라드/드라마ost</a></li>
  <li class="genre"><a href="#dance" class="font" style="color:white;">댄스</a></li>
  <li class="genre"><a href="#hiphop" class="font" style="color:#ff5050;">랩/힙합</a></li>
  <li class="genre"><a href="#rb" class="font" style="color:white;font-size: 1.4rem">R&B/Soul</a></li>
  <li class="genre"><a href="#CCM" class="font" style="color:white;">CCM</a></li>
 </ul>
</div>
 </div>
 
 <!-- 컨텐츠 부분 -->
 <div data-role="content" class="contents"> 
 
 <!-- 로그인,회원가입,메뉴 패널 -->
  <div style="background-color: black; color:white;" data-role="panel" id="panel1" data-display="overlay" 
   data-position="right">
    <form>
      <h1><img alt="사이트로고" src="images/나만의모바일로고.JPG" width="90%" height="90"></h1>
      <table>
      <tr><td>ID : </td>
      <td><input name="name" id="name" type="text" value="" 
      data-mini="true" data-clear-btn="true"></td>
     <tr><td>비밀번호 : </td>
      <td><input name="password" id="password" type="password" 
      value="" data-mini="true" data-clear-btn="true"></td></tr>
      </table>
      <div class="ui-grid-a">
        <div class="ui-block-a"><a href="#" 
        data-role="button" data-rel="close">로그인</a>
        </div>
        <div class="ui-block-b"><a href="#" 
        data-role="button" data-rel="close">회원가입</a>
        </div>
      </div>
    </form>
  </div>
  
  <!-- 음악,사진 목록 부분  힙합-->
     <a class="list" style="color:black;">    
     <img src="images/쇼미더머니5 비와이3.jpg" width="90%" height="90%"><br> 
           가수/그룹명  - 비와이<br><br>
           곡 제목 - Forever<br><br>
           앨범 명 - 쇼미더머니 5 Episode 3<br><br>
           듣기 <br> 
     <audio preload="none" controls preload="none"><source src="mp3/Forever (Prod. by GRAY).mp3" type="audio/mpeg"></audio>
     </a>
     
   <a class="list" style="color:black;">    
     <img src="images/쇼미더머니5 비와이3.jpg" width="90%" height="90%"><br> 
           가수/그룹명  - 비와이<br><br>
           곡 제목 - Day Day(Feat.박재범)<br><br>
           앨범 명 - 쇼미더머니 5 Episode 4<br><br>
           듣기 <br> 
     <audio preload="none" controls preload="none"><source src="mp3/Day Day BewhY(비와이) (Feat.박재범) (Prod.by GRAY).mp33" type="audio/mpeg"></audio>
     </a>
     
     <a class="list" style="color:black;">    
     <img src="images/사이먼도미닉 화기엄금.jpg" width="90%" height="90%"><br> 
           가수/그룹명  - Simon Dominic<br><br>
           곡 제목 - POSE! (Feat. 염따)<br><br>
           앨범 명 - 화기엄금<br><br>
           듣기 <br> 
     <audio preload="none" controls preload="none"><source src="mp3/사이먼 도미닉 (Simon Dominic) - 'POSE! (Feat. 염따)' Official Music Video.mp3" type="audio/mpeg"></audio>
     </a>
     
     <a class="list" style="color:black;">    
     <img src="images/사이먼도미닉 화기엄금.jpg" width="90%" height="90%"><br> 
           가수/그룹명  - Simon Dominic<br><br>
           곡 제목 - make her dance<br>(Feat. Loopy & Crush)<br><br>
           앨범 명 - 화기엄금<br><br>
           듣기 <br> 
     <audio preload="none" controls preload="none"><source src="mp3/사이먼 도미닉 (Simon Dominic) - 'make her dance (Feat. Loopy & Crush)' Official Music Video (ENG CHN).mp3" type="audio/mpeg"></audio>
     </a>
     
     <a class="list" style="color:black;">
     <img src="images/사이먼도미닉 화기엄금.jpg" width="90%" height="90%"><br>
     가수/그룹명 - Simon Dominic<br><br>
     곡제목 - DAx4<br><br>
     앨범 명 - 화기엄금<br><br>
     듣기<br>
     <audio preload="none" controls><source src="mp3/사이먼 도미닉 (Simon Dominic) - 'DAx4' Official Music Video (ENG CHN).mp3" type="audio/mpeg"></audio>
     </a>
     
  <a class="list" style="color:black;">
  <img src="images/염따 Dingo.jpg" width="75%" height="75%"><br>
     가수/그룹명 - 염따<br><br>
     곡제목 - 돈 Call Me (Prod.BRLLNT)<br><br>
     앨범 명 - Dingo X 염따<br><br>
     듣기<br>
   <audio preload="none" controls><source src="mp3/염따 - 돈 Call Me (Prod.BRLLNT).mp3" type="audio/mpeg"></audio>
   </a>
   
    <a class="list" style="color:black;">
  <img src="images/창모 돈 벌 시간2.jpg" width="90%" height="90%"><br>
     가수/그룹명 - 창모<br><br>
     곡제목 - 마에스트로(Maestro)<br><br>
     앨범 명 - 돈 벌 시간 2<br><br>
     듣기<br>
   <audio preload="none" controls><source src="mp3/창모 (Changmo) - 마에스트로 (Maestro).mp3" type="audio/mpeg"></audio>
   </a>
     
     <a class="list" style="color:black;">
     <img src="images/창모 boyhood.jpg" width="90%" height="90%"><br>
           가수/그룹명  - 창모<br><br>
           곡 제목 - REMEDY (Feat. 청하 (CHUNG HA))<br><br>
           앨범 명 - Boyhood<br><br>
           듣기 <br> 
     <audio preload="none" controls><source src="mp3/REMEDY (Feat. 청하 (CHUNG HA)).mp3" type="audio/mpeg"></audio>
     </a>
     </div>
   
   <!-- footer -->  
 <div data-position="fixed" class="genre_bar"></div>
 </div>
 <!-- ---------------------------------------------------------------------------- --> 
 
  <!-- R&B/Soul 창 -->
<div data-role="page" id="rb" title="R&B/Soul 창">
 
 
 <!-- 메뉴바 부분  -->
 <div data-role="nav" data-position="fixed" class="menu_bar">
  <h1><img alt="사이트로고" src="images/나만의모바일로고.JPG" width="90%" height="90"></h1>
   <div align="center">
 <ul>
  <li class="genre"><a href="#panel1" class="loginfont" style="color:white;">로그인</a></li>
  </ul>
  </div>
  <div align="center" style="margin-top:100px;">
 <ul class="navi">
  <li class="genre"><a href="#main" class="font" style="color:white;">최신음악 차트</a></li>
  <li class="genre"><a href="#ballad" class="font" style="color:white;font-size: 1.0rem;">발라드/드라마ost</a></li>
  <li class="genre"><a href="#dance" class="font" style="color:white;">댄스</a></li>
  <li class="genre"><a href="#hiphop" class="font" style="color:white;">랩/힙합</a></li>
  <li class="genre"><a href="#rb" class="font" style="color:#ff5050; font-size: 1.4rem">R&B/Soul</a></li>
  <li class="genre"><a href="#CCM" class="font" style="color:white;">CCM</a></li>
 </ul>
</div>
 </div>
 
 <!-- 컨텐츠 부분 -->
 <div data-role="content" class="contents"> 
 
 <!-- 로그인,회원가입,메뉴 패널 -->
  <div style="background-color: black; color:white;" data-role="panel" id="panel1" data-display="overlay" 
   data-position="right">
    <form>
      <h1><img alt="사이트로고" src="images/나만의모바일로고.JPG" width="90%" height="90"></h1>
      <table>
      <tr><td>ID : </td>
      <td><input name="name" id="name" type="text" value="" 
      data-mini="true" data-clear-btn="true"></td>
     <tr><td>비밀번호 : </td>
      <td><input name="password" id="password" type="password" 
      value="" data-mini="true" data-clear-btn="true"></td></tr>
      </table>
      <div class="ui-grid-a">
        <div class="ui-block-a"><a href="#" 
        data-role="button" data-rel="close">로그인</a>
        </div>
        <div class="ui-block-b"><a href="#" 
        data-role="button" data-rel="close">회원가입</a>
        </div>
      </div>
    </form>
  </div>
  
  <!-- 음악,사진 목록 부분 알앤비-->
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
 <div data-position="fixed" class="genre_bar"></div>
 </div>
 
<!-- ----------------------------------------------------------------------------- -->

 <!-- CCM창 -->
<div data-role="page" id="CCM" title="CCM창">
 
 
 <!-- 메뉴바 부분  -->
 <div data-role="nav" data-position="fixed" class="menu_bar">
  <h1><img alt="사이트로고" src="images/나만의모바일로고.JPG" width="90%" height="90"></h1>
   <div align="center">
 <ul>
  <li class="genre"><a href="#panel1" class="loginfont" style="color:white;">로그인</a></li>
  </ul>
  </div>
  <div align="center" style="margin-top:100px;">
 <ul class="navi">
  <li class="genre"><a href="#main" class="font" style="color:white;">최신음악 차트</a></li>
  <li class="genre"><a href="#ballad" class="font" style="color:white;font-size: 1.0rem;">발라드/드라마ost</a></li>
  <li class="genre"><a href="#dance" class="font" style="color:white;">댄스</a></li>
  <li class="genre"><a href="#hiphop" class="font" style="color:white;">랩/힙합</a></li>
  <li class="genre"><a href="#rb" class="font" style="color:white;font-size: 1.4rem">R&B/Soul</a></li>
  <li class="genre"><a href="#CCM" class="font" style="color:#ff5050;">CCM</a></li>
 </ul>
</div>
 </div>
 
 <!-- 컨텐츠 부분 -->
 <div data-role="content" class="contents"> 
 
 <!-- 로그인,회원가입,메뉴 패널 -->
  <div style="background-color: black; color:white;" data-role="panel" id="panel1" data-display="overlay" 
   data-position="right">
    <form>
      <h1><img alt="사이트로고" src="images/나만의모바일로고.JPG" width="90%" height="90"></h1>
      <table>
      <tr><td>ID : </td>
      <td><input name="name" id="name" type="text" value="" 
      data-mini="true" data-clear-btn="true"></td>
     <tr><td>비밀번호 : </td>
      <td><input name="password" id="password" type="password" 
      value="" data-mini="true" data-clear-btn="true"></td></tr>
      </table>
      <div class="ui-grid-a">
        <div class="ui-block-a"><a href="#" 
        data-role="button" data-rel="close">로그인</a>
        </div>
        <div class="ui-block-b"><a href="#" 
        data-role="button" data-rel="close">회원가입</a>
        </div>
      </div>
    </form>
  </div>
  
  <!-- 음악,사진 목록 부분 CCM -->
     <a class="list" style="color:black;">    
     <img src="images/제이어스 born again.jpg" width="90%" height="90%"><br> 
           가수/그룹명  - 제이어스(J-US)<br><br>
           곡 제목 - 내모습이대로<br><br>
           앨범 명 -Born Again<br><br>
           듣기 <br> 
     <audio preload="none" controls preload="none"><source src="mp3/제이어스 J-US Live Worship [Born Again] 06 내 모습 이대로 (Just as I Am).mp3" type="audio/mpeg"></audio>
     </a>
     
   <a class="list" style="color:black;">    
     <img src="images/제이어스 born again.jpg" width="90%" height="90%"><br> 
           가수/그룹명  - 제이어스(J-US)<br><br>
           곡 제목 - 십자가<br><br>
           앨범 명 - Born Again<br><br>
           듣기 <br> 
     <audio preload="none" controls preload="none"><source src="mp3/제이어스 J-US Live Worship [Born Again] 07 십자가 (The Cross).mp3" type="audio/mpeg"></audio>
     </a>
     
     <a class="list" style="color:black;">    
     <img src="images/제이어스 born again.jpg" width="90%" height="90%"><br> 
           가수/그룹명  - 제이어스(J-US)<br><br>
           곡 제목 - 시편139편<br><br>
           앨범 명 - Born Again<br><br>
           듣기 <br> 
     <audio preload="none" controls preload="none"><source src="mp3/Psalm 139 (시편 139편) - J-US (제이어스).mp3" type="audio/mpeg"></audio>
     </a>
     
     <a class="list" style="color:black;">    
     <img src="images/멜로망스 프로필사진.jpg" width="90%" height="270px"><br> 
           가수/그룹명  - 제이어스(J-US)멜로망스 김민석<br><br>
           곡 제목 - JESUS<br><br>
           앨범 명 - Born Again<br><br>
           듣기 <br> 
     <audio preload="none" controls preload="none"><source src="mp3/Jesus (제이어스 멜로망스 김민석) 가사.mp3" type="audio/mpeg"></audio>
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
     
   
    <a class="list" style="color:black;">
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
 <div data-position="fixed" class="genre_bar"></div>
 </div>
 
 <!-- ----------------------------------------------------------------------------- -->

</body>
</html>