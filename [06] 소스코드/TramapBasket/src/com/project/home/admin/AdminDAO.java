package com.project.home.admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;

import com.project.home.DBUtil;
import com.project.home.admin.airline.FakeTicketDTO;
import com.project.home.admin.airline.vwAirlineTicketDTO;
import com.project.home.admin.country.CountryDTO;
import com.project.home.admin.hotel.HotelDTO;
import com.project.home.admin.hotel.TouristSpotDTO;
import com.project.home.admin.member.MemberDTO;
import com.project.home.admin.theme.ThemeDTO;

public class AdminDAO {
	private Connection conn;
	private PreparedStatement stat;
	private ResultSet rs;

	public AdminDAO() {
		DBUtil util = new DBUtil();
		conn = util.connect("211.63.89.56", "test43", "java1234");
		// conn = util.connect();
	}

	
	
	
	
	
	
	
	//====
	
	
	public ArrayList<CountryDTO> list20() {

		try {

			String sql = "select * from tblCountry";

			stat = conn.prepareStatement(sql);
			rs = stat.executeQuery();

			ArrayList<CountryDTO> colist = new ArrayList<CountryDTO>();

			while (rs.next()) {

				CountryDTO co = new CountryDTO();

				co.setName(rs.getString("name"));

				colist.add(co);
			}

			return colist;

		} catch (Exception e) {
			System.out.println("AdminDAO.list20 : " + e.toString());
		}

		return null;
	}

	public int add20(CountryDTO dto) {

		try {

			String sql = "insert into tblcountry (country_seq, name, picture, description, isdelete) values (country_seq.nextval, ?, 'icon.jpg', 나라 설명, 1)";

			stat = conn.prepareStatement(sql);

			stat.setString(1, dto.getName());

			return stat.executeUpdate();

		} catch (Exception e) {
			System.out.println("AdminDAO.add : " + e.toString());
		}

		return 0;
	}

	public int del(String seq) {

		try {

			// 미완(쿼리 어떻게??)
			String sql = "delete from tblcountry where seq = ?";

			stat = conn.prepareStatement(sql);
			stat.setString(1, seq);

			return stat.executeUpdate();

		} catch (Exception e) {

			System.out.println("AdminDAO.del : " + e.toString());
		}

		return 0;
	}

	public CountryDTO get2(String country_seq) {

		try {

			String sql = "select * from tblCountry where country_seq = ?";

			stat = conn.prepareStatement(sql);
			stat.setString(1, country_seq);

			rs = stat.executeQuery();

			CountryDTO dto = new CountryDTO();

			if (rs.next()) {

				dto.setName(rs.getString("name"));

				return dto;
			}

		} catch (Exception e) {

			System.out.println("AdminDAO.get : " + e.toString());
		}

		return null;
	}

	public int add11(CountryDTO dto) {

		try {

			String sql = "insert into tblCountry (country_seq, name, icon, isdelete) values (country_seq.nextval, ?, 'icon.png', 1)";

			stat = conn.prepareStatement(sql);

			stat.setString(1, dto.getName());

			return stat.executeUpdate();

		} catch (Exception e) {
			System.out.println("AdminDAO.add : " + e.toString());
		}

		return 0;
	}

	public int add20(TouristSpotDTO dto) {

		try {

			String sql = "insert into tbltouristspot (touristspot_seq, country_seq, name, picture, description, lat, lng, isdelete) values (touristspot_seq.nextval, 1, ?, 'picture.png', '설명', 1, 1, 1)";

			stat = conn.prepareStatement(sql);

			stat.setString(1, dto.getName());

			return stat.executeUpdate();

		} catch (Exception e) {
			System.out.println("AdminDAO.add : " + e.toString());
		}

		return 0;
	}

