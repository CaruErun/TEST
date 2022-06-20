<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .outer{
        height:500px;
        width:800px;
        background-color:lightpink;
        margin:auto;
        margin-top:10px;
        box-sizing: border-box;
    }

    .outer #important{
        width:100%;
        text-align: center;
    }
    table textarea,table #title{
        width:70%;
    }
</style>
</head>
<body>
    <%@ include file="/views/common/menubar.jsp"%>

    <div class="outer">
        <br><h2 align="center">공지사항 작성</h2>
        <br>
        <form action="<%=contextPath%>/insert.no" method="post">
        
        <table align="center" id="important">
            <tr>
                <th>제목</th>
                <td><input type="text" name="title" id="title" required></td>
            </tr>
            <tr>
                <th>내용</th>
                <td><textarea style="resize:none" cols="30" rows="10" name="content"></textarea></td>
            </tr>
        </table>
        <div align="center">
        <button type="submit">등록하기</button>
        <button type="button" onclick="history.back();">뒤로가기</button>
        </div>

        </form>
    </div>

    
</body>
</html>