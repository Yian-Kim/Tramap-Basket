package com.project.home.admin.hotel;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.home.admin.AdminDAO;

@WebServlet("/admin/hotel/add.do")
public class Add extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//AdminDAO dao = new AdminDAO();
		
		req.setCharacterEncoding("UTF-8");
	
		
		AdminDAO dao = new AdminDAO();
		HotelDTO hodto = new HotelDTO();
		
		TouristSpotDTO tsdto = new TouristSpotDTO();
		
		CountryDTO cdto = new CountryDTO();
		
		
	//ArrayList<TouristSpotDTO> gettouristspotlist = dao.gettouristspotlist();
		//ArrayList<CountryDTO> getCountrylist = dao.getCountrylist();
		
		req.setAttribute("tsdto", tsdto);
		req.setAttribute("cdto", cdto);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/hotel/add.jsp");
		dispatcher.forward(req, resp);
	}

}
