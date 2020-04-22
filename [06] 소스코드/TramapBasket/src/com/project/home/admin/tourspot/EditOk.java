package com.project.home.admin.tourspot;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project.home.admin.AdminDAO;
import com.project.home.admin.theme.ThemeDTO;

@WebServlet("/admin/tourspot/editok.do")
public class EditOk extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		req.setCharacterEncoding("UTF-8");
		HttpSession session = req.getSession();



		try {

			String theme_name = req.getParameter("theme");
		

			AdminDAO dao = new AdminDAO();

			ThemeDTO dto = new ThemeDTO();

			dto.setName(theme_name);
			

			int result = dao.add5(dto);

			req.setAttribute("result", result);

		} catch (Exception e) {

			System.out.println("EditOk.doPost : " + e.toString());
		}

		

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/tourspot/editok.jsp");
		dispatcher.forward(req, resp);

	}
}