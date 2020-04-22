package com.project.home.admin.tourspot;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.home.admin.AdminDAO;

@WebServlet("/admin/tourspot/edit.do")
public class Edit extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		String touristspot_seq = req.getParameter("touristspot_seq");
		
		AdminDAO dao = new AdminDAO();
//		TouristSpotDTO dto = dao.get13(touristspot_seq);
		

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/tourspot/edit.jsp");
		dispatcher.forward(req, resp);
	}

}