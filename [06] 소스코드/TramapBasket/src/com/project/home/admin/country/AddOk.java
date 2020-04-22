package com.project.home.admin.country;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.project.home.admin.AdminDAO;

@WebServlet("/admin/country/addok.do")
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
		
		
		String country_name = req.getParameter("country");
	
		CountryDTO dto = new CountryDTO();
	
		dto.setName(country_name);

		int result = dao.add20(dto);
		
		req.setAttribute("result", result);
		
		
		

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/country/addok.jsp");
		dispatcher.forward(req, resp);
		
		}
	}
