<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>include</h2>
	<p>또 다른 페이지를 포함하고자 할 때 쓰이는 방식</p>
	
	<h4>1. 기존의 include 지시어를 이용한 방식 (정적인 방식 - 컴파일 시 포함되는 형태)</h4>
	
	<%@ include file="footer.jsp" %>
	<br>
	
	특징 : include 하고 있는 페이지 상에 선언되어 있는 변수를 사용할 수 있다.<br>
	include 한 페이지의 year 변수 값 : <%=year %>
	
	현재 이 페이지에서 동일한 이름의 변수를 선언할 수 없다.
	
	<br><br>
	
	<h4>2. JSP 표준 액션 태그를 이용해서 include (동적인 방식 - 런타임 시 포함되는 형태)</h4>
	
	<!-- 
		반드시 시작태그와 종료태그를 같이 써야함 (XML 기술 사용했기 때문)
		단, 시작태그와 종료 태그 사이에 넣을 값이 없으면 태그 하나로 표현 가능
	 -->
	 
	 <jsp:include page="footer.jsp"/>
	 
	 
	 <br><br>
	 특징 1 : include 하고 있는 페이지에 선언된 변수를 공유하지 않음 (즉, 동일한 이름의 변수 선언 가능) <br>
	 
	 특징 2 : 포함 시 include 하는 페이지로 값을 전달할 수 있음 <br><br>
	 
	 <jsp:include page="footer.jsp">
	 	<jsp:param value="HELLO." name="test"/>
	 </jsp:include>
</body>
</html>