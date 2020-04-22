package com.project.home.admin.country;

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

@WebServlet("/admin/country/editok.do")
public class EditOk extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


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

			String country_name = req.getParameter("country");
		

			AdminDAO dao = new AdminDAO();

			CountryDTO dto = new CountryDTO();

			dto.setName(country_name);

			int result = dao.add11(dto);

			req.setAttribute("result", result);



		} catch (Exception e) {

			System.out.println("EditOk.doPost : " + e.toString());
		}




		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/country/editok.jsp");
		dispatcher.forward(req, resp);
	}

}
