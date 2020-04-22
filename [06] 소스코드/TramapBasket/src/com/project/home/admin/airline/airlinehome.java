package com.project.home.admin.airline;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.home.admin.AdminDAO;


@WebServlet("/admin/airline/airlinehome.do")
public class airlinehome extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		
		AdminDAO dao = new AdminDAO();
		
		
		
		ArrayList<vwAirlineTicketDTO> vwatlist = dao.ticketlist();
		ArrayList<FakeTicketDTO> fklist = dao.ticketlist2();
		
		req.setAttribute("vwatlist", vwatlist);
		req.setAttribute("fklist", fklist);
		

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/airline/airlinehome.jsp");
		dispatcher.forward(req, resp);

	}
}