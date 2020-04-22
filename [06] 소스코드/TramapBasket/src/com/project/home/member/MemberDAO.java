package com.project.home.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.project.home.DBUtil;
import com.project.home.member.cdb.BPPVwThaiTSDTO;
import com.project.home.member.ybh.YbhGuideReviewDTO;
import com.project.home.member.ybh.YbhMemberDTO;
import com.project.home.member.ybh.YbhTripBPPDTO;

public class MemberDAO {
	private Connection conn;
	private PreparedStatement stat;
	private ResultSet rs;

	public MemberDAO() {
		DBUtil util = new DBUtil();
		conn = util.connect("211.63.89.56","test43","java1234");
	}

	
	
	//==다빈=========================
	
	public ArrayList<BPPCountryDTO> cdbClist() {
		// TODO 나라선택 
		
		try {
			String sql = "select country_seq, name, picture, description from tblCountry";
			
			stat = conn.prepareStatement(sql);
			
			rs = stat.executeQuery();
			
			ArrayList<BPPCountryDTO> list = new ArrayList<BPPCountryDTO>();
			
			while(rs.next()) {
				BPPCountryDTO dto = new BPPCountryDTO();
				
				dto.setCountry_seq(rs.getString("country_seq"));
				dto.setName(rs.getString("name"));
				dto.setPicture(rs.getString("picture"));
				dto.setDescription(rs.getString("description"));
				
				list.add(dto);
			}
			
			return list;
			
		} catch (Exception e) {

			System.out.println("MemberDAO.cdbClist : " + e.toString());
		}
		return null;
	}

	
	public ArrayList<BPPTicketDTO> cdbTlist() {
		// TODO 항공권
		
		try {
			String sql = "select from tblTicket";
			
			//항공권 뷰 만들기!!!!!!
			stat = conn.prepareStatement(sql);
			
			rs = stat.executeQuery();
			
			ArrayList<BPPTicketDTO> list = new ArrayList<BPPTicketDTO>();
			
			while(rs.next()) {
				BPPTicketDTO dto = new BPPTicketDTO();
				
				dto.setTicket_seq(rs.getString("ticket_seq"));
				dto.setIssuedate(rs.getString("issuedate"));
				dto.setQuantity(rs.getInt("quantity"));
//				dto.setStartAirportName(rs.getString("startAirportName"));
				
			}

		} catch (Exception e) {

			System.out.println("MemberDAO.cdbTlist : " + e.toString());
		}
		
		return null;
	}

	public ArrayList<BPPThemeDTO> cdbThemelist() {
		// TODO 테마이름 불러오기 
		try {
			String sql = "select theme_seq, name from tblTheme";
			
			stat=conn.prepareStatement(sql);
			rs = stat.executeQuery();
			
			ArrayList<BPPThemeDTO> tlist = new ArrayList<BPPThemeDTO>();
			
			while (rs.next()) {
				BPPThemeDTO dto = new BPPThemeDTO();
				
				dto.setTheme_seq(rs.getString("theme_seq"));
				dto.setName(rs.getString("name"));
				
				tlist.add(dto);			
				
			}

			return tlist;
			
		} catch (Exception e) {

			System.out.println("MemberDAO.cdbThemelist : " + e.toString());
		}
		return null;
	}

