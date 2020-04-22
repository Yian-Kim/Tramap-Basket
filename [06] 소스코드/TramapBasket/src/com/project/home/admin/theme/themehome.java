package com.project.home.admin.theme;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.home.admin.AdminDAO;
import com.project.home.admin.theme.ThemeDTO;

@WebServlet("/admin/theme/themehome.do")
public class themehome extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// themehome.java
		req.setCharacterEncoding("UTF-8");

		AdminDAO dao = new AdminDAO();

		ArrayList<ThemeDTO> thlist = dao.list13();

		req.setAttribute("thlist", thlist);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/theme/themehome.jsp");
		dispatcher.forward(req, resp);

	}
}