package com.project.home.member.cdb;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.home.member.BPPCountryDTO;
import com.project.home.member.MemberDAO;

@WebServlet("/member/cdb/countrychoice.do")
public class CountryChoice extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//CountryChoice.java
		//국가를 선택한다.
		// 1. 국가들이 뭐가있는지 보여야하고 > 국가를 선택 > 담기
		
		//국가 가져오기 
		MemberDAO dao = new MemberDAO();
		
		//ArrayList<BPPCountryDTO> list = dao.cdbClist(); //나라 cdbClist
		
		//req.setAttribute("list", list);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/member/cdb/countrychoice.jsp");
		dispatcher.forward(req, resp);

	}
}