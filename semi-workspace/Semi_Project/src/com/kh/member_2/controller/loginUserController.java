package com.kh.member_2.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.member_2.model.service.MemberUserService;
import com.kh.member_2.model.vo.MemberUser;

/**
 * Servlet implementation class loginUserController
 */
@WebServlet("/loginUser.lo")
public class loginUserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginUserController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		if(request.getParameter("logout")==null) {
			request.setCharacterEncoding("UTF-8");
			String userId = request.getParameter("userId");
			String userPw = request.getParameter("userPw");
			MemberUser mu = new MemberUserService().loginUser(userId, userPw);

			if(mu!=null && mu.getU_status().equals("Y")) {
				session.setAttribute("loginN", -1);
				session.setAttribute("loginUser", mu);
				response.sendRedirect("/Semi/views/semi/main.jsp");
			}else {
				if(mu.getU_status().equals("N")) {
					session.setAttribute("loginN", 2);
					session.setAttribute("userNo", mu.getUserNo());}
				else if(mu.getU_status().equals("S")) {
					session.setAttribute("banDate", mu.getBanDate());
					session.setAttribute("loginN", 3);
					}
				else if(mu.getU_status().equals("H")) {
					session.setAttribute("loginN", 4);
					session.setAttribute("userNo", mu.getUserNo());
				}
				else if(mu.getU_status().equals("U")) {session.setAttribute("loginN", 5);}
				else {session.setAttribute("loginN", 0);}
				response.sendRedirect("/Semi/views/common/login.jsp");
			}
		}else {
			request.getSession().removeAttribute("loginUser");
			session.setAttribute("loginN", 1);
			response.sendRedirect("/Semi/views/semi/main.jsp");
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
