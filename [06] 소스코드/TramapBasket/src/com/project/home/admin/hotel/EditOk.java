package com.project.home.admin.hotel;


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

@WebServlet("/admin/hotel/editok.do")
public class EditOk extends HttpServlet {

	@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//인증 사용자?
		//AuthCheck auth = new AuthCheck(req.getSession(), resp);
		//auth.allow();

		//AddOk.java
		//0. MultipartRequest 생성
		//1. 데이터 가져오기
		//2. 첨부 파일 처리
		//3. DB 작업 > DAO 위임(insert)
		//4. 결과 반환 + JSP 호출
		
		

		//EditOk.java
		// == AddOk.java
		//1. 데이터 가져오기
		//2. DB 작업 > DAO 위임(update)
		//3. 결과 반환 + JSP 호출
		
		//1.
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
		
		
		
		String hotel_seq = "";
		String touristSpot_seq = "";
		String name = "";
		String picture = "";
		String description = "";
		String lat = "";
		String lng = "";
		String isdelete = "";
		
		
		
		try {
			
			
			System.out.println(req.getRealPath("/files"));
			//WebContent > files
			MultipartRequest multi = new MultipartRequest(
														req,
														req.getRealPath("/files"),
														1024 * 1024 * 100,
														"UTF-8",
														new DefaultFileRenamePolicy()
													); //이 순간 > 첨부 파일 저장 완료
			

			hotel_seq = multi.getParameter("hotel_seq");
			touristSpot_seq = multi.getParameter("touristSpot_seq");
			name = multi.getParameter("name");
			picture = multi.getFilesystemName("picture"); //새로운 파일명
			description = multi.getParameter("description");
			lat = multi.getParameter("lat");
			lng = multi.getParameter("lng");
			
			//System.out.println(filename == null);
			//System.out.println(filename == "");
			
			if (picture == null) {
				
				if (multi.getParameter("isdelete") != "") {
					File file = new File(req.getRealPath("/files") + "\\" + multi.getParameter("isdelete"));
					file.delete();
				}
				
				//파일을 그대로 두겠다.
				picture = multi.getParameter("picture");
				
				
			} else {
				//새로운 첨부 파일 선택
				//물리적 : 기존 파일 삭제
				//DB: 새로운 파일명으로 교체
				File file = new File(req.getRealPath("/files") + "\\" + multi.getParameter("picture"));
				file.delete();
			}
			
			
			
		} catch (Exception e) {
			
			System.out.println("EditOk.doPost : " + e.toString());
		}
		
		
		//2.
		HotelDTO hodto = new HotelDTO();
		
		hodto.setHotel_seq(hotel_seq);
		hodto.setTouristSpot_seq(touristSpot_seq);
		hodto.setName(name);
		hodto.setPicture(picture);
		hodto.setDescription(description);
		hodto.setLng(lng);
		hodto.setLat(lat);
	
		
		
		
		AdminDAO dao = new AdminDAO();
		
		int result = dao.edithotel(hodto);
		
		
		
		
		
		
		
		req.setAttribute("result", result);	
		req.setAttribute("hotel_seq", hotel_seq);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/member/editok.jsp");
		dispatcher.forward(req, resp);
	}

}