	public ArrayList<BPPVwThaiTSDTO> cdbTSlist(String tseq) {
		// TODO 테마에 따른 관광지 
		try {
			String sql = "select * from vwThaiTS where tseq=?";
			
			stat = conn.prepareStatement(sql);
			stat.setString(1, tseq);
			rs = stat.executeQuery();
			
			ArrayList<BPPVwThaiTSDTO> list = new ArrayList<BPPVwThaiTSDTO>();
			

			while(rs.next()) {
				BPPVwThaiTSDTO dto = new BPPVwThaiTSDTO();
				
				dto.setTname(rs.getString("tname")); //테마이름
				dto.setTicon(rs.getString("ticon")); //테마 아이콘 이름
				dto.setSname(rs.getString("sname")); //관광지 이름
				dto.setSpicture(rs.getString("spicture")); //관광지 사진
				dto.setSdescription(rs.getString("sdescription")); //관광지 설명 
				
				
				
				list.add(dto);
			}
			
			return list;
			
		} catch (Exception e) {

			System.out.println("MemberDAO.cdbTSlist : " + e.toString());
		}
		return null;
	}
	
	
	
	
	//=====병현===================
	public ArrayList<BPPGuideDTO> ybhGuideList(String startday, ArrayList<BPPTouristSpotDTO> tsTemp) {
		try {
			String in = "";
			for(int i =0; i<tsTemp.size(); i++) {
				if(i < tsTemp.size()-1) {
					in += tsTemp.get(i).getTouristSpot_seq() +", ";
					
				}else {
					in += tsTemp.get(i).getTouristSpot_seq();
					
				}
			}
		
			String sql = 
					"SELECT g.guide_id, g.name, g.gender, g.age, g.picture, g.regdate, g.isDelete, g.description, " + 
					"    gs.state, gs.guideschedule_seq, (SELECT SUM(price) FROM tblguidetouristspot WHERE touristspot_seq IN ("+in+") AND guide_id = g.guide_id)  AS totalPrice, " + 
					"    (SELECT AVG(grade) FROM tbltripbppscheduleguide tbs " + 
					"        INNER JOIN tblguidereview gr " + 
					"            ON tbs.tripbppscheduleguide_seq = gr.tripbppscheduleguide_seq " + 
					"                INNER JOIN tblguideschedule gs " + 
					"                    ON tbs.guideschedule_seq = gs.guideschedule_seq " + 
					"                        WHERE gs.guide_id = g.guide_id) AS totalGrade " + 
					"FROM tblguideschedule gs " + 
					"    INNER JOIN tblguide g ON g.guide_id = gs.guide_id " + 
					"            WHERE gs.issuedate = ? " + 
					"                AND g.isDelete = 1 " + 
					"                    AND gs.state = 1 " + 
					"                        AND g.guide_id IN " + 
					"                            (SELECT g.guide_id FROM tblguide g " + 
					"                                INNER JOIN tblguidetouristspot gt ON g.guide_id = gt.guide_id " + 
					"                                    WHERE g.isDelete = 1 " + 
					"                                            AND gt.touristspot_seq IN ("+in+") " + 
					"                                                GROUP BY g.guide_id " + 
					"                                                    HAVING COUNT(*) = ?) "+
					"														ORDER BY g.regdate";
			//IN (1,2)와 COUNT(*) = 2를 수정하면됩니다, 2019-08-22도 수정
			
			stat = conn.prepareStatement(sql);

			stat.setString(1, startday);
			stat.setInt(2, tsTemp.size());

			
			rs = stat.executeQuery();
			ArrayList<BPPGuideDTO> glist = new ArrayList<BPPGuideDTO>();


			while(rs.next()) {
				BPPGuideDTO dto = new BPPGuideDTO();
				dto.setGuide_id(rs.getString("guide_id"));
				dto.setName(rs.getString("name"));
				dto.setGender(rs.getInt("gender"));
				
				dto.setAge(rs.getString("age"));
				dto.setPicture(rs.getString("picture"));
				dto.setRegdate(rs.getString("regdate"));
				dto.setIsDelete(rs.getInt("isDelete"));
				dto.setDescription(rs.getString("description"));
				dto.setState(rs.getInt("state"));
				dto.setGuideschedule_seq(rs.getString("guideschedule_seq"));
				dto.setTotalPrice(rs.getInt("totalPrice"));
				dto.setTotalGrade(rs.getDouble("totalGrade"));
				
				glist.add(dto);
			}
			
			return glist;
			
		} catch (Exception e) {
			System.out.println("MemberDAO.ybhGuideList: "+e.toString());
		}
		
		
		return null;
	}

