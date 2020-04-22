package com.project.home.member.kds;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/member/board/free/addcomment.do")
public class AddComment extends HttpServlet {

	//POST로 받기
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//AddComment.java
		
		//1. 데이터 가져오기
		//2. DB 작업 > DAO 위임(insert)
		//3. 결과 반환 + JSP 호출하기
		
		//1. 기본
		req.setCharacterEncoding("UTF-8");
		HttpSession session = req.getSession();
		
		//1. 가져오기
		String content = req.getParameter("content");
		String freeSeq = req.getParameter("freeSeq");
		
		//2. DB
		FreeCommentDTO cdto = new FreeCommentDTO();
				
		cdto.setPfreeSeq(freeSeq);
		cdto.setContent(content);	
		
		cdto.setId(session.getAttribute("certification").toString());
		
		FreeDAO dao = new FreeDAO();
		
		int result = dao.addComment(cdto);
		
		req.setAttribute("freeSeq", freeSeq);		
		req.setAttribute("result", result);
		

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/member/board/free/addcomment.jsp");
		dispatcher.forward(req, resp);

	}//doget

}//class
