package com.project.home.member.ybh;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.home.member.MemberDAO;

@WebServlet("/member/ybh/ybhBoardDel.do")
public class YbhBoardDel extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	
		String guidereview_seq = req.getParameter("guidereview_seq");
		String guide_id = req.getParameter("guide_id");
		
		MemberDAO dao = new MemberDAO();
		
		int result = dao.ybhReviewDel(guidereview_seq);
		
		req.setAttribute("delResult", result);
		req.setAttribute("guide_id", guide_id);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/member/ybh/ybhBoardDel.jsp");
		dispatcher.forward(req, resp);

	}
}