	public BPPGuideDTO ybhGuide(String startday, ArrayList<BPPTouristSpotDTO> tsTemp, String guideId) {
		try {
			
			String in = "";
			for(int i =0; i<tsTemp.size(); i++) {
				if(i < tsTemp.size()-1) {
					in += tsTemp.get(i).getTouristSpot_seq() +", ";
					
				}else {
					in += tsTemp.get(i).getTouristSpot_seq();
					
				}
			}
//			System.out.println(in);
//			System.out.println(startday);
//			System.out.println(guideId);
			String sql = 
					"SELECT g.guide_id, g.name, g.gender, g.age, g.picture, g.regdate, g.isDelete, g.description, " + 
					"    gs.state, gs.guideschedule_seq, (SELECT SUM(price) FROM tblguidetouristspot WHERE touristspot_seq IN ("+in+") AND guide_id = g.guide_id) AS totalPrice, " + 
					"    (SELECT AVG(grade) FROM tbltripbppscheduleguide tbs " + 
					"        INNER JOIN tblguidereview gr " + 
					"            ON tbs.tripbppscheduleguide_seq = gr.tripbppscheduleguide_seq " + 
					"                INNER JOIN tblguideschedule gs " + 
					"                    ON tbs.guideschedule_seq = gs.guideschedule_seq " + 
					"                        WHERE gs.guide_id = g.guide_id) AS totalGrade " + 
					"FROM tblguideschedule gs " + 
					"    INNER JOIN tblguide g ON g.guide_id = gs.guide_id " + 
					"            WHERE gs.issuedate = ? " + 
					"                AND g.isDelete = 1 " + 
					"                    AND gs.state = 1 " + 
					"                        AND g.guide_id IN " + 
					"                            (SELECT g.guide_id FROM tblguide g " + 
					"                                INNER JOIN tblguidetouristspot gt ON g.guide_id = gt.guide_id " + 
					"                                    WHERE g.isDelete = 1 AND g.guide_id = ?" + 
					"                                            AND gt.touristspot_seq IN ("+in+") " + 
					"                                                GROUP BY g.guide_id " + 
					"                                                    HAVING COUNT(*) = ?) "+
					"														ORDER BY g.regdate";
			//ybhGuideList와의 차이는 AND g.guide_id = ?
			//한개만뽑아옴
			stat = conn.prepareStatement(sql);

			stat.setString(1, startday);
			stat.setString(2, guideId);
			stat.setInt(3, tsTemp.size());
			
			
			rs = stat.executeQuery();
			
			if(rs.next()) {
				BPPGuideDTO dto = new BPPGuideDTO();
				dto.setGuide_id(rs.getString("guide_id"));
				dto.setName(rs.getString("name"));
				dto.setGender(rs.getInt("gender"));
				
				dto.setAge(rs.getString("age"));
				dto.setPicture(rs.getString("picture"));
				dto.setRegdate(rs.getString("regdate"));
				dto.setIsDelete(rs.getInt("isDelete"));
				dto.setDescription(rs.getString("description"));
				dto.setState(rs.getInt("state"));
				dto.setGuideschedule_seq(rs.getString("guideschedule_seq"));
				
				dto.setTotalPrice(rs.getInt("totalPrice"));
				dto.setTotalGrade(rs.getDouble("totalGrade"));
				return dto;
			}
			
		} catch (Exception e) {
			System.out.println("MemberDAO.ybhGuide: "+e.toString());
		}
		
		
		return null;
	}

	public YbhMemberDTO ybhMemberLogin(String memberId, String memberPw) {
		try {
			String sql = "SELECT * FROM tblMember WHERE member_id = ? AND pw = ? AND isDelete = 1";
			stat = conn.prepareStatement(sql);
			
			stat.setString(1, memberId);
			stat.setString(2, memberPw);
			
			rs = stat.executeQuery();
			
			if(rs.next()) {
				YbhMemberDTO dto = new YbhMemberDTO();
				dto.setMember_id(rs.getString("member_id"));
				dto.setName(rs.getString("name"));
				dto.setGender(rs.getInt("gender"));
				dto.setPicture(rs.getString("picture"));
				dto.setRegdate(rs.getString("regdate"));
				dto.setTel(rs.getString("tel"));
				dto.setBirth(rs.getString("birth"));
				
				return dto;
			}
			
		} catch (Exception e) {
			System.out.println("MemberDAO.ybhMemberLogin: "+e.toString());
		}
		
		
		return null;
	}

