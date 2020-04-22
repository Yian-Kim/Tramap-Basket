package com.tramapbasket.board.kcm;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/board.kcm/edit.do")
public class Edit extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//Edit.java
		String seq = req.getParameter("seq");
		
		BoardDAO dao = new BoardDAO();
		BoardDTO dto = dao.get(seq);
		
		//해시 태그 목록 가져오기
		ArrayList<String> hlist = dao.listHash(seq);
				
		req.setAttribute("dto", dto);
		req.setAttribute("hlist", hlist);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/board.kcm/edit.jsp");
		dispatcher.forward(req, resp);

	}

}
