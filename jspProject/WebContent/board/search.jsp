<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>
<script src="../include/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#btnWrite").click(function(){
		location.href="${path}/board/write.jsp";
	});
});
</script>
</head>
<body>
<h2>게시판</h2>
<form name="form1" method="post" action="${path}/board_servlet/search.do">
  <select name="search_option">
    <c:choose>
    <c:when test="${search_option == 'writer'}">
	    <option value="writer" selected>이름</option>
	    <option value="subject">제목</option>
	    <option value="content">내용</option>
	    <option value="all">이름+제목+내용</option>
    </c:when>
    <c:when test="${search_option == 'subject'}">
	    <option value="writer">이름</option>
	    <option value="subject" selected>제목</option>
	    <option value="content">내용</option>
	    <option value="all">이름+제목+내용</option>
    </c:when>
    <c:when test="${search_option == 'content'}">
	    <option value="writer">이름</option>
	    <option value="subject">제목</option>
	    <option value="content" selected>내용</option>
	    <option value="all">이름+제목+내용</option>
    </c:when>
    <c:when test="${search_option == 'all'}">
	    <option value="writer">이름</option>
	    <option value="subject">제목</option>
	    <option value="content">내용</option>
	    <option value="all" selected>이름+제목+내용</option>
    </c:when>
  </c:choose>
  </select>

  <input name="keyword">
  <button id="btnSearch">검색</button>
  <!-- button 태그는 기본값이 type="submit"이다.
  type="button"하면 js를 써야한다. -->
</form>

<button id="btnWrite">글쓰기</button>
<table border="1" width="900px">
  <tr>
    <th>번호</th>
    <th>이름</th>
    <th>제목</th>
    <th>날짜</th>
    <th>조회수</th>
    <th>첨부파일</th>
    <th>다운로드</th>
  </tr>
 <c:forEach var="dto" items="${list}">
   <c:choose>
     <c:when test="${dto.show == 'y'}">
  <tr>
    <td>${dto.num}</td>
    <td>${dto.writer}</td>
    <td>
       <!-- 답글 들여쓰기 -->
       <c:forEach var="i" begin="1" end="${dto.re_level}">
         &nbsp;&nbsp;
       </c:forEach>
    <a href="${path}/board_servlet/view.do?num=${dto.num}">
    ${dto.subject}</a>
    <!-- 댓글갯수 표시 -->
    <c:if test="${dto.comment_count > 0}">
    	<span style="color: red;">(${dto.comment_count})</span>
    </c:if>
    </td>
    <td>${dto.reg_date}</td>
    <td>${dto.readcount}</td>
    <td align="center">
      <c:if test="${dto.filesize > 0}">
       <a href="${path}/board_servlet/download.do?num=${dto.num}">
        <img src="../images/file.gif">
       </a> 
<!-- 			 <script>
       setTimeout('location.reload()',1000);//다운로드 횟수를 1초마다 새로고침
       </script> -->
      </c:if>
    </td>
   <%--  <td>${dto.filename}</td> --%>
    
    <td id="reload">${dto.down}</td>
  </tr>
  </c:when>
  <c:otherwise>
    <tr>
      <td>${dto.num}</td>
      <td colspan="6" align="center">삭제된 게시물입니다.</td>
    </tr>
  </c:otherwise>
  </c:choose>
 </c:forEach> 
</table>
</body>
</html>