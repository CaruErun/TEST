<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.notice.model.vo.Notice"%>
<%
	Notice notice = (Notice)request.getAttribute("notice");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .outer{
        background-color: lightcoral;
        color : white;
        font-weight: bold;
        width:1000px;
        margin: auto;
        margin-top: 50px;
    }
    #updateform table{margin:auto;}
    #updateform input{margin:5px;}

</style>
</head>
<body>
	<%@ include file="../common/menubar.jsp" %>
    <div class="outer">
    <h2 align="center">공지사항 수정하기</h2>
    <form id="updateform" action="<%=contextPath %>/update.no" method="post">
    	<input type="hidden" name="nno" value="<%=notice.getNoticeNo() %>">
        <table align="center">
            <tr>
                <th width="50px">제목</th>
                <td width="400px"><input type="text" name="title" value="<%=notice.getNoticeTitle() %>" required></td>
            </tr>
            <tr>
                <th>내용</th>
                <td>
                    <textarea name="content" cols="30" rows="10" sylte="resize:none"><%=notice.getNoticeContent()%></textarea>
                </td>

            </tr>
        </table>

        <div align="center">
            <button type="submit">수정하기</button>
            <button type="button" onclick="history.back()">뒤로가기</button>
        </div>

    </form>
</div>
</body>
</html>