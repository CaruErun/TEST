<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>1. formatNumber</h1>
	<p>
		숫자데이터의 포맷(형식) 지정<br>
		 - 표현하고자 하는 숫자 데이터의 형식을 통화기호, % 등 맞게 지정하는 태그<br>
		 
		 &lt;fmt:formatNumber value="출력할 값 " groupingUsed="true/false"
		 									type="percent/currency" currencySymbol="$"/&gt;<br>
		 group ~ , type, curren~ 생략가능
	</p>
	
	<c:set var="num1" value="1234567"/><br>
	<c:set var="num2" value="0.8"/><br>
	<c:set var="num3" value="50000"/><br>
	
	<fmt:formatNumber value="${num1 }"/><br>
	group ~ false :<fmt:formatNumber value="${num1 }" groupingUsed="false"/><br><!-- 구분자(,)표시 여부 설정 -->
	
	percent : <fmt:formatNumber value="${num2 }" type="percent"/><br><!-- 소수점 백분율 -->
	
	currency : <fmt:formatNumber value="${num3 }" type="currency"/><!-- 화폐 표시 -->
	<!-- 통화 표시 바꾸고싶음 simbol 설정 -->
	
	<h3>2. formatDate</h3>
	
	<p>
		날짜 및 시간 데이터의 포맷(형식)을 지정<br>
		단, java.util.Date 객체를 사용해야함<br>
	</p>
	
	<c:set var="current" value="<%=new java.util.Date() %>"/>
	
	<ul>
		<li>
			현재 날짜 : <fmt:formatDate value="${current }" type="date"/>
		</li>
		
		<li>
			현재 시간 : <fmt:formatDate value="${current }" type="time"/>
		</li>
		<li>
			현재 날짜 및 시간 : <fmt:formatDate value="${current }" type="both"/>
		</li>
		<li>
			medium : <fmt:formatDate value="${current }" type="both" dateStyle="medium" timeStyle="medium"/>
		</li>
		<li>
			long : <fmt:formatDate value="${current }" type="both" dateStyle="long" timeStyle="long"/>
		</li>
		<li>
			full : <fmt:formatDate value="${current }" type="both" dateStyle="full" timeStyle="full"/>
		</li>
		<li>
			short : <fmt:formatDate value="${current }" type="both" dateStyle="short" timeStyle="short"/>
		</li>
		<li>
			customizing : <fmt:formatDate value="${current }" type="both" dateStyle="both" timeStyle="yyyy-MM"/>
		</li>
		
		<!-- pattern 속성 통해서 직접 형식 지정 가능 -->
		
				
	</ul>
</body>
</html>