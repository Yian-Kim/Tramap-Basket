package com.project.home.member.ybh;

import java.io.IOException;
import java.io.PrintWriter;
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
import com.project.home.member.BPPTicketDTO;
import com.project.home.member.BPPTouristSpotDTO;
import com.project.home.member.MemberDAO;

@WebServlet("/member/ybh/ybhMypage.do")
public class YbhMypage extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		
		//여기서 로그인안했으면 팅기게해야됨
		if(session.getAttribute("loginCheck")==null) {
			//ㄴ 로그인 안한사람이냐?
			//버튼을없애도 몰래 url로 들어오는놈들을 페이지 하나 만들어서 쫒아냄.
			
			try {
				//PrintWriter는 한글화 해줘야됨
				resp.setCharacterEncoding("UTF-8");
				PrintWriter writer = resp.getWriter();
				writer.println("<html>");
				writer.println("<meta charset='utf-8'>");
				writer.println("<body>");
				writer.println("<script>");
				writer.println("alert('회원만 접근 가능합니다.');");
				writer.println("history.back();");
				writer.println("</script>");
				writer.println("</body>");
				writer.println("</html>");
				writer.close(); //잊지맙시다!!
			} catch (IOException e) {
				
				e.printStackTrace();
			}
			
		}
		
		
		//시작
		
		
		String how2 = req.getParameter("how2");
		YbhMemberDTO member = (YbhMemberDTO) session.getAttribute("loginCheck");
		MemberDAO dao = new MemberDAO();
		
		if(how2!=null && how2.equals("1")) {

			
			
			//여기서 테이블에 전부저장
			
			BPPTicketDTO sTicket = (BPPTicketDTO) session.getAttribute("sTicket");
			BPPTicketDTO aTicket = (BPPTicketDTO) session.getAttribute("aTicket");
			
			
			ArrayList<ArrayList<BPPTouristSpotDTO>> tList = (ArrayList<ArrayList<BPPTouristSpotDTO>>) session.getAttribute("tList");
			
			ArrayList<BPPRoomDTO> rList = (ArrayList<BPPRoomDTO>) session.getAttribute("rList");
			ArrayList<BPPGuideDTO> gList = (ArrayList<BPPGuideDTO>) session.getAttribute("gList"); 
					
			
			System.out.println(member.getMember_id() + member.getName());//멤버 세션 잘오는지 확인용
			
			//여행내역 테이블에 isPaid 1값을 주면 결제 상태가됩니다
			
			
			
			String tripBPP_seq = dao.ybhAddBPP(sTicket.getTicket_seq(), aTicket.getTicket_seq(), member.getMember_id());//반환값을 seq로 받아
			//전체 여행내역 테이블에 넣기 + seq받기
			
			ArrayList<String> tripBPPSchedule_seqList = new ArrayList<String>(); 
			//전체 여행내역 일차별에 테이블 넣기 seq 담을 배열
			
			String[] sd = sTicket.getIssuedate().split("-");
			
			for(int i=0; i<tList.size(); i++) {
				//그날 날짜 넣기
				Calendar c = Calendar.getInstance();
				c.set(Integer.parseInt(sd[0]),Integer.parseInt(sd[1])-1,Integer.parseInt(sd[2]));
				c.add(Calendar.DATE, i);//현재날짜
				
				tripBPPSchedule_seqList.add(dao.ybhAddBPPSchedule(tripBPP_seq,String.format("%tF", c),i+1));
				
				//seq 하나씩 담아버리기
				
			}
			
			for(int i=0; i<tripBPPSchedule_seqList.size(); i++) {
				System.out.println("i: "+i);
				//ㄴ여행계획 일차별 seq
				for(int j=0; j<tList.get(i).size(); j++) {
					System.out.println("j: "+j);
					//ㄴ 여행계획 일차별 관광지들은 여러개이므로 이중배열
					dao.ybhAddBPPScheduleTouristSpot(tripBPPSchedule_seqList.get(i), tList.get(i).get(j).getTouristSpot_seq());
					//ㄴ 일차별 관광지여러개중에 한개의 관광지씩 seq 빼서 INSERT
				}
				
				if(rList.get(i) != null && !rList.get(i).getHotelSchedule_seq().equals("")) {
					System.out.println("rList"+i +"="+ rList.get(i));
					
					//ㄴ ""이 넘어올지도 모르니까 안전빵으로 두개 조건걸고
					dao.ybhAddBPPScheduleRoom(tripBPPSchedule_seqList.get(i), rList.get(i).getHotelSchedule_seq());
				}
				if(gList.get(i) != null && !gList.get(i).getGuideschedule_seq().equals("")) {
					System.out.println("gList"+i +"="+ gList.get(i));
					System.out.println("gList: "+gList.get(i).getTotalPrice());
					dao.ybhAddBPPScheduleGuide(tripBPPSchedule_seqList.get(i), gList.get(i).getGuideschedule_seq(), gList.get(i).getTotalPrice());
					
				}
				
			}
			
			
		}
		//이제 저 내역들을 다불러와야됨!! 시발~~~
		ArrayList<YbhTripBPPDTO> bppList= dao.ybhGetBPPSList(member.getMember_id());
		
		req.setAttribute("bppList", bppList);
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/member/ybh/ybhMypage.jsp");
		dispatcher.forward(req, resp);

	}
}
