<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>EL 연산</h2>
	
	<h3>1. 산술 연산</h3>
	<p>
		*기존 방식 <br>
		10 + 3 = <%=(int)request.getAttribute("big")+(int)request.getAttribute("small") %>
	</p>
	<hr>
	<p>
		*EL 연산<br>
		
		10 + 3 = ${big + small }<br>
		10 - 3 = ${big - small }<br>
		10 / 3 = ${big / small }<br>
		10 % 3 = ${big % small }<br>
	</p>
	
	<hr>
	
	<h3>2. 숫자간 대소 비교 연산</h3>
	
	<p>
		*EL 연산 <br>
		10 > 3 = ${big > small} <br>
		10 < 3 = ${big < small } <br>
		10 >= 3 = ${big >= small } <br>
		10 <= 3 = ${big <= small } <br>
		
		10 > 3 = ${big gt small} <br>
		10 < 3 = ${big lt small } <br>
		10 >= 3 = ${big ge small } <br>
		10 <= 3 = ${big le small } <br>
	</p>
	
	<h3>3. 동등 비교 연산자</h3>
	<p>
		*EL 연산<br>
		10과 3이 일치하는지 = ${big == small} <br>
		big 에 담긴 값이 10과 일치하는지 ${big == 10} <br>

		sOne과 sTwo 가 일치 하는지 ${sOne == sTwo} <br>
		sOne과 sTwo 가 일치 하지 않는지 ${sOne != sTwo }<br>
		
		sOne에 담긴 값이 "Hi" 와 일치 하는지 ${sOne == "Hi" }<br>
		
				<br><br>
		10과 3이 일치하는지 = ${big eq small} <br>
		big 에 담긴 값이 10과 일치하는지 ${big eq 10} <br>
		sOne과 sTwo 가 일치 하는지 ${sOne eq sTwo} <br>
		sOne과 sTwo 가 일치 하지 않는지 ${sOne ne sTwo }<br>
		
		sOne에 담긴 값이 "Hi" 와 일치 하는지 ${sOne eq "Hi" }<br>
		
		<br><br>
	</p>
	
	<h3>4. 객체가 null인지 또는 리스트가 비어있는지 확인하는 연산</h3>
	<p>
		*EL연산<br>
		pTwo 가 null 입니까 ? : ${pTwo == null} 또는 ${empty pTwo }<br>
		pOne이 null이 아닙니까? : ${pOne != null} 또는 ${not empty pOne } <br>
	</p>
	
	<h3>5. 논리 연산자 </h3>
	<p>
		*EL연산<br>
		AND 연산 : ${true && true} 또는 ${true and true} <br>
		OR 연산 : ${true || true} 또는 ${true or true} <br>
	</p>
	
	<h3>연습문제</h3>
	
	<p>
		${(big gt small) and (empty lOne) }<br>
		${big * small mod 4 eq 0 }<br>
		${(not empty lTwo) or (sOne eq "Hello") } <br>
	</p>
</body>
</html>