	public String ybhAddBPP(String st_seq, String at_seq, String id) {
		try {
			String sql = 
					"INSERT INTO tbltripbpp(tripBPP_seq, startTicket_seq, arriveTicket_seq, member_id, isPaid, isDelete, paymentdate)" + 
					"    VALUES(NVL((SELECT MAX(tripBPP_seq) FROM tbltripbpp)+1,1),?,?,?,1,1,DEFAULT)";
			stat = conn.prepareStatement(sql);
			stat.setString(1, st_seq);
			stat.setString(2, at_seq);
			stat.setString(3, id);
			
			int result = 0;
			result = stat.executeUpdate();
			System.out.println("ybhAddBPP result: "+result); //잘되는지 확인용
			
			if(result==1) {//잘들어갔으면 + 혹시몰라서 MAX까지해놓음
				sql = "SELECT MAX(tripBPP_seq) AS tripBPP_seq FROM tbltripbpp " + 
						"WHERE startTicket_seq = ? AND arriveTicket_seq = ? AND member_id = ? AND isPaid = 1";
				stat = conn.prepareStatement(sql);
				stat.setString(1, st_seq);
				stat.setString(2, at_seq);
				stat.setString(3, id);
				rs = stat.executeQuery();
				
				if(rs.next()) {
					
					return rs.getString("tripBPP_seq"); //반드시리턴!!
				}
			}
			
			
		} catch (Exception e) {
			System.out.println("MemberDAO.ybhAddBPP: "+e.toString());
		}
		
		
		return null;
	}

	

	public String ybhAddBPPSchedule(String tripBPP_seq, String tourdate, int day) {
		try {
			String sql = "INSERT INTO tbltripbppschedule(tripBPPSchedule_seq, tripBPP_seq, tourdate, day)" + 
					"    VALUES(NVL((SELECT MAX(tripBPPSchedule_seq) FROM tbltripbppschedule)+1,1), ?, ?, ?)";
			
			stat = conn.prepareStatement(sql);
			stat.setString(1, tripBPP_seq);
			stat.setString(2, tourdate);
			stat.setInt(3, day);
			
			int result = 0;
			result = stat.executeUpdate();
			System.out.println("ybhAddBPPSchedule result: "+result); //잘되는지 확인용
			
			if(result ==1) {
				sql = "SELECT MAX(tripbppschedule_seq) AS tripbppschedule_seq FROM tbltripbppschedule WHERE tripbpp_seq = ?";
				
				stat = conn.prepareStatement(sql);
				stat.setString(1, tripBPP_seq);
				
				rs = stat.executeQuery();
				if(rs.next()) {
					return rs.getString("tripbppschedule_seq"); //반드시리턴!!
				}
			}
			
			
			
		} catch (Exception e) {
			System.out.println("MemberDAO.ybhAddBPPSchedule: "+e.toString());
		}
		
		
		return null;
	}

	public void ybhAddBPPScheduleTouristSpot(String tripBPPSchedule_seq, String touristSpot_seq) {
		try {
			String sql = "INSERT INTO tbltripbppscheduletouristspot(tripBPPScheduleTouristSpot_seq, tripBPPSchedule_seq, touristSpot_seq)" + 
					"    VALUES(NVL((SELECT MAX(tripBPPScheduleTouristSpot_seq) FROM tbltripbppscheduletouristspot)+1,1),?,?)";
			stat = conn.prepareStatement(sql);
			
			stat.setString(1, tripBPPSchedule_seq);
			stat.setString(2, touristSpot_seq);
			
			int result = 0;
			result = stat.executeUpdate();
			System.out.println("ybhAddBPPScheduleTouristSpot result: "+ result);
			
			
			
		} catch (Exception e) {
			System.out.println("MemberDAO.ybhAddBPPScheduleTouristSpot: "+e.toString());
		}
		
		
		
	}

	public void ybhAddBPPScheduleRoom(String tripBPPSchedule_seq, String hotelSchedule_seq) {
		try {
			String sql = "INSERT INTO tbltripbppscheduleroom(tripBPPScheduleRoom_seq, tripBPPSchedule_seq, hotelSchedule_seq)" + 
					"    VALUES(NVL((SELECT MAX(tripBPPScheduleRoom_seq) FROM tbltripbppscheduleroom)+1,1), ?, ?)";
			stat = conn.prepareStatement(sql);
			stat.setString(1, tripBPPSchedule_seq);
			stat.setString(2, hotelSchedule_seq);
			
			int result = 0;
			result = stat.executeUpdate();
			System.out.println("ybhAddBPPScheduleRoom result: "+ result);
			
			
		} catch (Exception e) {
			System.out.println("MemberDAO.ybhAddBPPScheduleRoom: "+e.toString());
		}
		
		
		
	}

