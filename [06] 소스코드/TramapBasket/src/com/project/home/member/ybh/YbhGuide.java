package com.project.home.member.ybh;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project.home.member.BPPCountryDTO;
import com.project.home.member.BPPGuideDTO;
import com.project.home.member.BPPRoomDTO;
import com.project.home.member.BPPStartDTO;
import com.project.home.member.BPPTicketDTO;
import com.project.home.member.BPPTouristSpotDTO;
import com.project.home.member.MemberDAO;

@WebServlet("/member/ybh/ybhGuide.do")
public class YbhGuide extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String d = req.getParameter("d");
		
		HttpSession session = req.getSession();
		
			
		
		
		//================가상 데이터====================
		BPPStartDTO start = new BPPStartDTO();
		//ㄴ 여행 시작일, 끝일, 인원수
			start.setStartday("2019-08-22"); //출발일
			start.setArriveday("2019-08-25"); //도착일
			start.setPeople("1"); //인원수
			
		BPPCountryDTO country = new BPPCountryDTO();
		//ㄴ 여행 나라
			country.setCountry_seq("1"); //국가번호
			country.setName("태국"); //국가이름
			country.setPicture("태국.jpg"); //국가 사진
			country.setDescription("태국 정보"); //국가정보
			country.setIsDelete(1); //삭제상태
			
		
		BPPTicketDTO sTicket = new BPPTicketDTO();
		//ㄴ 여행 출발 티켓
			sTicket.setTicket_seq("1");//티켓번호
			sTicket.setIssuedate("2019-08-22");//티켓의 날짜
			sTicket.setQuantity(70);//표 몇개 남았는지 0이면 품절떠야되서
			sTicket.setStartAirportName("인천공항");//출발공항
			sTicket.setArriveAirportName("방콕공항");//도착공항
			//경유공항 생략
			sTicket.setPrice(138000);//가격
			sTicket.setAirlineName("티웨이"); //항공사이름
			sTicket.setFlightClassName("이코노미"); //좌석등급이름
			sTicket.setStartTime("08:50");//항공편 출발시각
			sTicket.setArriveTime("12:50");//항공편 도착시간
			
		BPPTicketDTO aTicket = new BPPTicketDTO();
		//ㄴ 여행 도착티켓
			aTicket.setTicket_seq("12");//티켓번호
			aTicket.setIssuedate("2019-08-25");//티켓의 날짜
			aTicket.setQuantity(90);//표 몇개 남았는지 0이면 품절떠야되서
			aTicket.setStartAirportName("방콕공항");//출발공항
			aTicket.setArriveAirportName("인천공항");//도착공항
			//경유공항 생략
			aTicket.setPrice(137000);//가격
			aTicket.setAirlineName("티웨이"); //항공사이름
			aTicket.setFlightClassName("비즈니스"); //좌석등급이름
			aTicket.setStartTime("17:30");//항공편 출발시각
			aTicket.setArriveTime("21:20");//항공편 도착시간
		
		
		ArrayList<ArrayList<BPPTouristSpotDTO>> tList = new ArrayList<ArrayList<BPPTouristSpotDTO>>();
		//ㄴ 여행지목록 일차별
			ArrayList<BPPTouristSpotDTO> tListList1 = new ArrayList<BPPTouristSpotDTO>(); 
			ArrayList<BPPTouristSpotDTO> tListList2 = new ArrayList<BPPTouristSpotDTO>();
			ArrayList<BPPTouristSpotDTO> tListList3 = new ArrayList<BPPTouristSpotDTO>();
			ArrayList<BPPTouristSpotDTO> tListList4 = new ArrayList<BPPTouristSpotDTO>();
			
			BPPTouristSpotDTO tsTemp = new BPPTouristSpotDTO();
			tsTemp.setTouristSpot_seq("1");
			tsTemp.setName("카오산로드");
			tsTemp.setPicture("카오산로드.jpg");
			tsTemp.setDescription("카오산로드 설명");
			tsTemp.setLat("13.758793");
			tsTemp.setLng("100.497473");
			tsTemp.setIsDelete(1);
			tListList1.add(tsTemp);
			
			tsTemp = new BPPTouristSpotDTO();
			tsTemp.setTouristSpot_seq("2");
			tsTemp.setName("이글네스트");
			tsTemp.setPicture("이글네스트.jpg");
			tsTemp.setDescription("이글네스트 설명");
			tsTemp.setLat("13.74519");
			tsTemp.setLng("100.490935");
			tsTemp.setIsDelete(1);
			tListList1.add(tsTemp);
			
		tList.add(tListList1);
			
			tsTemp = new BPPTouristSpotDTO();
			tsTemp.setTouristSpot_seq("3");
			tsTemp.setName("워킹스트리트");
			tsTemp.setPicture("워킹스트리트.jpg");
			tsTemp.setDescription("워킹스트리트 설명");
			tsTemp.setLat("12.9264");
			tsTemp.setLng("100.873173");
			tsTemp.setIsDelete(1);
			tListList2.add(tsTemp);
			
			tsTemp = new BPPTouristSpotDTO();
			tsTemp.setTouristSpot_seq("4");
			tsTemp.setName("산호섬투어");
			tsTemp.setPicture("산호섬투어.jpg");
			tsTemp.setDescription("카오산로드 설명");
			tsTemp.setLat("12.917186");
			tsTemp.setLng("100.785242");
			tsTemp.setIsDelete(1);
			tListList2.add(tsTemp);
			
			tsTemp = new BPPTouristSpotDTO();
			tsTemp.setTouristSpot_seq("5");
			tsTemp.setName("호라이즌");
			tsTemp.setPicture("호라이즌.jpeg");
			tsTemp.setDescription("호라이즌 설명");
			tsTemp.setLat("12.93514");
			tsTemp.setLng("100.882467");
			tsTemp.setIsDelete(1);
			tListList2.add(tsTemp);
			
		tList.add(tListList2);
			
			tsTemp = new BPPTouristSpotDTO();
			tsTemp.setTouristSpot_seq("6");
			tsTemp.setName("람파라핀");
			tsTemp.setPicture("파타야_람파라핀.jpeg");
			tsTemp.setDescription("람파라핀 설명");
			tsTemp.setLat("12.805154");
			tsTemp.setLng("100.913307");
			tsTemp.setIsDelete(1);
			tListList3.add(tsTemp);
			
			tsTemp = new BPPTouristSpotDTO();
			tsTemp.setTouristSpot_seq("7");
			tsTemp.setName("피파");
			tsTemp.setPicture("피파.jpeg");
			tsTemp.setDescription("피파 설명");
			tsTemp.setLat("12.945285");
			tsTemp.setLng("100.886748");
			tsTemp.setIsDelete(1);
			tListList3.add(tsTemp);
			
			tsTemp = new BPPTouristSpotDTO();
			tsTemp.setTouristSpot_seq("8");
			tsTemp.setName("버티고 앤 문 바");
			tsTemp.setPicture("버티고 앤 문 바.jpg");
			tsTemp.setDescription("버티고 앤 문 바 설명");
			tsTemp.setLat("13.723552");
			tsTemp.setLng("100.540013");
			tsTemp.setIsDelete(1);
			tListList3.add(tsTemp);
		
		tList.add(tListList3);
			
			tsTemp = new BPPTouristSpotDTO();
			tsTemp.setTouristSpot_seq("9");
			tsTemp.setName("욧시암보트");
			tsTemp.setPicture("욧시암보트.png");
			tsTemp.setDescription("욧시암보트 설명");
			tsTemp.setLat("13.705004");
			tsTemp.setLng("100.501844");
			tsTemp.setIsDelete(1);
			tListList4.add(tsTemp);
		
		tList.add(tListList4);
		
		
		ArrayList<BPPRoomDTO> rList = new ArrayList<BPPRoomDTO>();
		//ㄴ 숙소목록 일차별
		
		BPPRoomDTO rTemp = new BPPRoomDTO();
		rTemp.setHotelSchedule_seq("4");
		rTemp.setHotelName("카사 니트라");
		rTemp.setHotelPicture("카오산_카사니트라.jpg");
		rTemp.setPrice(80000);
		rTemp.setPersonCount("1인실");
		rTemp.setRoomClassName("디럭스 룸");
		rTemp.setIssuedate("2019-08-22");
		rTemp.setState(1);
		rList.add(rTemp);
		
		rTemp = new BPPRoomDTO();
		rTemp.setHotelSchedule_seq("42");
		rTemp.setHotelName("노바 플래티넘 호텔 파타야");
		rTemp.setHotelPicture("노바 플래티넘 호텔 파타야.jpg");
		rTemp.setPrice(70000);
		rTemp.setPersonCount("1~2인실");
		rTemp.setRoomClassName("디럭스 룸");
		rTemp.setIssuedate("2019-08-23");
		rTemp.setState(1);
		rList.add(rTemp);
		
		rTemp = new BPPRoomDTO();
		rTemp.setHotelSchedule_seq("111");
		rTemp.setHotelName("르네상스파타야리조트");
		rTemp.setHotelPicture("람파라핀_르네상스파타야리조트.jpg");
		rTemp.setPrice(75000);
		rTemp.setPersonCount("1~2인실");
		rTemp.setRoomClassName("디럭스 룸");
		rTemp.setIssuedate("2019-08-24");
		rTemp.setState(1);
		rList.add(rTemp);
		
		rList.add(null);
		//System.out.println(rList.size());
		
		
		
		
		
		sTicket.setStartAirportName(sTicket.getStartAirportName().replace("공항",""));
		sTicket.setArriveAirportName(sTicket.getArriveAirportName().replace("공항",""));
		aTicket.setStartAirportName(aTicket.getStartAirportName().replace("공항",""));
		aTicket.setArriveAirportName(aTicket.getArriveAirportName().replace("공항",""));
		
		if(sTicket.getWaypointAirportName()==null){
			sTicket.setWaypointAirportName(" X ");
		}
		if(aTicket.getWaypointAirportName()==null) {
			aTicket.setWaypointAirportName(" X ");
		}
		
		
		//==================================================================
		
		MemberDAO dao = new MemberDAO();
		ArrayList<BPPGuideDTO> gList;
		
		
		
		if(d==null) {//셀렉트박스 안고르고 처음
			
			gList = dao.ybhGuideList(start.getStartday(), tList.get(0));
			
			session.setAttribute("start", start);
			session.setAttribute("country", country);
			session.setAttribute("sTicket", sTicket);
			session.setAttribute("aTicket", aTicket);
			session.setAttribute("tList", tList);
			session.setAttribute("rList", rList);
			
			session.setAttribute("gList", gList);
			
			
			RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/member/ybh/ybhGuide.jsp");
			dispatcher.forward(req, resp);
			
		}else {//셀렉트박스 선택
			//System.out.println(d);
			Calendar c = Calendar.getInstance();
			String[] sd = start.getStartday().split("-");
			
			//System.out.println(Integer.parseInt(sd[0]));
			//System.out.println(Integer.parseInt(sd[1]));
			//System.out.println(Integer.parseInt(sd[2]));
			
			c.set(Integer.parseInt(sd[0]),Integer.parseInt(sd[1])-1,Integer.parseInt(sd[2]));
			//ㄴ캘린더의 월은 0부터인걸 잊지맙시다 친구~
			
			c.add(Calendar.DATE, Integer.parseInt(d));
			//ㄴ 날짜에맞게 날을 더한다
			
			
			//System.out.println(String.format("%tF", c));
			//System.out.println(tList.get(Integer.parseInt(d)));
			//System.out.println(tList.get(0));
			
			gList = dao.ybhGuideList(String.format("%tF", c), tList.get(Integer.parseInt(d)));
			
			
			
			session.setAttribute("gList", gList);
			RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/member/ybh/ybhGuideData.jsp");
			dispatcher.forward(req, resp);
			
		}
		
		
		
		
	}
}