package com.project.home.admin.member;


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
import com.project.home.admin.hotel.HotelDTO;

@WebServlet("/admin/member/memberlist.do")
public class Memberlist extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		req.setCharacterEncoding("UTF-8");
		
		
		
		
		
		
		//페이징 + 페이지바 관련 변수
		int nowPage = 0;			//현재 페이지 번호
		int totalCount = 0;		//총 게시물 
		int pageSize = 10;		//한 페이지당 출력 게시물 수
		int totalPage = 0;		//총 페이지
		int begin = 0;				//where 절
		int end = 0;					//where 절
		int n = 0;						//페이지 바 제작
		int loop = 0;					//페이지 바 제작
		int blockSize = 10;		//페이지 바 제작
		
		AdminDAO dao = new AdminDAO();
	
		//list.do > list.do?page=1
		//list.do?page=3
		
		String page = req.getParameter("page"); //"4"
		
		if (page == null || page == "") nowPage = 1; 
		else nowPage = Integer.parseInt(page);
		
		//nowPage : 현재 페이지 번호
		begin = ((nowPage - 1) * pageSize) + 1;
		end = begin + pageSize - 1;
		
		//총 게시물 수 알아내기
		totalCount = dao.getTotalCount();
		
		//총 페이지 수 알아내기
		//256 / 10 = 25.6 > 26
		totalPage = (int)Math.ceil((double)totalCount / pageSize);
		totalPage = (int)Math.ceil((double)totalCount / pageSize);
	
		
		//memberList.java		
		HashMap<String,String> map = new HashMap<String,String>();
		
		map.put("begin", begin + "");
		map.put("end", end + "");
		
		
		//memberlist.java
		//1.db작엄> dao위임(select)
		 ArrayList<MemberDTO> memberlist = dao.memberlist(map); 
		
		
		
		
		
		//페이지바를 출력하는 태그 만들기
		String pagebar = "";

		loop = 1; // 루프 변수(while)
		n = ((nowPage - 1) / blockSize) * blockSize + 1;// 페이지 번호

		pagebar += "<nav>\r\n" + "  <ul class='pagination'>";

		// 이전 10페이지
		if (n == 1) {
			pagebar += String.format(" <a href='#' onclick='event.preventDefault();'>[이전 %d페이지]</a> ", blockSize);
		} else {
			pagebar += String.format(" <a href='/Sample2/list.do?page=%d'>[이전 %d페이지]</a> ", n - 1, blockSize);
		}
				
		//페이지 번호 루프
		while (!(loop > blockSize || n > totalPage)) {
			
			if (n == nowPage) {
				pagebar += String.format(" <a href='#' onclick='event.preventDefault();' style='color:tomato;'>%d</a> ", n);
			} else {
				pagebar += String.format(" <a href='/project/admin/member/memberlist.do?page=%d'>%d</a> ", n, n);
			}
			
			loop++;
			n++;
			
		}//while		
		
		//[다음 10페이지]
		if (n > totalPage) {
			pagebar += String.format(" <a href='#' onclick='event.preventDefault();'>[다음 %d페이지]</a> ", blockSize);
		} else {
			pagebar += String.format(" <a href='/project/admin/member/memberlist.do?page=%d'>[다음 %d페이지]</a> ", n, blockSize);
		}
				
		
		pagebar += "</ul>\r\n" + 
				"</nav>	";
				
			
		
		req.setAttribute("pagebar", pagebar);
		req.setAttribute("memberlist", memberlist);
				
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/member/memberlist.jsp");
		dispatcher.forward(req, resp);
	}

}
