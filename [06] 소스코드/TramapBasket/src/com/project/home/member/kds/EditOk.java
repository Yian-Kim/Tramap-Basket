package com.project.home.member.kds;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/member/board/free/editok.do")
public class EditOk extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//인증 사용자?
		//AuthCheck auth = new AuthCheck(req.getSession(), resp);
		//auth.allow();
		
		//EditOk.java		
		//1. 데이터 가져오기
		//2. DB 작업 > DAO 위임(update)
		//3. 결과 반환 + JSP 호출
		
		
		//1 데이터 가져오기
		req.setCharacterEncoding("UTF-8");
		HttpSession session = req.getSession();
		
			
		String subject = req.getParameter("subject");
		String freeseq = req.getParameter("freeSeq");
		String content = req.getParameter("content");
		
		
		//2. DB 작업
		FreeDTO dto = new FreeDTO();
		
		dto.setSubject(subject);
		dto.setContent(content);
		dto.setFreeSeq(freeseq);
		
		
		FreeDAO dao = new FreeDAO();
		
		int result = dao.edit(dto);
		
		req.setAttribute("result", result);
		req.setAttribute("freeSeq", freeseq);
		
		
		

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/member/board/free/editok.jsp");
		dispatcher.forward(req, resp);

	}//doget

}//class
