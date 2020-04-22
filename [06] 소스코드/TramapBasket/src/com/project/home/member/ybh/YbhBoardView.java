package com.project.home.member.ybh;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.home.member.BPPGuideDTO;
import com.project.home.member.MemberDAO;

@WebServlet("/member/ybh/ybhBoardView.do")
public class YbhBoardView extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String guide_id = req.getParameter("guide_id");

		MemberDAO dao = new MemberDAO();
		
		
		BPPGuideDTO guideInfo = dao.ybhGuide(guide_id); //가이드 정보
		
		ArrayList<YbhGuideReviewDTO> grList = dao.ybhBoardView(guide_id); //가이드 해당리뷰글들
		
		
		req.setAttribute("guideInfo", guideInfo);
		req.setAttribute("grList",grList);
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/member/ybh/ybhBoardView.jsp");
		dispatcher.forward(req, resp);

	}
}
