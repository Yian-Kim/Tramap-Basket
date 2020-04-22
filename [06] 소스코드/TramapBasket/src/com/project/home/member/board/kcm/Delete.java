package com.tramapbasket.board.kcm;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/board.kcm/delete.do")
public class Delete extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//Delete.java
		String seq = req.getParameter("seq");
		
		BoardDAO dao = new BoardDAO();
		
		req.setAttribute("seq", seq);			

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/board.kcm/delete.jsp");
		dispatcher.forward(req, resp);

	}

}
