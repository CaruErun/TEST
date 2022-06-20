package com.kh.member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.member.model.service.MemberService;
import com.kh.member.model.vo.Member;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/login.me")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/*
		 * <HttpServletRequest 객체와 HttpServletResponse 객체
		 * -request : 서버로 요청할 때의 정보들이 담겨있다(요청시 전달값, 전달방식 등등)
		 * -response : 요청에 대해 응답할 객체
		 * 
		 * GET과 POST 방식 차이
		 * -GET(UTF-8) : 사용자가 입력한 값들이 url에 노출되고 데이터 길이 제한이 있다.(즐겨찾기 편리)
		 * -POST(UTF-8 X) : 사용자가 입력한 값들이 url에 노출되지 않고 데이터 길이제한이 없다.
		 * 
		 * */
		//1) 전달값에 한글이 있을경우 인코딩 처리를 해야한다.(Post 방식)
		request.setCharacterEncoding("UTF-8");
		//2) 요청시 전달 값 (request의 parameter 영역) 꺼내서 변수 또는 객체 기록
		String userId = request.getParameter("userId");
		String userPwd = request.getParameter("userPwd");
		//3) 해당 요청을 처리하는 서비스 클래스의 메소드를 호출
		Member loginUser = new MemberService().loginMember(userId,userPwd);
		
		//4) 처리된 결과를 가지고 사용자에게 보여줄 뷰 지정해서 포워딩(foward) 또는 url재요청
//		System.out.println(loginUser);
		
		/*
		 * 응답페이지에 전달할 값이 있을 경우 값을 담아서 보내야함
		 * (담아둘 수 있는 Servlet Scope 내장객체 4가지)
		 * 
		 * 1)application : 웹어플리케이션 전역에서 꺼내쓸 수 있는 가장 넓은 범위 scope
		 * 2)session : session에 담은 데이터는 모든 jsp와 servlet에서 꺼내쓸 수 있다.
		 * 3)request : request에 담은 데이터는 해당 request를 포워딩한 jsp에서만 꺼내쓸 수 있음.
		 * 4)page : 해당 jsp 페이지에서만 꺼내쓸 수 있다.
		 * 
		 * 공통적으로 데이터를 담고자 한다면 .setAttribute("key","value");
		 * 		데이터를 꺼내고자 하면 .getAttribute("키");
		 * 		데이터를 지우고자 하면 .removeAttribute("키");
		 * 
		 * 
		 */
		
		if(loginUser==null) {
			request.setAttribute("errorMsg", "로그인 실패");
			//응답페이지 jsp에 위임시 필요한 객체
			RequestDispatcher view = request.getRequestDispatcher("views/common/errorPage.jsp");
			
			//포워딩 : 해당경로로 선택된 뷰에게 보내기
			view.forward(request, response);
			
			//로그인 실패 -> 에러페이지 (RequestDispathcer 객체 사용)

		}else {
			//로그인 정보 페이지 이동해도 계속 가져야하기때문에 session 객체 담아사용
			//Servlet에서 session 객체 얻어와야함
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", loginUser);
			
//			1.포워딩 방식 응답 뷰 출력
//			RequestDispatcher view = request.getRequestDispatcher("/index.jsp");
//			view.forward(request, response);
			
//			2.url 재요청 방식(sendRedirect)
			//http://localhost:8889:/JSP/
//			response.sendRedirect("/JSP");
			response.sendRedirect(request.getContextPath());
			
			 
		}
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
	  protected void doPost(HttpServletRequest request, HttpServletResponse
	  response) throws ServletException, IOException { doGet(request, response); }
	 

}