	public void ybhAddBPPScheduleGuide(String tripBPPSchedule_seq, String guideschedule_seq, int price) {
		try {
			String sql = "INSERT INTO tbltripbppscheduleguide(tripBPPScheduleGuide_seq, tripBPPSchedule_seq, guideSchedule_seq, price)" + 
					"    VALUES(NVL((SELECT MAX(tripBPPScheduleGuide_seq) FROM tbltripbppscheduleguide)+1,1), ?, ?, ?)";
			stat = conn.prepareStatement(sql);
			stat.setString(1, tripBPPSchedule_seq);
			stat.setString(2, guideschedule_seq);
			stat.setInt(3, price);
			
			
			int result = 0;
			result = stat.executeUpdate();
			System.out.println("ybhAddBPPScheduleGuide result: "+ result);
			
			
			
		} catch (Exception e) {
			System.out.println("MemberDAO.ybhAddBPPScheduleGuide: "+e.toString());
		} 		
		
		
		
		
	}

	public ArrayList<YbhTripBPPDTO> ybhGetBPPSList(String member_id) {
		try {
			String sql = "SELECT " + 
					"    tb.tripbpp_seq, " + 
					"    (SELECT name FROM tblcountry  " + 
					"    WHERE country_seq = (SELECT country_seq FROM tblairport  " + 
					"        WHERE airport_seq = (SELECT arriveairport_seq FROM tblflight  " + 
					"            WHERE flight_seq = (SELECT flight_seq FROM tblticket WHERE ticket_seq = tb.startticket_seq)))) AS countryName, " + 
					"    (SELECT issuedate FROM tblticket  " + 
					"        WHERE ticket_seq = tb.startticket_seq) AS startdate, " + 
					"    (SELECT issuedate FROM tblticket  " + 
					"        WHERE ticket_seq = tb.arriveticket_seq) AS arrivedate, " + 
					"    tb.paymentdate, " + 
					"    (SELECT price FROM tblflight  " + 
					"        WHERE flight_seq = (SELECT flight_seq FROM tblticket WHERE ticket_seq = tb.startticket_seq)) AS sTicketPrice, " + 
					"    (SELECT price FROM tblflight  " + 
					"        WHERE flight_seq = (SELECT flight_seq FROM tblticket WHERE ticket_seq = tb.arriveticket_seq)) AS aTicketPrice, " + 
					"    (SELECT SUM(price) FROM tblroom " + 
					"        WHERE room_seq IN(SELECT room_seq FROM tblhotelschedule  " + 
					"        WHERE hotelschedule_seq IN (SELECT hotelschedule_seq FROM tbltripbppscheduleroom  " + 
					"            WHERE tripbppschedule_seq IN ((SELECT tripbppschedule_seq FROM tbltripbppschedule WHERE tripbpp_seq = tb.tripbpp_seq))))) AS roomPrice, " + 
					"    (SELECT SUM(price) FROM tbltripbppscheduleguide  " + 
					"        WHERE tripbppschedule_seq IN ((SELECT tripbppschedule_seq FROM tbltripbppschedule WHERE tripbpp_seq = tb.tripbpp_seq))) AS guidePrice " + 
					"FROM tbltripbpp tb " + 
					"    WHERE member_id = ? AND ispaid = 1 AND isdelete = 1 ORDER BY paymentdate DESC";
			stat = conn.prepareStatement(sql);
			stat.setString(1, member_id);
			
			rs = stat.executeQuery();
			
			ArrayList<YbhTripBPPDTO> bppList = new ArrayList<YbhTripBPPDTO>();
			while(rs.next()) {
				YbhTripBPPDTO dto = new YbhTripBPPDTO();
				dto.setTripbpp_seq(rs.getString("tripbpp_seq"));
				dto.setCountryName(rs.getString("countryName"));
				dto.setStartdate(rs.getString("startdate"));
				dto.setArrivedate(rs.getString("arrivedate"));
				dto.setPaymentdate(rs.getString("paymentdate"));
				
				dto.setsTicketPrice(rs.getInt("sTicketPrice"));
				dto.setaTicketPrice(rs.getInt("aTicketPrice"));
				//System.out.println("roomPrice넣기전");
				dto.setRoomPrice(rs.getInt("roomPrice")); //널일때 무슨상황이 일어날까요?
				//정답: 알아서 0으로 바꿔줍니다 nice 문자열의경우는 ""일듯??
				//System.out.println("roomPrice넣은후");
				//System.out.println("roomPrice: "+dto.getRoomPrice());
				
				dto.setGuidePrice(rs.getInt("guidePrice"));
				
				bppList.add(dto);
				
			}
			
			return bppList;
			
			
		} catch (Exception e) {
			System.out.println("MemberDAO.ybhGetBPPSList: "+e.toString());
		}
		
		
		return null;
	}

