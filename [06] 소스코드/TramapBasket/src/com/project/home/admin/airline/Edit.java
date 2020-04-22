package com.project.home.admin.airline;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.home.admin.AdminDAO;

@WebServlet("/admin/airline/edit.do")
public class Edit extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		String faketicket_seq = req.getParameter("faketicket_seq");
		
		AdminDAO dao = new AdminDAO();
		FakeTicketDTO dto = dao.getairline(faketicket_seq);
		

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/airline/edit.jsp");
		dispatcher.forward(req, resp);
	}

}
