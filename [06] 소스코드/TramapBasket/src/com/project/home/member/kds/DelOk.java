package com.project.home.member.kds;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/member/board/free/delok.do")
public class DelOk extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//DelOk.java
		//1. 데이터 가져오기
		//2. DB 작업 > DAO 위임(delete)
		//3. 결과 반환 + JSP 호출
	
		//인증 사용자
		//AuthCheck auth = new AuthCheck(req.getSession(), resp);
		//auth.allow();
		
		//글 번호 받아오기
		String freeSeq = req.getParameter("freeSeq");
		
		//DB작업
		FreeDAO dao = new FreeDAO();
		
		//댓글 삭제 - 댓글 달고 추가하기
		//dao.delAllComment(seq);//1, 0(fail) > null(0) : 상태 구분
		
		//글 삭제
		int result = dao.del(freeSeq);
		req.setAttribute("result", result);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/member/board/free/delok.jsp");
		dispatcher.forward(req, resp);

	}//doget

}//class
