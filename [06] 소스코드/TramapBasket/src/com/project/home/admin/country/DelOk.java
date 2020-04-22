package com.project.home.admin.country;

import java.io.File;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.home.admin.AdminDAO;

@WebServlet("/admin/country/delok.do")
public class DelOk extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// 인증 사용자?
		/*
		 * AuthCheck auth = new AuthCheck(req.getSession(), resp);
		 * 
		 * auth.allow();
		 */

		// DelOk.java
		// 1. 데이터 가져오기
		// 2. DB 작업 > DAO 위임(delete)
		// 3. 결과 반환 + JSP 호출

		String seq = req.getParameter("seq");

		AdminDAO dao = new AdminDAO();

				
		//글 삭제
		int result = dao.del(seq);
		
		
		req.setAttribute("result", result);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/country/delok.jsp");
		dispatcher.forward(req, resp);
	}

}
