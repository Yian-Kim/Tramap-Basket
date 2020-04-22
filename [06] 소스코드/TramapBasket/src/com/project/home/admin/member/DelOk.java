package com.project.home.admin.member;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project.home.admin.AdminDAO;

@WebServlet("/admin/member/delok.do")
public class DelOk extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//DelOk.java
		//1. DB 작업 > DAO 위임(update where)
		//2. JSP 호출
		
		HttpSession session = req.getSession();
		
		AdminDAO dao = new AdminDAO();
		int result = dao.delmember(session.getAttribute("member_id").toString());
		
		if (result == 1) {
			//회원 탈퇴 > 로그아웃
			session.removeAttribute("member_id");
			session.removeAttribute("pw");
			session.removeAttribute("name");
			session.removeAttribute("gender");
			session.removeAttribute("picture");
			session.removeAttribute("birth");
			session.removeAttribute("tel");
			session.removeAttribute("regdate");
			session.removeAttribute("isDelete");
		}
		
		req.setAttribute("result", result);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/member/delok.jsp");
		dispatcher.forward(req, resp);
	}

}

