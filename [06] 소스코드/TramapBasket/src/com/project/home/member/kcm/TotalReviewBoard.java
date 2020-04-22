package com.project.home.member.kcm;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/member/kcm/totalreviewboard.do")
public class TotalReviewBoard extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//TotalReviewBoard.java
		

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/member/kcm/totalreviewboard.jsp");
		dispatcher.forward(req, resp);

	}

}
