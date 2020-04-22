package com.project.home.member.kds;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.home.member.kds.HotelDTO;

@WebServlet("/member/kds/ex02.do")
public class Ex02 extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//Ex02.java
		KdsDAO dao = new KdsDAO();
		
		ArrayList<HotelDTO> list = dao.listHotel();
		ArrayList<RoomDTO> list1 = dao.listRoom();
		
		req.setAttribute("list", list);
		req.setAttribute("list1", list1);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/member/kds/ex02.jsp");
		dispatcher.forward(req, resp);

	}
}
