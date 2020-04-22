package com.tramapbasket.board.kcm;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/board.kcm/deletecomment.do")
public class DeleteComment extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//DeleteComment.java
		String seq = req.getParameter("seq"); //삭제할 댓글 번호
		String pseq = req.getParameter("pseq"); //돌아갈 부모글 번호
		
		BoardDAO dao = new BoardDAO();
		
		int result = dao.delComment(seq);
		
		req.setAttribute("result", result);
		req.setAttribute("pseq", pseq);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/board.kcm/deletecomment.jsp");
		dispatcher.forward(req, resp);

	}

}
