package com.project.home.admin.theme;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.home.admin.AdminDAO;

@WebServlet("/admin/theme/edit.do")
public class Edit extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		String theme_seq = req.getParameter("theme_seq");
		
		AdminDAO dao = new AdminDAO();
		ThemeDTO dto = dao.get12(theme_seq);
		

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/theme/edit.jsp");
		dispatcher.forward(req, resp);
	}

}