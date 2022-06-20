<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList,com.kh.model.vo.Person"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>JSTL Core Library</h3>
	<pre>
	* 변수 선언(&lt;c:set var="변수명" value="리터럴" scope="스코프 영역 지정(생략가능)" &gt;)
	- 변수를 선언하고 초기 값을 대입해두는 기능을 제공한다.(반드시 초기 값 초기화 해야함)
	- 해당 변수를 어떤 scope 영역에 담아둘건지 지정가능(생략시 pageScope)
		-> 해당 scope 영역에 setAttribute key value 형태로 데이터 저장
		-> c:set을 통해 선언된 변수는 EL로 접근해서 사용 가능(스크립트원소로는 접근 불가)
		
	! 변수의 타입을 별도로 지정하지 않음
	! 반드시 값 초기화 해야함
	</pre>
	
	<c:set var="num1" value="10"/>
	<c:set var="num2" value="20" scope="request"/>
	
	${num1 } <br>
	${requestScope.num2 } <br>
	<c:set var="result" value="${num1+num2}" scope="session"/><br>
	<!-- 변수명만 제시하면 공유 범위가 가장 작은 곳부터 찾기 때문에 처리 속도가 느려질 수 있음 -->
	${sessionScope.result }<br>
	
	<c:set var ="result" scope="request">사이에 넣으면 value 값 됨</c:set>
	
	${requestScope.result }<br>
	
	<hr>
	
	<pre>
	* 변수 삭제(&lt;c:remove var="제거하고자하는 변수 명" scope="스코프 영역"&gt;)
		- 해당 변수를 scope에서 찾아 제거하는 태그
		- scope 영역지정을 생략하면 모든 scope 영역에 있는 해당 변수 찾아 제거
		- 해당하는 scope 영역 removeAttribute() 메소드를 사용하는 것과 같음
	
	</pre>
	
	삭제 전 result : ${result } <br>
	<c:remove var="result" scope="request"/>
	
	삭제 후 result : ${result } <!-- request만 삭제 돼 session result 값 반환 -->
	
	<hr>
	
	<pre>
		*변수(데이터) 출력 (&lt;c:out value="출력 값" default="기본값(생략가능)" escapeXml="true(기본값, 생략가능)/false"&gt;)
		
		-데이터를 출력하고자 할 때 사용하는 태그
		-기본 값 : value에 출력하고자 하는 값이 없을 경우 기본 값으로 출력할 값을 설정(생략 가능)
		-escapeXml : 태그로써 해석해서 출력할지 여부(생략가능)
	</pre>
	
	result : <c:out value="${result }"/> <br>
	default 설정 result : <c:out value="${requestScope.result }" default="없음"/><br>
	
	<!-- escapeXml 확인 -->
	<c:set var="outTest" value="<b>Hi</b>"/>
	
	<c:out value="${outTest}"/> <br>
	<c:out value="${outTest}" escapeXml="false"/> <br>
	
	<hr>
	
	<h3>2. 조건문 - if (&lt;c:if test="조건식" &gt;)</h3>
	<pre>
		- JAVA의 단일 if 문과 비슷하다.
		- 조건식은 test라는 속성에 작성 (el 구문으로 작성해야함)
	</pre>
	
	<c:if test="${num1<num2}">
	<!-- 조건이 true일때 실행할 구문 -->
		123
	
	</c:if><br>
	
	<c:set var="str" value="Hi"/>
	
	<c:if test="${str eq 'Hi' }">
		"Hi"
		<mark>hi</mark>
	</c:if>
	
	
	<c:if test="${str ne 'Hi' }">
		"Hello"
	</c:if>
	
	<h3>3.조건문 choose(&lt;c:choose&gt; &lt;c:when&gt; &lt;c:otherwise&gt;)</h3>
	
	<pre>
		- JAVA의 if-else 또는 switch문과 비슷한 역할을 하는 태그
		- 각 조건들을 c:choose 하위 요소로 c:when 을 통해서 작성
		
	</pre>
	
	<c:choose>
		<c:when test="${num1 eq 10}">
			<b> Hi </b>
		</c:when>
		
		<c:when test="${num1 eq 20 }">
			<b> Hello</b>
		</c:when>
		
		<c:otherwise>
			<b> bye </b>
		</c:otherwise>
	
	</c:choose>
	<!-- choose 문 안에 바로 주석 넣을 수 없음 -->
	<br><br>
	<h3>4.반복문 -forEach</h3>
	<pre>
		for loop문 - (&lt;c:forEach var="변수명" begin="초기 값" end="끝 값" step="증가 시킬 값"&gt;)
		향상된 for 문 - (&lt;c:forEach var="변수 명" items="순차적 접근 배열" varStatus="접근 요소 상태값 보관 변수명(생략가능)"&gt;)
		
		- step : 생략 시 기본 값 : 1
		- varStatus : 현재 접근된 요소의 상태 값을 보관할 변수 명(생략가능)
	</pre>
	
	<!-- for loop -->
	<c:forEach var="i" begin="0" end="9" step="1">
		${num1+i }<br>
		<h${i}> ${i} </h${i}>
	</c:forEach>
	<!-- 태그 안에서 i 돌리기 가능 -->
	<br>i : ${i}
	<c:set var="color">
		red,yellow,green,blue
	</c:set>
	<br><br>
	<c:forEach var="c" items="${color}" varStatus="cc">
		<li style="color:${c}">${c}</li><br>
	</c:forEach>
	<!-- 반복문에서 var은 어떠한 표현식도 받아들이지 않음(EL로 가져와서 쓰기 불가능) -->
	c: ${c}
	<c:set var="number" scope="session">
	1,2,3,4
	</c:set>
	<c:set var="numberC" scope="session">
	</c:set>
	
	<%
		ArrayList<Person> list = new ArrayList<>();
		list.add(new Person("dd",30,"man"));
		list.add(new Person("ff",20,"woman"));
		list.add(new Person("gg",10,"man"));
		
		request.setAttribute("pList", list);
	%>
	<br><br>
	<table>
		<tr>
			<th>순번</th>
			<th>이름</th>
			<th>나이</th>
			<th>성별</th>
		</tr>
		<c:choose>
			<c:when test="${empty pList }">
				<tr>
					<td colspan="4">조회된 결과가 없습니다.</td>
				</tr>
			</c:when>
			<c:otherwise>
				<c:forEach var="p" items="${pList }" varStatus="pp"> 
					<tr>
						<td>
							${pp.count }<!-- index=0부터 count=1부터 -->
						</td>
						<td>
							${p.name }
						</td>
						<td>
							${p.age }
						</td>
						<td>
							${p.gender }
						</td>
					</tr>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</table>
	
	<hr>
	
	<h3>5.반복문 - forTokens</h3>
	
	<pre>
		&lt;c:forTokens var = "값을 보관할 변수" items="분리시키고자 하는 문자열" delims="구분자"&gt;
		
		-구분자를 통해서 분리된 각각의 문자열에 순차적 접근 반복수행(split, StringTokenizer)
		
	</pre>
	
	<c:set var="menu" value="밥,콜라,자장면,냠냠"/>
	
	<ul>
		<c:forTokens var="m" items="${menu }" delims="/,.">
			<li>${m }
		</c:forTokens>
	</ul>
	
	<h3>6. 쿼리스트링 - url, param</h3>
	
	<pre>
	&lt;c:url var="" value="요청할 url" &gt;
		&lt;c:param name="키 값" value="밸류값" /&gt;
		...
		...
	&lt;/c:url
	</pre>
	- url 경로를 생성하고, 쿼리스트링을 정의할 수 있는 태그
	- 넘겨야할 쿼리스트링이 길 때 사용하기 편하다.
	
	<c:url var="query" value="list.do">
		<c:param name="cPage" value="1"/>
		<c:param name="keyword" value="dd"/>
	</c:url>
</body>
</html>