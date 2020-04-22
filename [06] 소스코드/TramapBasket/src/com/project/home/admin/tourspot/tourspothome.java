package com.project.home.admin.tourspot;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.home.admin.AdminDAO;


@WebServlet("/admin/tourspot/tourspothome.do")
public class tourspothome extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		
		AdminDAO dao = new AdminDAO();
		
		
		
//		ArrayList<TouristSpotDTO> toslist = dao.list30();
		
//		req.setAttribute("toslist", toslist);
		

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/tourspot/tourspothome.jsp");
		dispatcher.forward(req, resp);

	}
}