	public int del13(String seq) {

		try {

			// 미완(쿼리 어떻게??)
			String sql = "delete from tbltourspot where seq = ?";

			stat = conn.prepareStatement(sql);
			stat.setString(1, seq);

			return stat.executeUpdate();

		} catch (Exception e) {

			System.out.println("AdminDAO.del : " + e.toString());
		}
		return 0;
	}

	public TouristSpotDTO get13(String touristspot_seq) {

		try {

			String sql = "select * from tblTouristspot where touristspot_seq = ?";

			stat = conn.prepareStatement(sql);
			stat.setString(1, touristspot_seq);

			rs = stat.executeQuery();

			TouristSpotDTO dto = new TouristSpotDTO();

			if (rs.next()) {

				dto.setName(rs.getString("name"));

				return dto;
			}

		} catch (Exception e) {

			System.out.println("AdminDAO.get : " + e.toString());
		}
		return null;
	}

	public int add5(ThemeDTO dto) {

		try {

			String sql = "insert into tbltheme (theme_seq, name, icon, isdelete) values (theme_seq.nextval, ?, 'icon.jpg', 1)";

			stat = conn.prepareStatement(sql);

			stat.setString(1, dto.getName());

			return stat.executeUpdate();

		} catch (Exception e) {
			System.out.println("AdminDAO.add : " + e.toString());
		}

		return 0;
	}

	// ======

	public ArrayList<ThemeDTO> list13() {

		try {

			String sql = "select * from tblTheme";

			stat = conn.prepareStatement(sql);
			rs = stat.executeQuery();

			ArrayList<ThemeDTO> thlist = new ArrayList<ThemeDTO>();

			while (rs.next()) {

				ThemeDTO th = new ThemeDTO();

				th.setName(rs.getString("name"));

				thlist.add(th);
			}

			return thlist;

		} catch (Exception e) {
			System.out.println("AdminDAO.list3 : " + e.toString());
		}
		return null;
	}

	public int add10(ThemeDTO dto) {

		try {

			String sql = "insert into tbltheme (theme_seq, name, icon, isdelete) values (theme_seq.nextval, ?, 'icon.jpg', 1)";

			stat = conn.prepareStatement(sql);

			stat.setString(1, dto.getName());

			return stat.executeUpdate();

		} catch (Exception e) {
			System.out.println("AdminDAO.add : " + e.toString());
		}

		return 0;
	}

	public int del12(String seq) {

		try {

			// 미완(쿼리 어떻게??)
			String sql = "delete from tblTheme where seq = ?";

			stat = conn.prepareStatement(sql);
			stat.setString(1, seq);

			return stat.executeUpdate();

		} catch (Exception e) {

			System.out.println("AdminDAO.del : " + e.toString());
		}
		return 0;
	}

	public ThemeDTO get12(String theme_seq) {

		try {

			String sql = "select * from tblTheme where theme_seq = ?";

			stat = conn.prepareStatement(sql);
			stat.setString(1, theme_seq);

			rs = stat.executeQuery();

			ThemeDTO dto = new ThemeDTO();

			if (rs.next()) {

				dto.setName(rs.getString("name"));

				return dto;
			}

		} catch (Exception e) {

			System.out.println("AdminDAO.get : " + e.toString());
		}

		return null;
	}

	public ArrayList<HotelDTO> hotellist() {
		try {

			// String sql = String.format("select * from vwBoard %s order by seq desc",
			// where);

			// order by notice desc, seq desc
			String sql = "select * from tblHotel";

			stat = conn.prepareStatement(sql);

			rs = stat.executeQuery();

			ArrayList<HotelDTO> hotellist = new ArrayList<HotelDTO>();

			while (rs.next()) {
				// 레코드 1개 > DTO 1개
				HotelDTO hodto = new HotelDTO();

				hodto.setHotel_seq(rs.getString("hotel_seq"));
				hodto.setTouristSpot_seq(rs.getString("touristspot_seq"));
				hodto.setName(rs.getString("name"));
				hodto.setPicture(rs.getString("picture"));
				hodto.setDescription(rs.getString("description"));
				hodto.setLat(rs.getString("lat"));
				hodto.setLng(rs.getString("lng"));
				hodto.setIsDelete(rs.getString("isdelete"));

				hotellist.add(hodto);
			}

			return hotellist;

		} catch (Exception e) {

			System.out.println("AdminDAO.hotellist : " + e.toString());
		}

		return null;
	}

