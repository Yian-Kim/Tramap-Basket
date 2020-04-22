package com.project.home.member.kds;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/member/board/free/edit.do")
public class Edit extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//인증 사용자 
		//AuthCheck auth = new AuthCheck(req.getSession(), resp);
		//auth.allow();
		
		//1. 데이터 가져오기
		//2. DB 작업 > DAO 위임(select where)
		//3. 결과 반환 + JSP 호출
		
		//수정할 글 번호 가져오기		
		String freeSeq = req.getParameter("freeSeq");
				
		
		FreeDAO dao = new FreeDAO();		
		FreeDTO dto = dao.get(freeSeq);		
		
		//아이디 맞는지 검색
		//auth.allow2(dto.getId());
		
		
		//보내기
		req.setAttribute("dto", dto);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/member/board/free/edit.jsp");
		dispatcher.forward(req, resp);

	}//doget

}//class

