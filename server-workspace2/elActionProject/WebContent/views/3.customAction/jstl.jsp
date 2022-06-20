<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>JSTL이란</h3>
	
	<p>
		JSP Standard Tag Library의 약자로 JSP에서 사용되는 커스텀 액션 태그로<br>
		공통적으로 사용되는 코드들의 집합을 보다 쉽게 사용할 수 있도록 태그화해서 표준으로 제공하는 라이브러리
		
	</p>
	
	<h3>라이브러리 다운로드 후 추가</h3>
	1) https://tomcat.apache.org/download-taglibs.cgi 접속 <br>
	2) jar 4개 다운로드 후 추가

	<h3>JSTL 선언 방법</h3>
	<p>
		JSTL을 선언하고자 하는 해당 jsp 페이지 상단에<br>
		taglib 지시어를 사용해서 선언한다. <br>
		
		&lt;%@ taglib prefix="접두어" uri ="라이브러리 파일상의 url 주소"%&gt;
	</p>
	
	<hr>
	<h3>JSTL 분류</h3>
	<h4>1. JSTL Core Library</h4>
	<p>
		변수, 조건문 및 반복문 등의 로직과 관련된 문법을 제공
	</p>
	
	<a href="01_core.jsp">core library</a>
	
	<h4>2. formatting</h4>
	
	<a href="02_formatting.jsp">formatting</a>
	
	<br>
	
	<h4>3. JSTL Function Library</h4>
	<p>
		EL 구문 안에서 사용할 수 있는 메소드 제공
	</p>
	<a href="03_function.jsp">function Library</a>
	
	
</body>
</html>