	public int add(HotelDTO dto) {

		try {

			String sql = "insert into tblHotel (hotel_seq, touristSpot_seq, name, picture, description, lat, lng, isDelete) values (hotel_seq.nextval, ?, ?, ?, ?, ?, ?, 1)";

			stat = conn.prepareStatement(sql);

			stat.setString(1, dto.getTouristSpot_seq());
			stat.setString(2, dto.getName());
			stat.setString(3, dto.getPicture());
			stat.setString(4, dto.getDescription());
			stat.setString(5, dto.getLat());
			stat.setString(6, dto.getLng());

			return stat.executeUpdate();

		} catch (Exception e) {

			System.out.println("AdminDAO.add : " + e.toString());
		}

		return 0;

	}

	public HotelDTO gethotellist(String hotel_seq) {
		try {

			String sql = "select h.*, (select name from tbltouristSpot TS where TS.touristspot_seq = h.touristspot_seq) as touristspot_name from tblHotel h where hotel_seq = ?";

			stat = conn.prepareStatement(sql);
			stat.setString(1, hotel_seq);

			rs = stat.executeQuery();

			HotelDTO dto = new HotelDTO();

			if (rs.next()) {

				dto.setHotel_seq(rs.getString("hotel_seq"));
				dto.setTouristSpot_seq(rs.getString("touristspot_seq"));
				dto.setName(rs.getString("name"));
				dto.setPicture(rs.getString("picture"));
				dto.setDescription(rs.getString("description"));
				dto.setLat(rs.getString("lat"));
				dto.setLng(rs.getString("lng"));
				dto.setIsDelete(rs.getString("isDelete"));

				dto.setTouristspot_name(rs.getString("touristspot_name"));

				return dto;
			}

		} catch (Exception e) {

			System.out.println("AdminDAO.gethotellist : " + e.toString());
		}
		return null;
	}

	public int edithotel(HotelDTO dto) {
		try {

			String sql = "update tblHotel set name = ?, picture = ?, description = ?, lat = ?, lng = ? where hotel_seq = ?";

			stat = conn.prepareStatement(sql);

			stat.setString(1, dto.getName());
			stat.setString(2, dto.getPicture());
			stat.setString(3, dto.getDescription());
			stat.setString(4, dto.getLat());
			stat.setString(5, dto.getLng());

			return stat.executeUpdate();

		} catch (Exception e) {

			System.out.println("AdminDAO.edit : " + e.toString());
		}
		return 0;
	}

	public HotelDTO gethotel_seq(String hotel_seq) {

		try {

			String sql = "select h.*, (select name from tbltouristSpot TS where TS.touristspot_seq = h.touristspot_seq) as touristspot_name from tblHotel h where hotel_seq = ?";

			stat = conn.prepareStatement(sql);
			stat.setString(1, hotel_seq);

			rs = stat.executeQuery();

			HotelDTO hodto = new HotelDTO();

			if (rs.next()) {

				hodto.setHotel_seq(rs.getString("hotel_seq"));
				hodto.setTouristSpot_seq(rs.getString("touristspot_seq"));
				hodto.setName(rs.getString("name"));
				hodto.setPicture(rs.getString("picture"));
				hodto.setDescription(rs.getString("description"));
				hodto.setLat(rs.getString("lat"));
				hodto.setLng(rs.getString("lng"));
				hodto.setIsDelete(rs.getString("isDelete"));

				hodto.setTouristspot_name(rs.getString("touristspot_name"));

				return hodto;
			}

		} catch (Exception e) {

			System.out.println("AdminDAO.get : " + e.toString());
		}

		return null;
	}

