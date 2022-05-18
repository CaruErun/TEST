<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    #mypage-form table{margin:auto;}
    #mypage form input{margin:5px;}
</style>
</head>
<body>
	<%@ include file="../common/menubar.jsp" %>
	
	<%
		String userId = loginUser.getUserId();
		String userName = loginUser.getUserName();
		String phone = (loginUser.getPhone()==null) ? "" : loginUser.getPhone();
		String email = (loginUser.getEmail()==null) ? "" : loginUser.getEmail();
		String address = (loginUser.getAddress()==null) ? "" : loginUser.getAddress();
		String interest = (loginUser.getInterest()==null) ? "" : loginUser.getInterest();
		
	
	%>
    <div class="outer">
    <h2 align="center">My Page</h2>
    <form id="mypage-form" action="<%=contextPath %>/update.me" method="post">
        <table>
            <tr>
                <td>* 아이디</td>
                <td><input type="text" name="userId" maxlength="12" required value=<%=userId %> readonly></td>
                <!-- <td><button type="button" onclick="">중복확인</button></td> -->
            </tr>
            <tr>
                <td>* 이름</td>
                <td><input type="text" name="userName" maxlength="6" required value=<%=userName %>></td>
                <td></td>
            </tr>
            <tr>
                <td>전화번호</td>
                <td><input type="text" name="phone" placeholder="-포함해서 입력" value=<%=phone %>></td>
                <td></td>
            </tr>
            <tr>
                <td>이메일</td>
                <td><input type="email" name="email" value=<%=email %>></td>
                <td></td>
            </tr>
            <tr>
                <td>주소</td>
                <td><input type="text" name="address" value=<%=address %>></td>
                <td></td>
            </tr>
            <tr>
                <td>관심분야</td>
                <td><input type="checkbox" name="interest" id="music" value="음악">
                    <label for="music">음악</label>
                    <input type="checkbox" name="interest" id="sports" value="운동">
                    <label for="sports">운동</label>
                    <input type="checkbox" name="interest" id="movie" value="영화">
                    <label for="movie">영화</label>
                    <input type="checkbox" name="interest" id="game" value="게임">
                    <label for="game">게임</label>
                    <input type="checkbox" name="interest" id="cooking" value="쿠킹">
                    <label for="cooking">요리</label>
                    <input type="checkbox" name="interest" id="coding" value="코딩">
                    <label for="coding">코딩</label>
                </td>
                <td></td>
            </tr>

        </table>

        <script>
            $(function(){



            var interest = "<%=interest%>";
            
            $("input[type=checkbox]").each(function(){
                if(interest.search($(this).val()) != -1){
                    $(this).attr("checked",true);
                }
            });

        });


        </script>

        <div align="center">
            <button type="submit">정보변경</button>
            <button type="button" data-toggle="modal" data-target="#updatePwdForm">비밀번호 변경</button>
            <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#deleteUserForm">회원 탈퇴</button>
        </div>

    </form>
</div>
<!-- The Modal -->
<div class="modal" id="updatePwdForm">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Modal Heading</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
            <form action="<%=contextPath%>/updatePwd.me" method="post">
            	<input type="hidden" name="userId" value="<%=userId %>">
                <table>
                    <tr>
                        <td>현재 비밀번호</td>
                        <td><input type="password" name="userPwd" required></td>
                    </tr>
                    <tr>
                        <td>변경할 비밀번호</td>
                        <td><input type="password" name="updatePwd" id="pwd1" required></td>
                    </tr>
                    <tr>
                        <td>변경할 비밀번호 확인</td>
                        <td><input type="password" name="checkPwd" id="pwd2" required></td>
                    </tr>
                </table>

				<button type="submit" class="btn btn-success" onclick="return validatePwd();">변경</button>
        	</form>
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
        
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>

      </div>
    

    <script>
        function validatePwd(){
           if($("input[name=updatePwd]").val()!=$("#pwd2").val()){
               alert("비밀번호 불일치");
               return false;
           }
        }
		
    </script>

    </div>
  </div>
</div>
<!-- controller : MemberDeleteController
메소드명 : deleteMember
성공시 = 회원탈퇴 성공 메세지 alert창
로그아웃 처리 페이지 메인페이지이동
실패시 = 에러페이지보내서 에러메세지 -->
	<!-- <div class="modal-body" id="deleteUserForm">
	<b>회원 탈퇴 후 복구는 불가능 합니다. <br> 정말로 탈퇴 하시겠습니까?</b>
	
	<form action="<%=contextPath %>/delete.me" method="post">
		<table>
			<tr>
				<td>비밀번호 입력</td>
				<td><input type=password name=userPwd required></td>
			</tr>
		</table>
			<br>
			<button type="submit">탈퇴하기</button>
	</form> -->
	</div><!-- The Modal -->
    <div class="modal" id="deleteUserForm">
      <div class="modal-dialog">
        <div class="modal-content">
    
          <!-- Modal Header -->
          <div class="modal-header">
            <h4 class="modal-title">회원 탈퇴</h4>
            <button type="button" class="close" data-dismiss="modal">&times;</button>
          </div>
    
          <!-- Modal body -->
          <div class="modal-body">
                <form action="<%=contextPath%>/delete.me" method="post">
                    <input type="hidden" name="userId" value="<%=userId %>">
                    <b>회원 탈퇴 후 복구는 불가능 합니다. <br> 정말로 탈퇴 하시겠습니까?</b>
                    <table>
                        <tr>
                            <td>비밀번호 입력</td>
                            <td><input type="password" name="userPwd" required></td>
                        </tr>
                    </table>
                    <button type="submit" class="btn btn-success">회원탈퇴</button>
                </form>
          </div>
    
          <!-- Modal footer -->
          <div class="modal-footer">
            
            <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
    
          </div>
</body>
</html>