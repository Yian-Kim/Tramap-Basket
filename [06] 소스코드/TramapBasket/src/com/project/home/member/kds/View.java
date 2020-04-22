package com.project.home.member.kds;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/member/board/free/view.do")
public class View extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		String isSearch = req.getParameter("isSearch");
		String column = req.getParameter("column");
		String word = req.getParameter("word");
		
		if (isSearch == null || isSearch == "") {
			isSearch = "false";
		}
		
		//1. 데이터 가져오기
		//2. DB 작업 > DAO 위임(select where)
		//3. 결과 반환 + JSP 호출
		
		
		//1. 글번호
		String freeseq = req.getParameter("freeSeq");
		
		//2. DB
		FreeDAO dao = new FreeDAO();
		
		
		//조회수 증가 F5 금지
		HttpSession session = req.getSession();		
		if (session.getAttribute("isRead") == null 
				|| session.getAttribute("isRead").toString().equals("n")) {
			dao.addCnt(freeseq);
			session.setAttribute("isRead", "y"); //F5 금지
		}
		
		FreeDTO dto = dao.get(freeseq);
		
		
		//개행문자 -> <br>		
		String content = dto.getContent();
		content = content.replace("\r\n", "<br>");		
		dto.setContent(content);
		
		
		
		//내용에서 검색중이면 검색어 강조
		if (isSearch.equals("true") && column.equals("content")) {
			content = content.replace(word, "<span style='background-color:gold;color:tomato;'>" + word + "</span>");
			dto.setContent(content);
		}
		
		//현재 글에 달려있는 댓글 목록 가져오기
		ArrayList<FreeCommentDTO> clist = dao.listComment(freeseq);		
		req.setAttribute("clist", clist);		

		req.setAttribute("isSearch", isSearch);
		req.setAttribute("column", column);
		req.setAttribute("word", word);
		
		req.setAttribute("dto", dto);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/member/board/free/view.jsp");
		dispatcher.forward(req, resp);

	}//doget

}//class
