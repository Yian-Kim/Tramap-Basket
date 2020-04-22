package com.tramapbasket.board.kcm;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/board.kcm/addcomment.do")
public class AddComment extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//AddComment.java
		req.setCharacterEncoding("UTF-8");
		
		HttpSession session = req.getSession();
		
		String content = req.getParameter("content");
		String pseq = req.getParameter("pseq");
		
		CommentDTO cdto = new CommentDTO();
		
		cdto.setContent(content);
		cdto.setPseq(pseq);
		cdto.setId(session.getAttribute("id").toString());
		
		BoardDAO dao = new BoardDAO();
		
		int result = dao.addComment(cdto);
		
		req.setAttribute("result", result);
		req.setAttribute("pseq", pseq);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/board.kcm/addcomment.jsp");
		dispatcher.forward(req, resp);

	}
}