	public int getTotalCount(HashMap<String, String> map) {
		try {

			String where = "";

			// getTotalCount()
			// String sql = String.format("select count(*) as cnt from tblBoard %s"
			// , where);
			String sql = String.format("select count(*) as cnt from tblHotel %s", where);

			stat = conn.prepareStatement(sql);
			rs = stat.executeQuery();

			if (rs.next()) {

				return rs.getInt("cnt");
			}

		} catch (Exception e) {

			System.out.println("AdminDAO.getTotalCount : " + e.toString());
		}
		return 0;
	}

	public ArrayList<MemberDTO> memberlist(HashMap<String, String> map) {

		try {

			String temp = "";

			if (map.containsKey("column")) { // 검색한다면..
				temp = String.format("and %s like '%%%s%%'", map.get("column"), map.get("word"));
			}

			String sql = String.format(
					"select * from (select a.*, rownum as rnum from (select member_id, pw, name, gender, picture, birth, tel, regdate from tblMember order by regdate asc) a) where rnum between %s and %s %s",
					map.get("begin"), map.get("end"), temp);

			stat = conn.prepareStatement(sql);

			rs = stat.executeQuery();

			ArrayList<MemberDTO> memberlist = new ArrayList<MemberDTO>();

			while (rs.next()) {
				MemberDTO mdto = new MemberDTO();

				mdto.setMember_id(rs.getString("member_id"));
				mdto.setPw(rs.getString("pw"));
				mdto.setName(rs.getString("name"));
				mdto.setGender(rs.getInt("gender"));
				mdto.setPicture(rs.getString("picture"));
				mdto.setBirth(rs.getString("birth"));
				mdto.setTel(rs.getString("tel"));
				mdto.setRegdate(rs.getString("regdate"));

				memberlist.add(mdto);
			}

			return memberlist;

		} catch (Exception e) {

			System.out.println("AdminDAO.list : " + e.toString());
		}

		return null;
	}

	public int getTotalCount() {

		try {

			String sql = "select count(*) as cnt from tblMember";
			stat = conn.prepareStatement(sql);
			rs = stat.executeQuery();

			if (rs.next()) {
				return rs.getInt("cnt");
			}

		} catch (Exception e) {

			System.out.println("AdminDAO.getTotalCount : " + e.toString());
		}

		return 0;
	}

	public int delmember(String member_id) {
		try {

			String sql = "update tblMember set name='anonymous', pw='1', name = '1',gender='1',picture='1',birth='1', tel='1', regdate = sysdate, isdelete = '0' where member_id = ?";

			stat = conn.prepareStatement(sql);
			stat.setString(1, member_id);

			return stat.executeUpdate();

		} catch (Exception e) {

			System.out.println("MemberDAO.del : " + e.toString());
		}
		return 0;
	}

//============상현씨 AdminDAO====================================

	public int addairline(FakeTicketDTO dto) {

		try {

			String sql = "insert into tblFakeTicket (faketicket_seq, airline_name, issuedate, start_time, arrive_time, class_lv, start_airport, arrive_airport, price, isdelete) values (faketicket_seq.nextval, ?, ?, ?, ?, ?, ?, ?, ?, 1)";

			stat = conn.prepareStatement(sql);

			stat.setString(1, dto.getAirline_name());
			stat.setString(2, dto.getIssuedate());
			stat.setString(3, dto.getStart_time());
			stat.setString(4, dto.getArrive_time());
			stat.setString(5, dto.getClass_lv());
			stat.setString(6, dto.getStart_airport());
			stat.setString(7, dto.getArrive_airport());
			stat.setString(8, dto.getPrice());

			return stat.executeUpdate();

		} catch (Exception e) {
			System.out.println("AdminDAO.add : " + e.toString());
		}

		return 0;
	}

