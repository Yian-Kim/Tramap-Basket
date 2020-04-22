package com.project.home.member.kds;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/member/kds/ex01.do")
public class Ex01 extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// Ex01.java
		KdsDAO dao = new KdsDAO();
		
		ArrayList<HotelDTO> list = dao.listHotel();
		ArrayList<RoomDTO> list1 = dao.listRoom();
		ArrayList<RoomClassDTO> list2 = dao.listRoomClass();
		ArrayList<TouristSpotDTO> list3 = dao.listTouristSpot();

		
		req.setAttribute("list", list);
		req.setAttribute("list1", list1);
		req.setAttribute("list2", list2);
		req.setAttribute("list3", list3);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/member/kds/ex01.jsp");
		dispatcher.forward(req, resp);

	}
}
