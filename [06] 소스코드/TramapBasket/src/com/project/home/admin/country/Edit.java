package com.project.home.admin.country;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.home.admin.AdminDAO;

@WebServlet("/admin/country/edit.do")
public class Edit extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		String country_seq = req.getParameter("country_seq");
		
		AdminDAO dao = new AdminDAO();
		CountryDTO dto = dao.get2(country_seq);
		

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/country/edit.jsp");
		dispatcher.forward(req, resp);
	}

}
