<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .outer{
            background-color: bisque;
            color: darkgoldenrod;
            width: 1000px;
            margin: auto;
            margin-top: 50px;
            height: 800px;
        }
    .outer a {
    	color:black;
        text-decoration:none;
    }
    .outer a:hover{
    	cursor:pointer;
    }
    #detail-area td{
    	text-align:center;
    }
</style>
</head>
<body>
    <%@ include file="/WEB-INF/views/common/menubar.jsp"%>
    <div class="outer">
        <br>
        <h2 align="center">일반 게시판 상세보기</h2>
        <br>

        <table id="detail-area" align="center" border="1">
        	<tr>
        		<th colspan="2" height="50px"> 글 번호</th>
        		<td colspan="2"> ${board.boardNo }</td>
        	</tr>
        	<tr>
        	</tr>
            <tr>
                <th width="100px" height="50px">제목</th>
                <td>${board.boardTitle}</td>
                <th width="100px">조회수</th>
                <td width="150px">${board.count }</td>
            </tr>
            <tr>
                <th height="50px">작성자</th>
                <td>${board.boardWriter}</td>
                <th>작성일</th>
                <td>${board.createDate}</td>
            </tr>
            <tr>
                <th height="200px">내용</th>
                <td colspan="3">${board.boardContent}</td>
            
            </tr>
            <tr>
                <th height="50px">첨부파일</th>
                <td colspan="3">
                	<c:choose>
                	<c:when test="${empty Attachment }">
                		첨부파일이 없습니다.
                	</c:when>
                	<c:otherwise>
                		<%-- <a download="<%=a.getOriginName() %>" href="<%=contextPath%>/<%=a.getFilePath()+a.getChangeName()%>"><%=a.getOriginName() %></a>--%>
                		첨부파일이 있습니다.
                	</c:otherwise>
                	</c:choose>
                </td>
            </tr>
        </table>

        <br>

        <div align="center">
            <a onclick = "history.back()">목록으로</a>
           <c:if test="${not empty loginUser and (logonUser.userName eq board.boardWriter or loginUser.userId eq 'admin')}">
           <!--로그인한 사용자가 게시글 작성자일 경우-->
            <a href="updateForm.bo?bno=${b.boardNo}">수정하기</a>
            <a href="delete.bo?bno=${b.boardNo}">삭제하기</a>
            </c:if>
       
        </div>

        <div id="reply-area">
            <table align="center" border="1">

                <thead>
                <c:choose>
                <c:when test="${not empty loginUser }">
                    <tr>
                        <th> 댓글 작성</th>
                        <td>
                            <textarea id="replyContent" cols="50" rows="3" style="resize:none;"></textarea>
                        </td>
                        <td><button onclick="insertReply();">댓글 등록</button></td>
                    </tr>
                </c:when>
                <c:otherwise>
                    <tr>
                        <th> 댓글 작성</th>
                        <td>
                            <textarea id="replyContent" cols="50" rows="3" style="resize:none;" readonly>로그인 후 이용 가능</textarea>
                        </td>
                        <td><button disabled>댓글 등록</button></td>
                    </tr>
                </c:otherwise>
                </c:choose>
                </thead>
                <tbody>

                </tbody>
            </table>

            <<script>
                $(function(){
                    selectReply();
                })
                function insertReply(){
                    $.ajax({
                        url:"replyInsert.bo",
                        data : {
                            content : $("#replyContent").val(),
                            bno : ${board.boardNo}
                        },
                        type:"post",
                        success : function(result){
                        	alert("댓글이 등록되었습니다.");
                            selectReply();
                            $("#replyContent").val("");
                        },
                        error : function(){
                            console.log("ajax 통신 실패");
                        }

                    })
                }

                function selectReply(){
                    $.ajax({
                        url:"replyList.bo",
                        data:{bno : ${board.boardNo}},
                        success : function(result){
                            var row="";
                            for(var i in result){
                                row+= "<tr>"
                                    + "<td align='center'>"+result[i].replyWriter+"</td>"
                                    + "<td>"+result[i].replyContent+"</td>"
                                    + "<td>"+result[i].createDate+"</td>"
                                    + "</tr>";
                            }
                            $("#reply-area tbody").html(row);
                        },
                        error : function(){
                            console.log("실패");
                        }
                    })
                }

            </script>
        </div>




    </div>


</body>
</html>