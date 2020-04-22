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

@WebServlet("/admin/airline/view.do")
public class View extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//View.java
		//board/view.do?seq=10&isSearch=false&column=&word= //평상 시
		//board/view.do?seq=10&isSearch=true&column=content&word=단어 //검색

		
		//1. 데이터 가져오기
		//2. DB 작업 > DAO 위임(select where)
		//3. 결과 반환 + JSP 호출
		
		//1.
		String faketicket_seq = req.getParameter("faketicket_seq");
		
		//2.
		AdminDAO dao = new AdminDAO();
		
	
		FakeTicketDTO dto = dao.getairline(faketicket_seq);
		

		req.setAttribute("dto", dto);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/airline/view.jsp");
		dispatcher.forward(req, resp);
	}

}









