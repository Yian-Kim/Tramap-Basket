package com.tramapbasket.board.kcm;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/board.kcm/editcomment.do")
public class EditComment extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//EditComment.java
		req.setCharacterEncoding("UTF-8");
		
		String content = req.getParameter("content");
		String seq = req.getParameter("seq");
		String pseq = req.getParameter("pseq");//view.do 돌아갈 때 사용하기 위해
		
		BoardDAO dao = new BoardDAO();
		
		CommentDTO cdto = new CommentDTO();
		cdto.setContent(content);
		cdto.setSeq(seq);
		
		int result = dao.editComment(cdto);

		req.setAttribute("result", result);
		req.setAttribute("pseq", pseq);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/board.kcm/editcomment.jsp");
		dispatcher.forward(req, resp);

	}

}
