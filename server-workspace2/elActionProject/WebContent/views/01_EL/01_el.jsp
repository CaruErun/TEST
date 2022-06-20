<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.model.vo.Person"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>1. 기존 방식대로 스크립틀릿과 표현식을 이용해서 각 영역에 담겨있는 값 뽑아서 화면에 출력</h3>
	
	<%
		//requestScope에 담긴 값 뽑기
		String food = (String)request.getAttribute("food");
		Person student = (Person)request.getAttribute("student");
	
		String drink = (String)request.getSession().getAttribute("drink");
		Person teacher = (Person)request.getSession().getAttribute("teacher");
	%>
	
	<p>
		음식 : <%=food %><br>
		음료 : <%=drink %><br>
		학생 : <%=student %><br>
		강사 : <%=teacher %><br>
	</p>
	
	<hr>
	
	<h3>2.EL을 이용해 Scope 저장된 값 화면 출력</h3>
	
	<p>
		EL은 getXXX을 통해서 값을 꺼낼 필요 없이 키값만 제시하면 바로 접근 가능<br>
		내부적으로 해당 Scope 영역에 해당 키 값의 밸류 값을 가지고 올 수 있다<br>
		기본적으로 EL은 JSP 내장 객체를 구분하지 않고 자동적으로 모든 내장객체에 <br>
		키 값을 검색해서 존재하는 경우에 값을 가져오게 된다.
		
	</p>
	
	<p>
		음식 : ${food } <br>
		음료 : ${drink} <br>
		강사 : ${teacher} <br>
		강사 이름 : ${teacher.name }<br>
	</p>
	
	<br>
	
	teacher에 접근했을 때 value는 Person 객체로 자동 지정됨
	해당 Person 객체 필드 값에 접근하려면 객체 변수 .필드명으로 접근하면됨
	내부적으로 자동 getter 메소드 찾아서 실행함 (getter 메소드 생성 필수)

	<br><br>
	
	학생:
	<ul>
		<li>이름 : ${student.name }</li>
		<li>이름 : ${student.age }</li>
		<li>이름 : ${student.gender }</li>
	</ul>
	
	<hr>
	
	<h3>3.EL 사용시 내장 객체들이 저장된 키 값이 같을 경우</h3>
	
	EL은 공유 범위가 가장 작은 Scope부터 key값을 검색한다.
	page -> request -> session -> application 순
	
	<hr>
		
	<h3>4. 직접 Scope 영역을 지정해서 접근</h3>
	<%
		pageContext.setAttribute("scope", "page");
	%>
	
	pageScope에 담긴 값 : ${scope} 또는 ${pageScope.scope} <br>
	requestScope에 담긴 값 : ${requestScope.scope} <br>
	sessionScope : ${sessionScope.scope }<br>
	applicationScope에 담긴 값 : ${applicationScope.scope }
</body>
</html>