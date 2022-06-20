<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .outer{

        width:800px;
        background-color:rgba(253, 201, 201, 0.836);
        margin:auto;
        margin-top:10px;
        box-sizing: border-box;
    }
</style>
</head>
<body>
	<%@include file="/views/common/menubar.jsp" %>
	
    <div class="outer">
        <br><h2 align="center">공지사항 상세보기</h2><br>

        <table id="detail-area" align="center" border="1px">
            <tr>
                <th width="70px">제목</th>
                <td colspan="3" width="350px">${notice.noticeTitle}</td>
            </tr>
            <tr>
                <th>작성자</th>
                <td>${notice.noticeWriter}</td>
                <th>작성일</th>
                <td>${notice.createDate}</td>
            </tr>
            <tr height="200px">
                <th>내용</th>
                <td colspan="3"><p>${notice.noticeContent}</p></td>

            </tr>
        </table>
        <br><br><br>
        
        <div align="center">
            <a href="<%=contextPath%>/list.no" class="btn btn-dark">목록으로 가기</a>

            <c:if test="${loginUser.userId eq 'admin' }">
            	<a href="<%=contextPath%>/updateForm.no?nno=${notice.noticeNo}" class="btn btn-dark">수정하기</a>
            	<a href="<%=contextPath%>/delete.no?nno=${notice.noticeNo}" class="btn btn-dark">삭제하기</a>
            </c:if>
        </div>
    </div>

</body>
</html>