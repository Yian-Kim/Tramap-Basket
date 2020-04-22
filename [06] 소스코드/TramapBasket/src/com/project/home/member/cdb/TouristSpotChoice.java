package com.project.home.member.cdb;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.home.member.BPPThemeDTO;
import com.project.home.member.MemberDAO;

@WebServlet("/member/cdb/touristspotchoice.do")
public class TouristSpotChoice extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//TouristSpotChoice.java
		
		//관광지 선택하기.
		//n개의 관광지들을 마구 담기. 
		
		// 관광지 목록 가져오기 
		
		
		MemberDAO dao = new MemberDAO();
		//1. 테마 목록 가져오기
		//ArrayList<BPPThemeDTO> tlist = dao.cdbThemelist();
		//req.setAttribute("tlist", tlist);
		
	

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/member/cdb/touristspotchoice.jsp");
		dispatcher.forward(req, resp);

	}
}
