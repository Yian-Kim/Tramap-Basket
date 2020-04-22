package com.project.home.admin.airline;

import java.io.File;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.project.home.admin.AdminDAO;

@WebServlet("/admin/airline/editok.do")
public class EditOk extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// 인증 사용자?
		// AuthCheck auth = new AuthCheck(req.getSession(), resp);
		// auth.allow();

		// AddOk.java
		// 0. MultipartRequest 생성
		// 1. 데이터 가져오기
		// 2. 첨부 파일 처리
		// 3. DB 작업 > DAO 위임(insert)
		// 4. 결과 반환 + JSP 호출

		// EditOk.java
		// == AddOk.java
		// 1. 데이터 가져오기
		// 2. DB 작업 > DAO 위임(update)
		// 3. 결과 반환 + JSP 호출

		// 1.
		req.setCharacterEncoding("UTF-8");
		HttpSession session = req.getSession();

//		String subject = req.getParameter("subject");
//		String content = req.getParameter("content");
//		String tag = req.getParameter("tag");
//		
//		//관리자 : 0 or 1
//		//일반 : null > 0
//		String notice = req.getParameter("notice");
//		if (notice == null) notice = "0";

		try {

			String airline_name = req.getParameter("airline");
			String issuedate = req.getParameter("date");
			String start_time = req.getParameter("starttime");
			String arrive_time = req.getParameter("arrivetime");
			String class_name = req.getParameter("seatlv");
			String start_airport = req.getParameter("startairport");
			String arrive_airport = req.getParameter("arriveairport");
			String price = req.getParameter("price");

			AdminDAO dao = new AdminDAO();

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



		} catch (Exception e) {

			System.out.println("EditOk.doPost : " + e.toString());
		}




		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/airline/editok.jsp");
		dispatcher.forward(req, resp);
	}

}
