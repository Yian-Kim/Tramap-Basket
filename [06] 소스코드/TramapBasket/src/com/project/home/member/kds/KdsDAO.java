package com.project.home.member.kds;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.project.home.DBUtil;
import com.project.home.member.kds.HotelDTO;

public class KdsDAO {
	private Connection conn;
	private PreparedStatement stat;
	private ResultSet rs;

	public KdsDAO() {
		DBUtil util = new DBUtil();
		conn = util.connect("211.63.89.56","test35","java1234");
	}

	public ArrayList<HotelDTO> listHotel() {
		
		try {

			String sql = "select * from tblHotel";
			stat = conn.prepareStatement(sql);
			rs = stat.executeQuery();

			ArrayList<HotelDTO> list = new ArrayList<HotelDTO>();

			while (rs.next()) {
				HotelDTO dto = new HotelDTO();
				dto.setHotel_seq(rs.getString("Hotel_seq"));
				dto.setTouristSpot_seq(rs.getString("TouristSpot_seq"));
				dto.setName(rs.getString("name"));
				dto.setPicture(rs.getString("picture"));
				dto.setDescription(rs.getString("Description"));
				dto.setLat(rs.getString("lat"));
				dto.setLng(rs.getString("lng"));
				dto.setIsDelete(rs.getString("isDelete"));
				list.add(dto);
			}

			return list;

		} catch (Exception e) {

			System.out.println("KdsDAO.listHotel : " + e.toString());
		}

		return null;
	}

	
	public ArrayList<RoomDTO> listRoom() {
		
		try {
			
			String sql = "select * from tblRoom";
			stat = conn.prepareStatement(sql);
			rs = stat.executeQuery();
			
			ArrayList<RoomDTO> list1 = new ArrayList<RoomDTO>();
			
			while (rs.next()) {
				RoomDTO dto = new RoomDTO();
				dto.setRoom_seq(rs.getString("room_seq"));
				dto.setRoomClass_seq(rs.getString("roomClass_seq"));
				dto.setHotel_seq(rs.getString("hotel_seq"));
				dto.setPrice(rs.getString("price"));
				dto.setPersonCount(rs.getString("personCount"));
				dto.setIsDelete(rs.getString("isDelete"));
				
				list1.add(dto);
				
			}
			return list1;
			
		} catch (Exception e) {
			
			System.out.println("KdsDAO.listRoom : " + e.toString());
		}
		return null;
	}

	public ArrayList<RoomClassDTO> listRoomClass() {
		try {
			
			String sql = "select * from tblRoomClass";
			stat = conn.prepareStatement(sql);
			rs = stat.executeQuery();
			
	ArrayList<RoomClassDTO> list2 = new ArrayList<RoomClassDTO>();
			
			while (rs.next()) {
				RoomClassDTO dto = new RoomClassDTO();
				dto.setRoomClass_seq(rs.getString("roomClass_seq"));
				dto.setName(rs.getString("name"));
				
				
				list2.add(dto);
				
			}
			return list2;
		} catch (Exception e) {
			
			System.out.println("KdsDAO.listRoomClass : " + e.toString());
		}
		return null;
	}

	public ArrayList<TouristSpotDTO> listTouristSpot() {
		try {
			
			String sql = "select * from tblTouristSpot";
			stat = conn.prepareStatement(sql);
			rs = stat.executeQuery();
			
			ArrayList<TouristSpotDTO> list3 = new ArrayList<TouristSpotDTO>();
			
			while (rs.next()) {
				TouristSpotDTO dto = new TouristSpotDTO();
				
				dto.setTouristSpot_seq(rs.getString("touristSpot_seq"));
				dto.setCountry_seq(rs.getString("country_seq"));
				dto.setName(rs.getString("name"));
				dto.setPicture(rs.getString("picture"));
				dto.setDescription(rs.getString("description"));
				dto.setLat(rs.getString("lat"));
				dto.setLng(rs.getString("lng"));
				dto.setIsDelete(rs.getString("isDelete"));
				
				list3.add(dto);
				
			}
			return list3;
			
		} catch (Exception e) {
			
			System.out.println("KdsDAO.listTouristSpot : " + e.toString());
		}
		return null;
	}
	
	
	
}
