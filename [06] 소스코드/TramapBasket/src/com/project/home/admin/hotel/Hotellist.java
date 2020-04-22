package com.project.home.admin.hotel;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.home.admin.AdminDAO;

@WebServlet("/admin/hotel/hotellist.do")
public class Hotellist extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		req.setCharacterEncoding("UTF-8");
		AdminDAO dao = new AdminDAO();
		HotelDTO hdto = new HotelDTO();
		
		HashMap<String,String> map = new HashMap<String,String>();
		
		
		ArrayList<HotelDTO> hotellist = dao.hotellist();
		
		//페이징 + 페이지바 관련 변수
		int nowPage = 0;			//현재 페이지 번호
		int totalCount = 0;		//총 게시물 
		int pageSize = 6;		//한 페이지당 출력 게시물 수
		int totalPage = 0;		//총 페이지
		int begin = 0;				//where 절
		int end = 0;					//where 절
		int n = 0;						//페이지 바 제작
		int loop = 0;					//페이지 바 제작
		int blockSize = 5;		//페이지 바 제작
				
		String page = req.getParameter("page");
		
		if (page == null || page == "") nowPage = 1;
		else nowPage = Integer.parseInt(page);
		
		begin = ((nowPage - 1) * pageSize) + 1;
		end = begin + pageSize - 1;
		
		map.put("begin", begin + "");
		map.put("end", end + "");
		
		//총 게시물 수
		totalCount = dao.getTotalCount(map);
		
		//총 페이지 수
		totalPage = (int)Math.ceil((double)totalCount / pageSize);
		
		//페이지 바 제작
		String pagebar = ""; //JSP 돌려줄 페이지 바 태그
				
		loop = 1; //루프 변수(while)
		n = ((nowPage - 1) / blockSize) * blockSize + 1;//페이지 번호
		
	
		
		
		pagebar += "<nav>\r\n" + 
				"  <ul class='pagination'>";
				
		if (n == 1) {
			pagebar += String.format("<li>" + 
					"      <a href='#' aria-label='Previous'>" + 
					"        <span aria-hidden='true'>&laquo;</span>" + 
					"      </a>" + 
					"    </li>");
		} else {
			pagebar += String.format("<li>" + 
					"      <a href='/myhome/board/list.do?page=%d' aria-label='Previous'>" + 
					"        <span aria-hidden='true'>&laquo;</span>" + 
					"      </a>" + 
					"    </li>", n-1);
		}
		
		while (!(loop > blockSize || n > totalPage)) {
			
			if (n == nowPage) {
				pagebar += String.format("<li class='active'><a href='#'>%d</a></li>", n);
			} else {
				pagebar += String.format("<li><a href='/myhome/board/list.do?page=%d'>%d</a></li>", n, n);
			}
			
			loop++;
			n++;
		}//while
		
		if (n > totalPage) {
			pagebar += String.format("<li>" + 
					"      <a href='#' aria-label='Next'>" + 
					"        <span aria-hidden='true'>&raquo;</span>" + 
					"      </a>" + 
					"    </li>");
		} else {
			pagebar += String.format("<li>" + 
					"      <a href='/myhome/board/list.do?page=%d' aria-label='Next'>" + 
					"        <span aria-hidden='true'>&raquo;</span>" + 
					"      </a>" + 
					"    </li>", n);
		}
		
		
		pagebar += "</ul>\r\n" + 
				"</nav>	";
		
		
		
		
		
		req.setAttribute("hotellist", hotellist);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/hotel/hotellist.jsp");
		dispatcher.forward(req, resp);
	}

}

