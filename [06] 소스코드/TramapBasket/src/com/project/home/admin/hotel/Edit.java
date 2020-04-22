package com.project.home.admin.hotel;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.home.admin.AdminDAO;

@WebServlet("/admin/hotel/edit.do")
public class Edit extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//AdminDAO dao = new AdminDAO();
		
		String hotel_seq = req.getParameter("hotel_seq");
		
		AdminDAO dao = new AdminDAO();
		HotelDTO hodto = dao.gethotel_seq(hotel_seq);
		
		

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/hotel/edit.jsp");
		dispatcher.forward(req, resp);
	}

}
