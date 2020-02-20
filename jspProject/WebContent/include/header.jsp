<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--
1)JSTL (Jsp Standard Tag Library, JSP 표준 태그 라이브러리)
2)JSTL 사용 이유 : model1은 jsp페이지 중심, model2는 
java코드(서블릿,모델)중심, jsp웹페이지에서 java코드를 안쓸 수는 없지만
이를 최소화 하기 위해 JSTL과 EL기법을 씀, 즉 jsp 내부의 복잡한 
자바코드를 대체하기 위한 태그
3) taglib prefix="태그 접두어" uri="태그라이브러리의 식별자"
4) Core tag(핵심 태그, 제일 자주 사용되는 태그들) => 태그 접두어로 접근
ex)prefix="c"

  -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- set var="변수명" value="값" -->
<c:set var="path" value="${pageContext.request.contextPath}" />

<!-- 위와 같은 코드로 자주 쓰이기 때문에 header에 넣고 include시킴  -->
<%-- <% String path=request.getContextPath(); %>
<%=path %> --%>


