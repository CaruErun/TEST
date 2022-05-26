<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
	Member loginUser = (Member)session.getAttribute("loginUser");
	String contextPath = request.getContextPath();
	//loginUser가 null이면 로그인전
	//loginUser가 null이 아니면 로그인 후 화면을 보여주면 된다.
	
	String alertMsg =(String)session.getAttribute("alertMsg");
	boolean isAdmin = loginUser !=null && loginUser.getUserId().equals("admin");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
  <link rel="stylesheet" href="<%=contextPath %>/resources/css/menubar2.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<!-- HEADER -->
  <header>
  
 
    <div class="inner">

    <a href="<%=contextPath %>/" class="logo"><img src="/Semi/resources/img/DsSports.png" alt="DS SPORTS"></a>
    
    <!-- top navi -->
    <div class="top-navi">
      <ul class="navi">
        <li><a href="#">로그인</a></li>
        <li><a href="#">회원가입</a></li>
        <li><a href="#">마이페이지</a></li>
        <li><a href="#">고객센터</a></li>
      </ul>
    </div>
    <!-- input -->
    <div class="search">
      <input id="search-button" type="text" placeholder="검색" style="font-size: 20px;">
      <div class="material-icons">search</div>
    </div>
    <!-- order -->
    <div class="order">
      <div id="order">
        <a href="#">
          <div class="material-symbols-outlined">
          shopping_cart
        </div>
        </a>
      </div>
    <div id="favor">
      <a href="#">
        <div  class="material-symbols-outlined">
          favorite
        </div>
      </a>
    </div>
  </div>
</div>
</header>

</body>
</html>