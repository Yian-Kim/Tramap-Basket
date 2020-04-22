package com.project.home.member.kds;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/member/board/free/delcomment.do")
public class DelComment extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		//DelComment . java
		//1. 데이터 가져오기
		//2. DB작업  > DOA 위임(DELETE)
		//3. 결과 반환 + jsp 호출
		
		
		//삭제할 댓글 번호
		String fcseq = req.getParameter("fcseq"); 
		
		//돌아갈 부모글 번호
		String freeSeq = req.getParameter("freeSeq");
		
		FreeDAO dao = new FreeDAO();
		
		int result = dao.delComment(fcseq);
		
		req.setAttribute("result", result);
		req.setAttribute("freeSeq", freeSeq);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/member/board/free/delcomment.jsp");
		dispatcher.forward(req, resp);

	}//doget

}//class
