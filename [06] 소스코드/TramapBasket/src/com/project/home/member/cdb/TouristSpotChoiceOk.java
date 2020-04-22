package com.project.home.member.cdb;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.home.member.MemberDAO;

@WebServlet("/member/cdb/touristspotchoiceok.do")
public class TouristSpotChoiceOk extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//TouristspotChoiceok.java
		//1.테마 선택 > 테마에 맞는 관광지 
		
		MemberDAO dao = new MemberDAO();
		String theme_seq = req.getParameter("checkbox");
		
		//ArrayList<BPPVwThaiTSDTO> list = dao.cdbTSlist(theme_seq); //테마 > 관광지 
		
		//req.setAttribute("list", list);
		
		
		
		

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/member/cdb/touristspotchoiceok.jsp");
		dispatcher.forward(req, resp);

	}
}
