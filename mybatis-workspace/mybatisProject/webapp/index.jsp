<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>MyBatis</h1>
	
	<!-- 
		* Framework
		 - 개발자가 보다 편리한 환경에서 개발을 할 수 있도록 제공하는 틀
		 - 소프트웨어 개발의 입장에서 봤을 때 공통으로 사용하는 라이브러리 / 개발 툴 / 인터페이스 등을 의미
		 
		 * Framework 사용 이유
		  - 웹 프로그래밍 규모가 커짐에 따라 프로젝트 복잡도 증가
		  - 높은 완성도를 위해 인원 통일성과 개발 속도, 안정성위해 사용 -> 생산성 증가
		  
		 * 특징
		  - 프레임워크에서 제공하는 가이드라인에 맞춰 개발 -> 개발 범위가 정해져 있음
		  - 다양한 도구 지원
		  
		 * 장단점
		  - 장점 : 개발 시간을 줄일 수 있음.
		  - 단점 : 의존 시 개발자 능력 저하 될 수 있음
		  
		 * 프레임워크의 종류
		  - 영속성 : 데이터 관련한(CRUD) 기능들을 편리하게 작업할 수 있는 프레임워크
		  - 자바 : 웹 애플리케이션에 초점을 맞춰 필요한 요소들 모듈화 제공 프레임워크
		  - 화면 구현 : Front-end 개발을 보다 쉽게 구현할 수 잇게 틀을 제공해주는 프레임워크
		  - 기능 및 지원 : 특정 기능 수행에 도움을 주는 기능을 제공하는 프레임워크
	 -->
	 <!-- index 페이지 로드 시 아래 주소로 포워딩됨 -->
	 <jsp:forward page="/WEB-INF/views/main.jsp"></jsp:forward>
	 <!--  WEB-INF 폴더는 WAS(Web Application Server)가 관리하기 때문에 직접 요청 불가능(forward 통해서 접근 가능) -->
	 
</body>
</html>