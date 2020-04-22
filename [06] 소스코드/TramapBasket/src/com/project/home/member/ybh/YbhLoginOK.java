package com.project.home.member.ybh;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project.home.member.MemberDAO;

@WebServlet("/member/ybh/ybhLoginOK.do")
public class YbhLoginOK extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String memberId = req.getParameter("memberId");
		String memberPw = req.getParameter("memberPw");
		
		String how = req.getParameter("how");//확인용
		
		
		MemberDAO dao = new MemberDAO();
		
		YbhMemberDTO loginCheck = dao.ybhMemberLogin(memberId, memberPw);
		HttpSession session = req.getSession();
		
		session.setAttribute("loginCheck", loginCheck);
		req.setAttribute("how", how);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/member/ybh/ybhLoginOK.jsp");
		dispatcher.forward(req, resp);

	}
}