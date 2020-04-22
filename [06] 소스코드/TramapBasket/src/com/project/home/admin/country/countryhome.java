package com.project.home.admin.country;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.home.admin.AdminDAO;


@WebServlet("/admin/country/countryhome.do")
public class countryhome extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		
		AdminDAO dao = new AdminDAO();
		
		
		
		ArrayList<CountryDTO> colist = dao.list20();
		
		req.setAttribute("colist", colist);
		

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/country/countryhome.jsp");
		dispatcher.forward(req, resp);

	}
}