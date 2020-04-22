package com.project.home.member.cdb;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/member/cdb/main.do")
public class Main extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//Main.java
		//달력 설정하기 

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/member/cdb/main.jsp");
		dispatcher.forward(req, resp);

	}
}
