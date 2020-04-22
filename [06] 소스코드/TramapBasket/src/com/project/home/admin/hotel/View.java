	package com.project.home.admin.hotel;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.home.admin.AdminDAO;

@WebServlet("/admin/hotel/view.do")
public class View extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//AdminDAO dao = new AdminDAO();
		req.setCharacterEncoding("UTF-8");
		String hotel_seq = req.getParameter("hotel_seq");
		
		AdminDAO dao = new AdminDAO();
		HotelDTO hodto = new HotelDTO();
		
		
		
		
		HotelDTO dto = dao.gethotellist(hotel_seq);
		
		req.setAttribute("dto", dto);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/hotel/view.jsp");
		dispatcher.forward(req, resp);
	}

}


