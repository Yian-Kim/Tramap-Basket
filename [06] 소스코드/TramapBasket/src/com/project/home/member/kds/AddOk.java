package com.project.home.member.kds;

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

@WebServlet("/member/board/free/addok.do")
public class AddOk extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
				//AddOk.java
				//1. 데이터 가져오기
				//2. DB 작업 > DAO 위임(insert)
				//3. 결과 반환 + JSP 호출
		
		
		req.setCharacterEncoding("UTF-8");
		HttpSession session = req.getSession();
		
		String id = session.getAttribute("certification").toString();
				
		/*
		 * String subject = req.getParameter("subject"); String content =
		 * req.getParameter("content"); String notice = req.getParameter("notice");
		 * 
		 * 
		 * String filename = req.getParameter("filename"); String orgfilename =
		 * req.getParameter("orgfilename");
		 */
		String subject = "";
		String content = "";
		
		String notice = "";
		String filename = "";
		String orgfilename = "";
		
		int thread = -1; //DB�� �߰��� �÷�
		int depth = -1;
		int parentThread = -1;
		int parentDepth = -1;
		
		
try {
			
			System.out.println(req.getRealPath("/files"));
			
			//WebContent > files
			MultipartRequest multi = new MultipartRequest(
																req,
																req.getRealPath("/files"),
																1024 * 1024 * 100,
																"UTF-8",
																new DefaultFileRenamePolicy()
															); //�� ���� > ÷�� ���� ���� �Ϸ�
			

			subject = multi.getParameter("subject");
			content = multi.getParameter("content");
		
			notice = multi.getParameter("notice");
			if (notice == null) notice = "0";
			
			
			
			filename = multi.getFilesystemName("attach");
			orgfilename = multi.getOriginalFileName("attach");
			
			
			
		} catch (Exception e) {
			
			System.out.println("AddOk.doPost : " + e.toString());
		}
		
		/* if(notice == null) { notice = "0"; } */
		 
		
		//2.
		FreeDAO dao = new FreeDAO();			
		FreeDTO dto = new FreeDTO();
		
		dto.setSubject(subject);		
		dto.setContent(content);
		dto.setNotice(notice);
		dto.setId(id);		
		dto.setFilename(orgfilename);
		dto.setOrgfilename(orgfilename);
		
		
		
		
		int result = dao.add(dto);
						
		req.setAttribute("result", result);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/member/board/free/addok.jsp");
		dispatcher.forward(req, resp);

	}//doget

}//class
