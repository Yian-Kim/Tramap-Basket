package com.project.home.member.cdb;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.home.member.BPPTicketDTO;
import com.project.home.member.MemberDAO;

@WebServlet("/member/cdb/ticket.do")
public class Ticket extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//Ticket.java
	
		MemberDAO dao = new MemberDAO();
		//ArrayList<BPPTicketDTO> list = dao.cdbTlist(); //항공권 cdbTlist
		
		//req.setAttribute("list", list);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/member/cdb/ticket.jsp");
		dispatcher.forward(req, resp);

	}
}
