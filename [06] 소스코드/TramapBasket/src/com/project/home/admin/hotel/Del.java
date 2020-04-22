package com.project.home.admin.hotel;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.home.admin.AdminDAO;


@WebServlet("/admin/hotel/del.do")
public class Del extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//인증 사용자?
		//AuthCheck auth = new AuthCheck(req.getSession(), resp);
		//auth.allow();
		
		
		
		

		//Del.java
		//del.do?seq=10
		
		String seq = req.getParameter("seq");
		
		AdminDAO dao = new AdminDAO();
		//auth.allow2(dao.get(seq).getId());
		
		req.setAttribute("seq", seq);		

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/hotel/del.jsp");
		dispatcher.forward(req, resp);
	}

}
