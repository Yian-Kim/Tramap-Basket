package com.project.home.member.kcm;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/member/kcm/puttourspottobasket.do")
public class PutTourSpotToBasket extends HttpServlet {

	// 1단계, HTTP 요청 받음
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// PutTourSpotToBasket.java
		// 장바구니에 담을 여행지 저장

		/*
		 * 2019.08.22 출발일 2019.08.25 도착일 인원수 1명
		 * 
		 * 나라: 태국(tblCounty seq 1)
		 * 
		 * 출발티켓: 인천 -> 방콕(tblTicket seq 1) 도착티켓: 방콕 -> 인천(tblTicket seq 12)
		 * 
		 * 
		 * ---------------------------------- 여행지 일차별 1일차 (tblToursitSpot seq 1, 2) 2일차
		 * (tblToursitSpot seq 3, 4, 5) 3일차 (tblToursitSpot seq 6, 7, 8) 4일차
		 * (tblToursitSpot seq 9)
		 * 
		 * ---------------------------------- 숙소 일차별 1일차 (tblRoomSchedual seq 4) 2일차
		 * (tblRoomSchedual seq 42) 3일차 (tblRoomSchedual seq 111) 4일차 (없음)
		 */

		processRequest(req, resp);

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		processRequest(req, resp);
	}

	private void processRequest(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// 2단계, 요청 분석
		// request 객체로부터 사용자의 요청을 분석하는 코드
		
		//String type = req.getParameter("type");
//		String 가는날
//		String 오는날
//		String 국가
//		
//		for()
//		String 일차
//		
//		String 
		
		
		// 3단계, 모델을 사용하여 요청한 기능을 수행한다.
		// 사용자에 요청에 따라 알맞은 코드

		// => ArrayList<ArrayList<DTO>

//		Object resultObject = null;
//		if (type == null || type.contentEquals("greeting")) {
//			resultObject = "안녕하세요";
//		} else if (type.contentEquals("date")) {
//			resultObject = new java.util.Date();
//		} else {
//			resultObject = "Invalid Type";
//		}

		// 4단계, request나 session에 처리 결과를 저장
		/* req.setAttribute("result", resultObject); */ // 이런 형태의 코드

		// 5단계, RequestDispatcher를 사용하여 알맞은 뷰로 포워딩
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/member/kcm/puttourspottobasket.jsp");
		dispatcher.forward(req, resp);

	}

}
