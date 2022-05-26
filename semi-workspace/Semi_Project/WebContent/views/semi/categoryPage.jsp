<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    
    
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
  <link rel="stylesheet" href="/Semi/resources/css/categoryPage.css">


<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<%@include file="/views/common/menubar.jsp"%>

      <!-- <script>
        function change_cate(){
          if(onclick="#boal"){
            var changedCate = document.getElementsByClassName("category")
            changedCate.
          }
          
        }


      </script> -->

      <!-- 첫번째 카테고리 나열 -->

      <div class="category">
        <ul id="top-cate">
          <a href="<%=contextPath %>/views/semi/detailPage.jsp"><li id="top-cate1"><img src="http://melkinsports.com/web/product/big/20200227/03b2e81be93aafa5ff4f92f02d6c45d6.png" alt=""></li></a>
          <a href="<%=contextPath %>/views/semi/detailPage.jsp"><li id="top-cate2"><img src="http://melkinsports.com/web/product/big/20200227/03b2e81be93aafa5ff4f92f02d6c45d6.png" alt=""></li></a>
          <a href="<%=contextPath %>/views/semi/detailPage.jsp"><li id="top-cate3"><img src="http://melkinsports.com/web/product/big/20200227/03b2e81be93aafa5ff4f92f02d6c45d6.png" alt=""></li></a>
          <a href="<%=contextPath %>/views/semi/detailPage.jsp"><li id="top-cate4"><img src="http://melkinsports.com/web/product/big/20200227/03b2e81be93aafa5ff4f92f02d6c45d6.png" alt=""></li></a>
          <a href="<%=contextPath %>/views/semi/detailPage.jsp"><li id="top-cate5"><img src="http://melkinsports.com/web/product/big/20200227/03b2e81be93aafa5ff4f92f02d6c45d6.png" alt=""></li></a>
        </ul>
        <ul id="bottom-cate">
          <a href="<%=contextPath %>/views/semi/detailPage.jsp"><li id="bottom-cate1"><img src="https://contents.lotteon.com/itemimage/_v111222/LO/15/07/45/49/91/_1/50/74/54/99/2/LO1507454991_1507454992_1.jpg/dims/resizef/720X720" alt=""></li></a>
          <a href="<%=contextPath %>/views/semi/detailPage.jsp"><li id="bottom-cate2"><img src="https://contents.lotteon.com/itemimage/_v111222/LO/15/07/45/49/91/_1/50/74/54/99/2/LO1507454991_1507454992_1.jpg/dims/resizef/720X720" alt=""></li></a>
          <a href="<%=contextPath %>/views/semi/detailPage.jsp"><li id="bottom-cate3"><img src="https://contents.lotteon.com/itemimage/_v111222/LO/15/07/45/49/91/_1/50/74/54/99/2/LO1507454991_1507454992_1.jpg/dims/resizef/720X720" alt=""></li></a>
          <a href="<%=contextPath %>/views/semi/detailPage.jsp"><li id="bottom-cate4"><img src="https://contents.lotteon.com/itemimage/_v111222/LO/15/07/45/49/91/_1/50/74/54/99/2/LO1507454991_1507454992_1.jpg/dims/resizef/720X720" alt=""></li></a>
          <a href="<%=contextPath %>/views/semi/detailPage.jsp"><li id="bottom-cate5"><img src="https://contents.lotteon.com/itemimage/_v111222/LO/15/07/45/49/91/_1/50/74/54/99/2/LO1507454991_1507454992_1.jpg/dims/resizef/720X720" alt=""></li></a>
        </ul>
      </div>
</body>
</html>