	public ArrayList<YbhGuideReviewDTO> ybhBoardView(String guide_id) {
		try {
			String sql = 
					"SELECT gr.guidereview_seq, gr.tripbppscheduleguide_seq, gr.title, gr.content, gr.grade, gr.regdate, " + 
					"    (SELECT member_id FROM tbltripbpp " + 
					"        WHERE tripbpp_seq = (SELECT tripbpp_seq FROM tbltripbppschedule " + 
					"            WHERE tripbppschedule_seq = (SELECT tripbppschedule_seq FROM tbltripbppscheduleguide WHERE tripbppscheduleguide_seq = gr.tripbppscheduleguide_seq))) AS member_id " + 
					"FROM tblguidereview gr " + 
					"    WHERE tripbppscheduleguide_seq IN(SELECT tripbppscheduleguide_seq FROM tbltripbppscheduleguide " + 
					"        WHERE guideschedule_seq IN (SELECT guideschedule_seq FROM tblguideschedule WHERE guide_id = ?))";
			
			stat = conn.prepareStatement(sql);
			stat.setString(1, guide_id);
			
			
			rs = stat.executeQuery();
			
			ArrayList<YbhGuideReviewDTO> grList = new ArrayList<YbhGuideReviewDTO>();
			while(rs.next()) {
				YbhGuideReviewDTO dto = new YbhGuideReviewDTO();
				dto.setGuidereview_seq(rs.getString("guidereview_seq"));
				dto.setTripbppscheduleguide_seq(rs.getString("tripbppscheduleguide_seq"));
				
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setGrade(rs.getInt("grade"));
				
				dto.setMember_id(rs.getString("member_id"));
				dto.setRegdate(rs.getString("regdate"));
				grList.add(dto);
			}
			return grList;
			
		} catch (Exception e) {
			System.out.println("MemberDAO.ybhBoardView: "+e.toString());
		}
		
		
		return null;
	}

	public BPPGuideDTO ybhGuide(String guide_id) {
		try {
			String sql = "SELECT guide_id, name, gender, age, picture, description, regdate, isdelete " + 
					"FROM tblguide WHERE guide_id = ?";
			stat = conn.prepareStatement(sql);
			stat.setString(1, guide_id);
			
			rs = stat.executeQuery();
			
			if(rs.next()) {
				BPPGuideDTO dto = new BPPGuideDTO();
				dto.setGuide_id(rs.getString("guide_id"));
				dto.setName(rs.getString("name"));
				dto.setGender(rs.getInt("gender"));
				
				dto.setAge(rs.getString("age"));
				dto.setPicture(rs.getString("picture"));
				dto.setRegdate(rs.getString("regdate"));
				dto.setIsDelete(rs.getInt("isDelete"));
				dto.setDescription(rs.getString("description"));
				
				return dto;
			}
			
		} catch (Exception e) {
			System.out.println("MemberDAO.ybhGuide: "+e.toString());
		}
		
		
		return null;
	}

	public int ybhReviewDel(String guidereview_seq) {
		try {
			String sql = "DELETE FROM tblguidereview WHERE guidereview_seq = ?";
			
			stat = conn.prepareStatement(sql);
			
			stat.setString(1, guidereview_seq);
			
			return stat.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("MemberDAO.ybhReviewDel: "+e.toString());
		}
		
		
		return 0;
	}

	
	
	
}
