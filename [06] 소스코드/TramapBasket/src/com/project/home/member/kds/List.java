package com.project.home.member.kds;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/member/board/free/list.do")
public class List extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	
		req.setCharacterEncoding("UTF-8");
		
		//검색
		String column = req.getParameter("column");
		String word = req.getParameter("word");
		
		boolean isSearch = false;
		
		//단어 담기
		HashMap<String,String> map = new HashMap<String,String>();
		
		//검색 요청(조건)
		if((column != null && word != null) && (column != "" && word != "")) {
			
			isSearch = true;
			map.put("column", column);
			map.put("word", word);			
		}
		
		
		
		//검색어 담기
		 map.put("isSearch", isSearch + ""); 
		
		 
		//DAO, session 열기
		FreeDAO dao = new FreeDAO();
		
		HttpSession session = req.getSession();
		
		
		
		
		
		//페이지 + 페이지 바 관련 변수
		int nowPage = 0;		//현재 페이지 번호
		int totalCount = 0;		//총 게시물 
		int pageSize = 10;		//한 페이지당 출력 게시물 수
		int totalPage = 0;		//총 페이지
		int begin = 0;			//where 절
		int end = 0;			//where 절
		int n = 0;				//페이지 바 제작
		int loop = 0;			//페이지 바 제작
		int blockSize = 10;		//페이지 바 제작
		
		String page = "";
		
		page = req.getParameter("page");
		
		if(page == null || page == "") nowPage = 1;
		else nowPage = Integer.parseInt(page);
		
		//시작페이지
		begin = ((nowPage -1) * pageSize) + 1;
		
		//끝 페이지
		end = begin + pageSize -1;
		
		//담기
		map.put("begin", begin + "");
		map.put("end", end + "");
		
		//총 게시물 수 알아내기
		totalCount = dao.getTotalCount(map);
		
		
		//총 페이지 수 알아내기
		totalPage = (int)Math.ceil((double)totalCount / pageSize);
		
		//DTO 불러오기
		ArrayList<FreeDTO> list = dao.list(map);
				
				
		//시간대별로 불러오기
		for (FreeDTO dto : list) {
							
						
		int gap = dto.getGap();
							
		if (gap < 60) {
			dto.setRegdate(String.format("%d분 전", gap));
		} else if (gap < 60 * 24) {
			int hour = gap / 60;
			int min = gap % 60;
			dto.setRegdate(String.format("%d시간 %d분 전", hour, min));
												
		} else {
			int date = gap / 60 / 24;
			dto.setRegdate(String.format("%d일 전", date));
		}
							
							
		//제목이 길면 자르기 (제목불러오기)
		String subject = dto.getSubject();
							
		if (subject.length() > 31) {
			subject = subject.substring(0,30) + "..";
		}							
		dto.setSubject(subject);
							
		//제목에서 검색중 강조
		if (isSearch && column.equals("subject")) {				
			subject = subject.replace(word, "<span style='background-color:gold;color:tomato;'>" + word + "</span>");
			dto.setSubject(subject);
		}
							
		}//게시물 for 루프
		
		
		//페이지 바 제작
		String pagebar = ""; 
		
		//루프 변수
		loop = 1; 
		n = ((nowPage - 1) / blockSize) * blockSize + 1;//페이지번호
		
		pagebar += "<nav>\r\n" + 
				"  <ul class='pagination'>";
		
		
		//이전 10페이지 구현
		if (n == 1) {
			
			pagebar += String.format("<li>" + 
					"     <a href='#' aria-label='Previous'>" + 
					"     <span aria-hidden='true'>&laquo;</span>" + 
					"     </a>" + 
					"     </li>");
			
		} else {
			
			pagebar += String.format("<li>" + 
					"     <a href='/wmc/board/free/list.do?page=%d' aria-label='Previous'>" + 
					"     <span aria-hidden='true'>&laquo;</span>" + 
					"     </a>" + 
					"     </li>", n-1);
		}
		
		
		//페이지 번호 루프
		while (!(loop > blockSize || n > totalPage)) {
			
			if (n == nowPage) {
				pagebar += String.format("<li class='active'><a href='#'>%d</a></li>", n);
			} else {
				pagebar += String.format("<li><a href='/wmc/board/free/list.do?page=%d'>%d</a></li>", n, n);
			}
			
			loop++;
			n++;
			
		}//while
		
		
		//[다음 10페이지]		
		if (n > totalPage) {
			pagebar += String.format("<li>" + 
					"    <a href='#' aria-label='Next'>" + 
					"    <span aria-hidden='true'>&raquo;</span>" + 
					"    </a>" + 
					"    </li>");
		} else {
			pagebar += String.format("<li>" + 
					"    <a href='/wmc/board/free/list.do?page=%d' aria-label='Next'>" + 
					"    <span aria-hidden='true'>&raquo;</span>" + 
					"    </a>" + 
					"    </li>", n);
		}
		
		
		pagebar += "</ul>\r\n" + 
				"</nav>	";
		
		
		
		//View.java에서 F5에 의한 조회수 증가 방지 티켓 발급
		session.setAttribute("isRead", "n");
		
		
		//jsp 넘기기		
		req.setAttribute("pagebar", pagebar);
		
		req.setAttribute("totalCount", totalCount);
		req.setAttribute("totalPage", totalPage);
		req.setAttribute("nowPage", nowPage);
		
		
		req.setAttribute("isSearch", isSearch);		
		req.setAttribute("column", column);
		req.setAttribute("word", word);
		
		req.setAttribute("list", list);
			
		
		
		
		//아이디 로그인
		
		session = req.getSession(); 
		session.setAttribute("certification", "bey1111");
		 
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/member/board/free/list.jsp");
		dispatcher.forward(req, resp);

	}//doget

}//class
