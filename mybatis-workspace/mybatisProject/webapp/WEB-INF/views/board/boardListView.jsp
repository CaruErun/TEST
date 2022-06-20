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
    .outer td:hover, .outer button:hover{
    	cursor : pointer;
    }
    #search-area>form{
		text-align:center;
    }
    #search-area input{
    	font-size:12pt;
    }
</style>
</head>
<body>

    <%@ include file="/WEB-INF/views/common/menubar.jsp"%>

    <div class="outer">
        <br>
        <h2 align="center">일반 게시판</h2>
        <c:if test="${not empty search }">
        <div align="center">
        <b>검색결과</b>
        </div>
        <div style="height:50px"></div>
        </c:if>
        <div id="search-area">
            <form action="search.bo" method="get">
                <input type="hidden" name="cpage" value="1">
                <select name="type" style="height:35px;">
                    <option value="writer">작성자</option>
                    <option value="title">제목</option>
                    <option value="content">내용</option>
                </select>
				<script>
					var n = document.getElementsByTagName("option");
					for(var i=0;i<n.length;i++){
						if(n[i].value=='${search.type}') n[i].selected=true;
					}
				</script>
                <input type="text" name="keyword" value="${search.keyword }" style="height:30px;width:400px;">

                <button type="submit" style="height:30px">검색</button>

            </form>
        </div>
        <div style="height:30px"></div>    
        <table align="center" class="list-area">
            <thead>
                <tr>
                    <th width="70">글번호</th>
                    <th width="400">제목</th>
                    <th width="100">작성자</th>
                    <th width="50">조회수</th>
                    <th width="100">작성일</th>
                </tr>
            </thead>
            <tbody>
            
            	<c:choose>
            		<c:when test="${empty list }">
            			<tr>
            				<td colspan="5">조회된 게시글 없음</td>
            			</tr>
            		</c:when>
            		<c:otherwise>
            			<c:forEach var="b" items="${list }">
               	 			<tr onclick="location.href ='detail.bo?bno=${b.boardNo}'">
                    			<td>${b.boardNo}</td>
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
            <a href="enrollForm.bo" class="btn btn-dark">글쓰기</a>
     
        </div>
        </c:if>
        <br>
		<div class="paging-area" align="center">
		
		
        <c:if test="${pi.startPage ne 1}">
        <button onclick="location.href='list.bo?cpage=${pi.startPage - pi.boardLimit}'">이전</button>
        </c:if>
        <c:if test="${pi.startPage ne 1 and not empty search }">
        <button onclick="location.href='search.bo?cpage=${pi.startPage - pi.boardLimit}&type=${search.type }&keyword=${search.keyword }'">이전</button>
        </c:if>  
        
        <c:if test="${empty search }">
            <c:forEach var="i" begin="${pi.startPage }" end="${pi.endPage }">
            	<button onclick="location.href='list.bo?cpage=${i }'">${i }</button>
            </c:forEach>
        </c:if>
        <c:if test="${not empty search }">
            <c:forEach var="i" begin="${pi.startPage }" end="${pi.endPage }">
            	<button onclick="location.href='search.bo?cpage=${i }&type=${search.type }&keyword=${search.keyword }'">${i }</button>
            </c:forEach>
        </c:if>        
        
        <c:if test="${pi.endPage ne pi.maxPage and empty search}">
        <button onclick="location.href='list.bo?cpage=${pi.endPage +1 }'">다음</button>
		</c:if>
        <c:if test="${pi.endPage ne pi.maxPage and not empty search}">
        <button onclick="location.href='search.bo?cpage=${pi.endPage +1 }&type=${search.type }&keyword=${search.keyword }'">다음</button>
		</c:if>		

        </div>
        
    </div>
</body>
</html>