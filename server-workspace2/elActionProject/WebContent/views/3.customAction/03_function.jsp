<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>JSTL Functions Library</h1>
	
	<c:set var="str" value="Hello World"/>
	<!-- 기존 사용 방식으로도 되기 때문에 fn 형식을 잘 사용하지 않음 -->
	str : ${str }<br>
	
	문자열의 길이  : ${fn:length(str)} / ${str.length() } <br> <!-- ArrayList Size도 같이 됨 -->
	
	대문자 :fn:toUpperCase(str)<br>
	
	인덱스(fn:indexOf(str, "찾을거")) <br>
</body>
</html>