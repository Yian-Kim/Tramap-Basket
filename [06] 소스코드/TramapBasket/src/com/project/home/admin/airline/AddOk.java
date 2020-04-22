package com.project.home.admin.airline;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.project.home.admin.AdminDAO;

@WebServlet("/admin/airline/addok.do")
public class AddOk extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//AddOk.java
		//1. 데이터 가져오기
		//2. DB 작업 > DAO 위임(insert)
		//3. 결과 반환 + JSP 호출
		
		req.setCharacterEncoding("UTF-8");
		
//		jsp  = project적고
//		java = x
		
		AdminDAO dao = new AdminDAO();
		
		
		String airline_name = req.getParameter("airline");
		String issuedate = req.getParameter("date");
		String start_time = req.getParameter("starttime");
		String arrive_time = req.getParameter("arrivetime");
		String class_name = req.getParameter("seatlv");
		String start_airport = req.getParameter("startairport");
		String arrive_airport= req.getParameter("arriveairport");
		String price = req.getParameter("price");
	
		FakeTicketDTO dto = new FakeTicketDTO();

		dto.setAirline_name(airline_name);
		dto.setIssuedate(issuedate);
		dto.setStart_time(start_time);
		dto.setArrive_time(arrive_time);
		dto.setClass_lv(class_name);
		dto.setStart_airport(start_airport);
		dto.setArrive_airport(arrive_airport);
		dto.setPrice(price);
		
		int result = dao.addairline(dto);
		

		req.setAttribute("result", result);
		
		
		

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/airline/addok.jsp");
		dispatcher.forward(req, resp);
		
		}
	}
