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
  <link rel="stylesheet" href="./resources/css/main.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<%@include file="/views/common/menubar.jsp"%>

 

      <!-- 인기상품 + 공지 영역-->
      <div class="middle">
        <!-- 인기상품 -->
        <div id="pop-pr">
        <img src="https://i.ytimg.com/vi/lY3__IHES6A/maxresdefault.jpg" alt="pop-pr">
        </div>
        <!-- 공지사항 -->
        <div id="notice">공지사항
            <div id="content">
              <li><a href="./notice.html">공지제목1</a></li>
              <li><a href="./notice.html">공지제목2</a></li>
              <li><a href="./notice.html">공지제목3</a></li>
            </div>
        </div>
      </div>
      <!-- 인기상품 + 공지 영역 여기까지-->
      <!-- 인기 헬스장-->
      <div class="pop-gym">
        <div id="gym1">
          <img src="https://www.hsuco.or.kr/sports/File/Download/79b8474ed11e47c9c7bc3b6b3e7af76d" alt="gym1">
          <textarea name="gym1-text" id="gym1-text" cols="30" rows="10"></textarea>
        </div>
        <div id="gym2">
          <img src="https://www.ddc.go.kr/site/ddc/images/contents/cnt_1833_img02.jpg" alt="gym2">
          <textarea name="gym1-text" id="gym1-text" cols="30" rows="10"></textarea>
        </div>
        <div id="gym3">
          <img src="https://www.yong-san.or.kr/sc/upload/photo/f98e7cb4d5d66ead5eba02fd5abe28d8.jpg" alt="gym3">
          <textarea name="gym1-text" id="gym1-text" cols="30" rows="10"></textarea>
        </div>
      </div>
      <!-- 인기 헬스장 여기까지-->
      <div id="footer">
        <div id="footer_1">
            <a href="#">이용약관</a> |
            <a href="#">개인정보취급방침</a> |
            <a href="#">인재채용</a> |
            <a href="#">고객센터</a>
        </div>
        <div id="footer_2">
            <p id="p1">
                강남지원 1관 : 서울특별시 강남구 테헤란로14길 6 남도빌딩 2F, 3F, 4F, 5F, 6F <br>
                강남지원 2관 : 서울특별시 강남구 테헤란로10길 9 그랑프리 빌딩 4F, 5F, 7F <br>
                강남지원 3관 : 서울특별시 강남구 테헤란로 130 호산빌딩 5F, 6F <br>
                종로지원 : 서울특별시 중구 남대문로 120 대일빌딩 2F, 3F <br>
                당산지원 : 서울특별시 영등포구 선유동2로 57 이레빌딩 (구관) 19F, 20F <br>
            </p>
            <p id="p2">Copyright © 1998-2022 KH Information Educational Institute All Right Reserved</p>
        </div>
    </div>
</body>
</html>