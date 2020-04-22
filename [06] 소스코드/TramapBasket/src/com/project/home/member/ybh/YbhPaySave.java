package com.project.home.member.ybh;

import java.io.IOException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Calendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project.home.member.BPPGuideDTO;
import com.project.home.member.BPPRoomDTO;
import com.project.home.member.BPPStartDTO;
import com.project.home.member.BPPTicketDTO;
import com.project.home.member.BPPTouristSpotDTO;
import com.project.home.member.MemberDAO;

@WebServlet("/member/ybh/ybhPaySave.do")
public class YbhPaySave extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();
		//가이드 번호, 길이
		int size = Integer.parseInt(req.getParameter("size"));
		
		String[] selGuide = new String[size];
		
		//출발날짜
		BPPStartDTO start = (BPPStartDTO) session.getAttribute("start");
		
		String[] sd = start.getStartday().split("-");
		

		
		//날짜별 관광지
		ArrayList<ArrayList<BPPTouristSpotDTO>> tList = (ArrayList<ArrayList<BPPTouristSpotDTO>>) session.getAttribute("tList");
		
		
		MemberDAO dao = new MemberDAO();//질문 바깥으로 빼야 안쌓이는지 안에넣어야 안쌓이는지 내일 물어보기!!***
		
		ArrayList<BPPGuideDTO> gList = new ArrayList<BPPGuideDTO>();
		for(int i=0; i<selGuide.length; i++) {
			selGuide[i] = req.getParameter("selGuide"+i);
			//System.out.println(selGuide[i].equals("") + selGuide[i]);
			
			Calendar c = Calendar.getInstance();
			c.set(Integer.parseInt(sd[0]),Integer.parseInt(sd[1])-1,Integer.parseInt(sd[2]));
			c.add(Calendar.DATE, i);
			
			BPPGuideDTO gTemp = new BPPGuideDTO();
			gTemp = dao.ybhGuide(String.format("%tF", c), tList.get(i), selGuide[i]);
			gList.add(gTemp);
			
			
			
		}
		
		
		//합계가격용
		BPPTicketDTO sTicket = (BPPTicketDTO) session.getAttribute("sTicket");
		BPPTicketDTO aTicket = (BPPTicketDTO) session.getAttribute("aTicket");
		int sumPrice = sTicket.getPrice() + aTicket.getPrice();
		ArrayList<BPPRoomDTO> rList = (ArrayList<BPPRoomDTO>) session.getAttribute("rList"); 
		
		for(int i=0; i<selGuide.length; i++) {
			
			if(rList.get(i) != null) {
				sumPrice += rList.get(i).getPrice();				
			}
			if(gList.get(i) != null) {
				sumPrice += gList.get(i).getTotalPrice();
			}
		}
		
		
		
		
		
		session.setAttribute("gList", gList);//gList의 재정의? 초기화 라고볼수있음
		
		DecimalFormat df = new DecimalFormat("#,###");//콤마찍어서 보내자
		session.setAttribute("sumPrice", df.format(sumPrice));//세션으로 보내버려도될듯 귀찮아지면
		

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/member/ybh/ybhPaySave.jsp");
		dispatcher.forward(req, resp);

	}
}
