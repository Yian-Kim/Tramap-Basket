package com.project.home.member.kds;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/member/board/free/del.do")
public class Del extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//DEL.java
		
		//글번호 얻어오기
		String freeSeq = req.getParameter("freeSeq");
		
		
		//DB작업 - 아이디와 맞는지 검사
		//FreeDAO dao = new FreeDAO();	
		//auth.allow2(dao.get(seq).getId());
		
		req.setAttribute("freeSeq", freeSeq);
		

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/member/board/free/del.jsp");
		dispatcher.forward(req, resp);

	}//doget

}//class
