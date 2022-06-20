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
    .list-area{
        border:1px solid black;
        text-align: center;
    }
</style>
</head>
<body>
    <%@ include file="/views/common/menubar.jsp"%>

    <div class="outer">
        <br>
        <h2 align="center">일반 게시판</h2>

        <table align="center" class="list-area">
            <thead>
                <tr>
                    <th width="70">글번호</th>
                    <th width="70">카테고리</th>
                    <th width="300">제목</th>
                    <th width="100">작성자</th>
                    <th width="50">조회수</th>
                    <th width="100">작성일</th>
                </tr>
            </thead>
            <tbody>
            	<c:choose>
            		<c:when test="${empty list }">
            			<tr>
            				<td>조회된 게시글 없음</td>
            			</tr>
            		</c:when>
            		<c:otherwise>
            			<c:forEach var="b" items="${list }">
                			<tr onclick="location.href ='<%=contextPath%>/detail.bo?bno=${b.boardNo}'">
                    			<td>${b.boardNo}</td>
                    			<td>${b.categoryNo}</td>
                    			<td>${b.boardTitle}</td>
                    			<td>${b.boardWriter}</td>
                    			<td>${b.count}</td>
                    			<td>${b.createDate}</td>
                			</tr>
                		</c:forEach>
                	</c:otherwise>
              	</c:choose>
            </tbody>
        </table>


        <br>
        <c:if test="${not empty loginUser }">
        	<div align="center">
            	<a href="<%=contextPath%>/enrollForm.bo" class="btn btn-dark">글쓰기</a>
        	</div>
        </c:if>
        <br>
        <div class="paging-area" align="center">
        	<c:if test="${pi.startPage ne 1}">
        		<button onclick="location.href='<%=contextPath%>/list.bo?cpage=${pi.startPage - pi.boardLimit}'">이전</button>
        	</c:if>
        	<c:forEach var="i" begin="${pi.startPage }" end="${pi.endPage}">
            	<button onclick="location.href='<%=contextPath%>/list.bo?cpage=${i}'">${i}</button>
            </c:forEach>
            <c:if test="${pi.endPage ne pi.maxPage }">
        		<button onclick="location.href='<%=contextPath%>/list.bo?cpage=${pi.endPage +1 }'">다음</button>
			</c:if>

        </div>
        
    </div>
</body>
</html>