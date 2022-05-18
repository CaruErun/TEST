<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList,com.kh.notice.model.vo.Notice"%>
<%
	ArrayList<Notice> list = (ArrayList<Notice>)request.getAttribute("list");


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

<style>
    #contable{
        text-align: center;
    }
    #writebtn{
        text-align: right;
    }
</style>
</head>
<body>
	<%@ include file="../common/menubar.jsp" %>
    <br><br><h2 align="center">공지사항</h2>

    <div class="outer container">
    <%if(loginUser!=null && loginUser.getUserId().equals("admin")) {%>
        <div id="writebtn">
            <button class="btn btn-dark" onclick="location.href='<%=contextPath%>/enrollForm.no'">글작성</button>
        </div>
        <%}%>
        <br>
        <table align="center" class="table-hover table" id="contable">
            <thead>
                <tr>
                    <th width="10%">글번호</th>
                    <th width="50%">글제목</th>
                    <th width="15%">작성자</th>
                    <th width="10%">조회수</th>
                    <th width="15%">작성일</th>
                </tr>
            </thead>
            <tbody>
            <%if(list.isEmpty()) {%>
            	<tr>
            		<td colspan="5">존재하는 공지사항이 없습니다.</td>
            	</tr>
            <%} else{%>
            <%for(Notice n : list) {%>
                <tr>
                    <td><%=n.getNoticeNo()%></td>
                    <td><%=n.getNoticeTitle()%></td>
                    <td><%=n.getNoticeWriter()%></td>
                    <td><%=n.getCount()%></td>
                    <td><%=n.getCreateDate()%></td>
                </tr>
          <%}%>
          <%}%>
            </tbody>
        </table>
    </div>
    <script>
        $(function(){
           $(".table-hover>tbody>tr").click(function(){
              	var nno = $(this).children().eq(0).text();
                location.href='<%=contextPath%>/detail.no?nno='+nno;
           });
        })
    </script>
</body>
</html>