/*
문서명 : DML-DM05-Airline.sql (6/9)
작성자 : 클라&서버 2조
작성일자 : 2019.07.26.
프로젝트명 : Tramap_Basket
프로그램명 : 자유여행사 사이트(Travel+Map+Basket)
프로그램 설명 : JSP와 Database 기반의 프로그램입니다.
URL Link : https://github.com/Chanmi-Kim/Tra-Map-Basket
*/

----------- 항공사 더미 ---------------------------
insert into tblAirline (airline_seq,name,picture,isDelete ) values(1,'티웨이','티웨이.png',1);
insert into tblAirline (airline_seq,name,picture,isDelete ) values(2,'진에어','진에어png',1);
insert into tblAirline (airline_seq,name,picture,isDelete ) values(3,'아시아나항공','아시아나항공.png',1);

--------------- 좌석 등급 ----------------------

insert into tblFlightClass(flightClass_seq,name,isDelete) values (1,'이코노미',1);
insert into tblFlightClass(flightClass_seq,name,isDelete) values (2,'비즈니스',1);

--------------- 공항 --------------------------
insert into tblAirport(airport_seq,country_seq,name,lat,lng,isDelete) values(1,0,'인천공항',37.473766,126.440502,1);
insert into tblAirport(airport_seq,country_seq,name,lat,lng,isDelete) values(2,1,'방콕공항',13.700440,100.748659,1);
insert into tblAirport(airport_seq,country_seq,name,lat,lng,isDelete) values(3,2,'워싱턴공항',38.953200,-77.456346,1);


---------------------------- 시간--------------------------------------
insert into tblflightTime(flightTime_seq,startTime,arrivetime,isdelete) values (1, '08:50', '12:50', 1);
insert into tblflightTime(flightTime_seq,startTime,arrivetime,isdelete) values (2, '09:30', '13:30', 1);
-- 시간 더 추가

insert into tblflightTime(flightTime_seq,startTime,arrivetime,isdelete) values (3, '10:20', '14:20', 1);
insert into tblflightTime(flightTime_seq,startTime,arrivetime,isdelete) values (4, '11:40', '15:40', 1);

insert into tblflightTime(flightTime_seq,startTime,arrivetime,isdelete) values (5, '12:30', '16:30', 1);
insert into tblflightTime(flightTime_seq,startTime,arrivetime,isdelete) values (6, '13:40', '17:40', 1);

insert into tblflightTime(flightTime_seq,startTime,arrivetime,isdelete) values (7, '14:20', '18:40', 1);
insert into tblflightTime(flightTime_seq,startTime,arrivetime,isdelete) values (8, '15:10', '19:55', 1);

insert into tblflightTime(flightTime_seq,startTime,arrivetime,isdelete) values (9, '16:40', '20:20', 1);
insert into tblflightTime(flightTime_seq,startTime,arrivetime,isdelete) values (10, '17:30', '21:20', 1);



----------------------------------항공편-----------------------------------------
--인천 > 방콕 
insert into tblFlight(flight_seq,startAirport_seq,arriveAirport_seq,waypointAirport_seq,flightTime_seq,airline_seq,flightClass_seq,price,isDelete) 
values(1,1,2,null,1,1,1,138000,1);  -- 이코노미

insert into tblFlight(flight_seq,startAirport_seq,arriveAirport_seq,waypointAirport_seq,flightTime_seq,airline_seq,flightClass_seq,price,isDelete) 
values(2,1,2,null,1,1,2,155000,1);  -- 비즈니스




--방콕 > 인천
insert into tblFlight(flight_seq,startAirport_seq,arriveAirport_seq,waypointAirport_seq,flightTime_seq,airline_seq,flightClass_seq,price,isDelete) 
values(3,2,1,null,2,2,1,134000,1);  -- 이코노미

insert into tblFlight(flight_seq,startAirport_seq,arriveAirport_seq,waypointAirport_seq,flightTime_seq,airline_seq,flightClass_seq,price,isDelete) 
values(4,2,1,null,2,2,2,152000,1);  -- 비즈니스

