package com.kh.mybatis.board.controller;

import static com.kh.mybatis.common.template.Pagination.getPageInfo;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.mybatis.board.model.service.BoardServiceImpl;
import com.kh.mybatis.board.model.vo.Board;
import com.kh.mybatis.common.model.vo.PageInfo;
/**
 * Servlet implementation class BoardSearchController
 */
@WebServlet("/search.bo")
public class BoardSearchController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardSearchController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String type = request.getParameter("type");
		String keyword = request.getParameter("keyword");
		
		HashMap<String,String> map = new HashMap<>();
		map.put("type", type);
		map.put("keyword", keyword);
		if(keyword.equals("")) {
			request.setAttribute("cpage", 1);
			request.getRequestDispatcher("/list.bo").forward(request, response);
		}else {
			
		int listCount = new BoardServiceImpl().selectListCount(map);
		int currentPage = Integer.parseInt(request.getParameter("cpage"));
		PageInfo pi = getPageInfo(listCount,currentPage,10,5);
		
		ArrayList<Board> list = new BoardServiceImpl().selectList(pi,map);
		
		request.setAttribute("pi", pi);
		request.setAttribute("list", list);
		request.setAttribute("search", map);
		request.getRequestDispatcher("WEB-INF/views/board/boardListView.jsp").forward(request, response);
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
