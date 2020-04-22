package com.project.home.member.ybh;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/member/ybh/ybhLogin.do")
public class YbhLogin extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		
		String how = req.getParameter("how");
		if(how != null && how.equals("1")) {
			req.setAttribute("how", how);
			
		}
		
		

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/member/ybh/ybhLogin.jsp");
		dispatcher.forward(req, resp);

	}
}