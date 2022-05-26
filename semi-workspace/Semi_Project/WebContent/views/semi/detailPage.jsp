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
  <link rel="stylesheet" href="/Semi/resources/css/detailPage.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<%@include file="/views/common/menubar.jsp"%>

     <!-- 상품 디테일 헤더부분 -->
      <div class="detail-top">
        <!-- 디테일 헤더 왼쪽 -->
        <div id="detail-top-left">
          <img src="https://contents.lotteon.com/itemimage/_v111222/LO/15/07/45/49/91/_1/50/74/54/99/2/LO1507454991_1507454992_1.jpg/dims/resizef/720X720" alt="" id="main">
          <div id="sub">
            <img src="https://contents.lotteon.com/itemimage/_v111222/LO/15/07/45/49/91/_1/50/74/54/99/2/LO1507454991_1507454992_1.jpg/dims/resizef/720X720" alt="">
            <img src="https://contents.lotteon.com/itemimage/_v111222/LO/15/07/45/49/91/_1/50/74/54/99/2/LO1507454991_1507454992_1.jpg/dims/resizef/720X720" alt="">
            <img src="https://contents.lotteon.com/itemimage/_v111222/LO/15/07/45/49/91/_1/50/74/54/99/2/LO1507454991_1507454992_1.jpg/dims/resizef/720X720" alt="">
            <img src="https://contents.lotteon.com/itemimage/_v111222/LO/15/07/45/49/91/_1/50/74/54/99/2/LO1507454991_1507454992_1.jpg/dims/resizef/720X720" alt="">
          </div>
        </div>
        <!-- 디테일 헤더 오른쪽 위-->
        <div id="detail-top-right">
          <pre id="pr-top">
            <h2 style="text-align: center;">Product Info제품정보<br></h2>
            시즌 도움말 보기 / 성별 2022 S/S / 여 <br>
            조회수(1개월) 400회 이상 <br>
            좋아요  12 <br>
          </pre>
          <pre id="pr-top">
            <h2 style="text-align: center;">Delivery Info배송정보</h2><br>
            배송 방법 국내 배송 / 입점사 배송 / 로젠택배<br>
            Price Info가격정보 <br>
            당산스포츠 판매가 228,000원<br>
            당산스포츠 회원가 198,360 ~ 228,000원<br>
            당산스포츠 적립금 최대 9,120원
          </pre>
          <!-- 디테일 헤더 오른쪽 아래-->
          <div id="detail-top-right-bottom">
            <div id="buy-order">
            <button id="buy">구매하기</button>
            <button id="order1">찜하기</button><br>
            <button id="order2">장바구니</button>
              <h2>상품 총금액 : 20,000원</h2>
            </div>
          </div>
        </div>
      </div>

      <div class="detail-middle">
        <div id="detail-button">
          <button id="description">상품설명</button>
          <button id="content">상품내용</button>
          <button id="reviews">상품리뷰</button>
          <button id="question">상품문의</button>
        </div>
        <div id="pr-description"></div>
        <div id="pr-content"></div>
        <div id="pr-reviews"></div>
        <div id="pr-question"></div>
      </div>
</body>
</html>