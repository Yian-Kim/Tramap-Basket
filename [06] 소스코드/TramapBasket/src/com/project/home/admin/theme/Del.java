package com.project.home.admin.theme;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/admin/theme/del.do")
public class Del extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	

		//Del.java
		//del.do?seq=10
		
		String seq = req.getParameter("seq");
		

		
		req.setAttribute("seq", seq);		

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/theme/del.jsp");
		dispatcher.forward(req, resp);
	}

}