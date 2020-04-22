package com.project.home.member.kds;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/member/board/free/editcomment.do")
public class EditComment extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//EditComment.java
		//1.데이터 가져오기
		//2. DB작업 > DAO 위임(update)
		//3. 결과 반환 + jsp 호출
		
		//1. 한글 받아오므로
		req.setCharacterEncoding("UTF-8");
		
		String content= req.getParameter("content");
		String fcseq = req.getParameter("fcseq");
		
		//나중에 view로 돌아가므로 글 번호를 받아야한다.
		String freeSeq = req.getParameter("freeSeq");
		
		//DB 담기
		FreeDAO dao = new FreeDAO();
		FreeCommentDTO cdto = new FreeCommentDTO();
		
		cdto.setContent(content);
		cdto.setFcseq(fcseq);
		
		int result = dao.editComment(cdto);
		
		req.setAttribute("result", result);
		req.setAttribute("freeSeq", freeSeq);	
		

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/member/board/free/editcomment.jsp");
		dispatcher.forward(req, resp);

	}//doget

}//class