	public ArrayList<vwAirlineTicketDTO> ticketlist() {

		try {

			String sql = "select * from vwAirlineTicket";

			stat = conn.prepareStatement(sql);
			rs = stat.executeQuery();

			ArrayList<vwAirlineTicketDTO> vwatlist = new ArrayList<vwAirlineTicketDTO>();

			while (rs.next()) {

				vwAirlineTicketDTO vwat = new vwAirlineTicketDTO();

				vwat.setAirline_name(rs.getString("항공사"));
				vwat.setIssuedate(rs.getString("날짜"));
				vwat.setStart_time(rs.getString("출발시간"));
				vwat.setArrive_time(rs.getString("도착시간"));
				vwat.setClass_name(rs.getString("좌석등급"));
				vwat.setStart_airport(rs.getString("출발공항"));
				vwat.setArrive_airport(rs.getString("도착공항"));
				vwat.setPrice(rs.getString("가격"));

				vwatlist.add(vwat);

			}

			return vwatlist;

		} catch (Exception e) {
			System.out.println("AdminDAO.list : " + e.toString());
		}

		return null;
	}

	public ArrayList<FakeTicketDTO> ticketlist2() {

		try {

			String sql = "select * from vwfaketicket";

			stat = conn.prepareStatement(sql);
			rs = stat.executeQuery();

			ArrayList<FakeTicketDTO> fklist = new ArrayList<FakeTicketDTO>();

			while (rs.next()) {

				FakeTicketDTO fk = new FakeTicketDTO();

				fk.setAirline_name(rs.getString("항공사"));
				fk.setIssuedate(rs.getString("날짜"));
				fk.setStart_time(rs.getString("출발시간"));
				fk.setArrive_time(rs.getString("도착시간"));
				fk.setClass_lv(rs.getString("좌석등급"));
				fk.setStart_airport(rs.getString("출발공항"));
				fk.setArrive_airport(rs.getString("도착공항"));
				fk.setPrice(rs.getString("가격"));

				fklist.add(fk);
			}

			return fklist;

		} catch (Exception e) {
			System.out.println("AdminDAO.list  : " + e.toString());
		}
		return null;
	}

	public int delairline(String seq) {

		try {

			// 미완(쿼리 어떻게??)
			String sql = "delete from airline where seq = ?";

			stat = conn.prepareStatement(sql);
			stat.setString(1, seq);

			return stat.executeUpdate();

		} catch (Exception e) {

			System.out.println("AdminDAO.del : " + e.toString());
		}

		return 0;
	}

	public FakeTicketDTO getairline(String faketicket_seq) {

		try {

//			 start_time as 출발시간,
//			    arrive_time as 도착시간,
//			    class_lv as 좌석등급,
//			    start_airport as 출발공항,
//			    arrive_airport as 도착공항,
//			    price as 가격
//			    from tblFaketicket;
//	         String sql = "select h.*, (select name from tbltouristSpot TS where TS.touristspot_seq = h.touristspot_seq) as touristspot_name from tblHotel h where hotel_seq = ?";
			String sql = "select f.*, (select name from tblairline where name = f.airline_name) as airline_name from tblfaketicket f where faketicket_seq = ?";

			stat = conn.prepareStatement(sql);
			stat.setString(1, faketicket_seq);

			rs = stat.executeQuery();

			FakeTicketDTO dto = new FakeTicketDTO();

			if (rs.next()) {

				dto.setAirline_name(rs.getString("airline_name"));
				dto.setIssuedate(rs.getString("issuedate"));
				dto.setStart_time(rs.getString("start_time"));
				dto.setArrive_time(rs.getString("arrive_time"));
				dto.setClass_lv(rs.getString("class_lv"));
				dto.setStart_airport(rs.getString("start_airport"));
				dto.setArrive_airport(rs.getString("arrive_airport"));
				dto.setPrice(rs.getString("price"));

				return dto;
			}

		} catch (Exception e) {

			System.out.println("AdminDAO.get : " + e.toString());
		}

		return null;

	}

}
