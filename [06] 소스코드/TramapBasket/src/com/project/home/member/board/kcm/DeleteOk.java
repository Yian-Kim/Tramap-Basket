package com.tramapbasket.board.kcm;

import java.io.File;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/board.kcm/deleteok.do")
public class DeleteOk extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//DeleteOk.java
		String seq = req.getParameter("seq");
		
		BoardDAO dao = new BoardDAO();
		
		//부모글 삭제
		//1. 댓글X
		//   - 문제 X
		//2. 댓글O
		//   a. 못 지운다.
		//   b. 강제로 지운다.(댓글 포함)
		//댓글 삭제
		dao.delAllComment(seq);//1, 0(fail) > null(0) : 상태 구분
		
		//파일 삭제
		File file = new File(req.getRealPath("/files") + "\\" + dao.get(seq).getFilename());
		if (file.exists()) {
			file.delete();
		}
		
		
		//해시 태그 삭제
		dao.delHash(seq);
		
		
		//글 삭제
		int result = dao.del(seq);
		
		req.setAttribute("result", result);	

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/board.kcm/deleteok.jsp");
		dispatcher.forward(req, resp);

	}

}
