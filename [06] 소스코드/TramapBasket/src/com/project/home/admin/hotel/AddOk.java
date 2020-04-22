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

@WebServlet("/admin/hotel/addok.do")
public class AddOk extends HttpServlet {

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
		
		req.setCharacterEncoding("UTF-8");
		
		String touristSpot_seq ="";
		String name="";
		String picture="";
		String description="";
		String lat="";
		String lng="";
		

		try {
			System.out.println(req.getRealPath("/files"));
			
			MultipartRequest multi = new MultipartRequest(
																req,
																req.getRealPath("/files"),
																1024 * 1024 * 100,
																"UTF-8",
																new DefaultFileRenamePolicy()
															); //이 순간 > 첨부 파일 저장 완료
		
			touristSpot_seq = multi.getParameter("touristSpot_seq");
			name = multi.getParameter("name");
			
			description = multi.getParameter("description");
			lat = multi.getParameter("lat");
			lng = multi.getParameter("lng");
			picture = multi.getFilesystemName("picture");
			
		} catch (Exception e) {
			
			System.out.println("AddOk.doPost : " + e.toString());
		}
		
		AdminDAO dao = new AdminDAO();
		
		//2.
		HotelDTO dto = new HotelDTO();
//		
//		dto.setTouristSpot_seq(tourist_seq);
//		dto.setContent(content);
//		dto.setTag(tag);
//		dto.setId(id);
//		dto.setUserip(userip);
//		dto.setNotice(notice);
//		
//		dto.setFilename(filename); //첨부 파일명
//		
//		
		int result = dao.add(dto);
		
	
		
		
//		
//		
//		//해시 태그 처리
//		// - 예제
//		// - JSP, Servlet, 수업 예제
//		if (hash != null && !hash.equals("")) {
//			
//			//공백 제거
//			hash = hash.replace(" ", "");
//			
//			//쪼개기
//			String[] htemp = hash.split(",");
//			
//			for (String hitem : htemp) {
//				
//				dao.addHash(hitem);
//				
//				String hseq = dao.getHseq(hitem);
//				
//				//JSP > 25, 1
//				//Servlet > 25, 5
//				//수업 예제 > 25, 7
//				dao.addHashBoard(seq, hseq);
//				
//			}
//			
//		}
//		
		
		
		
		req.setAttribute("result", result);		
	

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/hotel/addok.jsp");
		dispatcher.forward(req, resp);
	}

}