-- 항공 가는편 더추가 (인천 > 방콕)
insert into tblFlight(flight_seq,startAirport_seq,arriveAirport_seq,waypointAirport_seq,flightTime_seq,airline_seq,flightClass_seq,price,isDelete) 
values(5,1,2,null,3,3,2,162000,1);  -- 비즈니스

insert into tblFlight(flight_seq,startAirport_seq,arriveAirport_seq,waypointAirport_seq,flightTime_seq,airline_seq,flightClass_seq,price,isDelete) 
values(6,1,2,null,5,3,2,167000,1);  -- 비즈니스

insert into tblFlight(flight_seq,startAirport_seq,arriveAirport_seq,waypointAirport_seq,flightTime_seq,airline_seq,flightClass_seq,price,isDelete) 
values(7,1,2,null,7,2,1,137000,1);  -- 이코노미

insert into tblFlight(flight_seq,startAirport_seq,arriveAirport_seq,waypointAirport_seq,flightTime_seq,airline_seq,flightClass_seq,price,isDelete) 
values(8,1,2,null,9,1,2,147000,1);  -- 비즈니스

-- 항공 오는편 더추가 (방콕 > 인천)

insert into tblFlight(flight_seq,startAirport_seq,arriveAirport_seq,waypointAirport_seq,flightTime_seq,airline_seq,flightClass_seq,price,isDelete) 
values(9,2,1,null,4,3,2,157000,1);  -- 비즈니스

insert into tblFlight(flight_seq,startAirport_seq,arriveAirport_seq,waypointAirport_seq,flightTime_seq,airline_seq,flightClass_seq,price,isDelete) 
values(10,2,1,null,6,2,2,151000,1);  -- 비즈니스

insert into tblFlight(flight_seq,startAirport_seq,arriveAirport_seq,waypointAirport_seq,flightTime_seq,airline_seq,flightClass_seq,price,isDelete) 
values(11,2,1,null,8,1,1,131000,1);  -- 이코노미

insert into tblFlight(flight_seq,startAirport_seq,arriveAirport_seq,waypointAirport_seq,flightTime_seq,airline_seq,flightClass_seq,price,isDelete) 
values(12,2,1,null,10,1,2,137000,1);  -- 이코노미




--------------       티         켓   -------------
insert into tblTicket(ticket_seq,issuedate,quantity,flight_seq) values (1, '2019-08-22', 70, 1); -- 이코노미

insert into tblTicket(ticket_seq,issuedate,quantity,flight_seq) values (2, '2019-08-22', 70, 2); -- 비즈니스

insert into tblTicket(ticket_seq,issuedate,quantity,flight_seq) values (3, '2019-08-25', 80, 3); -- 이코

insert into tblTicket(ticket_seq,issuedate,quantity,flight_seq) values (4, '2019-08-25', 80, 4); -- 비즈


-- 항공 티켓 더추가

insert into tblTicket(ticket_seq,issuedate,quantity,flight_seq) values (5, '2019-08-22', 90, 5); 

insert into tblTicket(ticket_seq,issuedate,quantity,flight_seq) values (6, '2019-08-22', 80, 6); 

insert into tblTicket(ticket_seq,issuedate,quantity,flight_seq) values (7, '2019-08-22', 70, 7); 

insert into tblTicket(ticket_seq,issuedate,quantity,flight_seq) values (8, '2019-08-22', 80, 8); 


insert into tblTicket(ticket_seq,issuedate,quantity,flight_seq) values (9, '2019-08-25', 80, 9); 

insert into tblTicket(ticket_seq,issuedate,quantity,flight_seq) values (10, '2019-08-25', 70, 10); 

insert into tblTicket(ticket_seq,issuedate,quantity,flight_seq) values (11, '2019-08-25', 80, 11); 

insert into tblTicket(ticket_seq,issuedate,quantity,flight_seq) values (12, '2019-08-25', 90, 12); 

--리뷰용
--한국 > 방콕 
insert into tblTicket(ticket_seq,issuedate,quantity,flight_seq) values (13, '2019-07-13', 68, 1); -- 비즈니스
--방콕 > 한국
insert into tblTicket(ticket_seq,issuedate,quantity,flight_seq) values (14, '2019-07-15', 78, 4); -- 비즈니스
