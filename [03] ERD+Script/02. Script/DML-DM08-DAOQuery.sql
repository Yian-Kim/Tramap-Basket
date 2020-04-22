/*
문서명 : DML-DM08-DAOQuery.sql (9/9)
작성자 : 클라&서버 2조
작성일자 : 2019.07.26.
프로젝트명 : Tramap_Basket
프로그램명 : 자유여행사 사이트(Travel+Map+Basket)
프로그램 설명 : JSP와 Database 기반의 프로그램입니다.
URL Link : https://github.com/Chanmi-Kim/Tra-Map-Basket
*/

SELECT * FROM tblcountry;

SELECT * FROM tblticket;

SELECT* FROM tblflight;
SELECT * FROM tblflightclass;
SELECT * FroM tblairport; 
--1번 인천공항
SELECT * FROM tblairline;
SELECT * FROM tblflighttime;

SELECT * FROM tbltouristspot;

SELECT * FROM tblhotelschedule;
SELECT * FROM tblroom;
SELECT * FROM tblhotel;
SELECT * FROM tblroomclass;

SELECT * FROM tblguide;
SELECT * FROM tblguidetouristspot;
SELECT * FROM tblguideschedule;


SELECT * FROM tblguidetouristspot;

--SELECT guideschedule_seq, guide_id, issuedate, state,
--    (SELECT name FROM tblguide WHERE guide_id = gs.guide_id) AS name,
--    (SELECT picture FROM tblguide WHERE guide_id = gs.guide_id) AS picture,
--    (SELECT gender FROM tblguide WHERE guide_id = gs.guide_id) AS gender,
--    (SELECT age FROM tblguide WHERE guide_id = gs.guide_id) AS age,
--    (SELECT regdate FROM tblguide WHERE guide_id = gs.guide_id) AS regdate,
--    (SELECT isDelete FROM tblguide WHERE guide_id = gs.guide_id) AS isDelete,
--    (SELECT description FROM tblguide WHERE guide_id = gs.guide_id) AS description
--FROM tblguideschedule gs
--WHERE issuedate = '2019-08-22' 
--    AND (SELECT touristspot_seq FROM tblguidetouristspot WHERE guide_id = gs.guide_id);

--가이드들 불러오기 list
SELECT g.guide_id, g.name, g.gender, g.age, g.picture, g.regdate, g.isDelete, g.description,
    gs.state, gs.guideschedule_seq, (SELECT SUM(price) FROM tblguidetouristspot WHERE touristspot_seq IN (9) AND guide_id = g.guide_id) AS totalPrice,--특정가이드의 해당관광지들 가격 더함
    (SELECT AVG(grade) FROM tbltripbppscheduleguide tbs
        INNER JOIN tblguidereview gr
            ON tbs.tripbppscheduleguide_seq = gr.tripbppscheduleguide_seq
                INNER JOIN tblguideschedule gs
                    ON tbs.guideschedule_seq = gs.guideschedule_seq
                        WHERE gs.guide_id = g.guide_id) AS totalGrade
FROM tblguideschedule gs
    INNER JOIN tblguide g ON g.guide_id = gs.guide_id
            WHERE gs.issuedate = '2019-08-25' --날짜에맞고
                AND g.isDelete = 1 --삭제되지않은
                    AND gs.state = 1 --예약되지않은
                        AND g.guide_id IN --조건에맞는 가이드들만
                            (SELECT g.guide_id FROM tblguide g
                                INNER JOIN tblguidetouristspot gt ON g.guide_id = gt.guide_id 
                                    WHERE g.isDelete = 1
                                            AND gt.touristspot_seq IN (9) --해당관광지를 2개
                                                GROUP BY g.guide_id
                                                    HAVING COUNT(*) =1) --모두 담당하는 =2
                                                        ORDER BY g.regdate;
                                                        
        


--COMMIT;
--INSERT INTO tblGuideTouristSpot(guideTouristSpot_seq, guide_id, touristSpot_seq, price)
--    VALUES(10, 'G0002', 1, 30000);
--INSERT INTO tblGuideTouristSpot(guideTouristSpot_seq, guide_id, touristSpot_seq, price)
--    VALUES(11, 'G0002', 2, 45000);
--ROLLBACK;

--특정가이드 불러오기
SELECT g.guide_id, g.name, g.gender, g.age, g.picture, g.regdate, g.isDelete, g.description,
    gs.state, gs.guideschedule_seq, (SELECT SUM(price) FROM tblguidetouristspot WHERE touristspot_seq IN (9) AND guide_id = g.guide_id) AS totalPrice,--특정가이드의 해당관광지들 가격 더함
    (SELECT AVG(grade) FROM tbltripbppscheduleguide tbs
        INNER JOIN tblguidereview gr
            ON tbs.tripbppscheduleguide_seq = gr.tripbppscheduleguide_seq
                INNER JOIN tblguideschedule gs
                    ON tbs.guideschedule_seq = gs.guideschedule_seq
                        WHERE gs.guide_id = g.guide_id) AS totalGrade
FROM tblguideschedule gs
    INNER JOIN tblguide g ON g.guide_id = gs.guide_id
            WHERE gs.issuedate = '2019-08-25' --날짜에맞고
                AND g.isDelete = 1 --삭제되지않은
                    AND gs.state = 1 --예약되지않은
                        AND g.guide_id IN --조건에맞는 가이드들만
                            (SELECT g.guide_id FROM tblguide g
                                INNER JOIN tblguidetouristspot gt ON g.guide_id = gt.guide_id 
                                    WHERE g.isDelete = 1 AND g.guide_id = 'G0004' --이 조건문만 추가!!
                                            AND gt.touristspot_seq IN (9) --해당관광지를 2개
                                                GROUP BY g.guide_id
                                                    HAVING COUNT(*) =1) --모두 담당하는 =2
                                                        ORDER BY g.regdate;
                                        
                                  
--여행내역 넣기 + 번호찾기
--INSERT INTO tbltripbpp(tripBPP_seq, startTicket_seq, arriveTicket_seq, member_id, isPaid, isDelete, paymentdate)
--    VALUES(NVL((SELECT MAX(tripBPP_seq) FROM tbltripbpp)+1,1),?,?,?,1,1, DEFAULT);

--SELECT MAX(tripBPP_seq) AS tripBPP_seq FROM tbltripbpp 
--  WHERE startTicket_seq = ? AND arriveTicket_seq = ? AND member_id = ? AND isPaid = 1;





--여행내역 일차별 넣기 + 번호찾기
--INSERT INTO tbltripbppschedule(tripBPPSchedule_seq, tripBPP_seq, tourdate, day)
--    VALUES(NVL((SELECT MAX(tripBPPSchedule_seq) FROM tbltripbppschedule)+1,1), ?, ?, ?);
--
--SELECT MAX(tripbppschedule_seq) FROM tbltripbppschedule WHERE tripbpp_seq = ?;


--여행내역 일차별 관광지 넣기(1일차에 관광지가 3개면 1개 1개 1개 이런식으로 세번넣어야됨 시발~~)
--INSERT INTO tbltripbppscheduletouristspot(tripBPPScheduleTouristSpot_seq, tripBPPSchedule_seq, touristSpot_seq)
--    VALUES(NVL((SELECT MAX(tripBPPScheduleTouristSpot_seq) FROM tbltripbppscheduletouristspot)+1,1),?,?);
    
--여행내역 일차별 숙소 넣기
--INSERT INTO tbltripbppscheduleroom(tripBPPScheduleRoom_seq, tripBPPSchedule_seq, hotelSchedule_seq)
--    VALUES(NVL((SELECT MAX(tripBPPScheduleRoom_seq) FROM tbltripbppscheduleroom)+1,1), ?, ?);
    
--여행내역 일차별 가이드 넣기
--INSERT INTO tbltripbppscheduleguide(tripBPPScheduleGuide_seq, tripBPPSchedule_seq, guideSchedule_seq, price)
--    VALUES(NVL((SELECT MAX(tripBPPScheduleGuide_seq) FROM tbltripbppscheduleguide)+1,1), ?, ?, ?);
ROLLBACK;    

SELECT * FROM tbltripbpp; --2 > 3 > 4 > 5
SELECT * FROM tbltripbppschedule; --6 > 10 > 14 > 18
SELECT * FROM tbltripbppscheduletouristspot; --18 > 26 > 35 > 44
SELECT * FROM tbltripbppscheduleroom; --0 > 3 > 6 > 9
SELECT * FROM tbltripbppscheduleguide; -- 6 > 8 > 10 > 12
--SELECT * FROM tblmember;



---=========================================대망의 총결제 내역들==========================

--기본이될 쿼리
--SELECT *
--FROM tbltripbpp tb
--    WHERE member_id = 'skyAhn' AND ispaid = 1 AND isdelete = 1 ORDER BY paymentdate DESC;
--나라이름 컬럼담당
--SELECT * FROM tblcountry 
--    WHERE country_seq = (SELECT country_seq FROM tblairport 
--        WHERE airport_seq = (SELECT arriveairport_seq FROM tblflight 
--            WHERE flight_seq = (SELECT flight_seq FROM tblticket WHERE ticket_seq = 1)));
--여행 출발일, 도착일 담당
--SELECT issuedate FROM tblticket 
--    WHERE ticket_seq = 1;
--티켓 가격부터
--SELECT price FROM tblflight 
--    WHERE flight_seq = (SELECT flight_seq FROM tblticket WHERE ticket_seq = 1);
--seq는 tb.startTicketseq, tb.arriveTicketseq를 넣으면됨

--방 총가격
--SELECT SUM(price) FROM tblroom
--    WHERE room_seq IN(SELECT room_seq FROM tblhotelschedule 
--    WHERE hotelschedule_seq IN (SELECT hotelschedule_seq FROM tbltripbppscheduleroom 
--        WHERE tripbppschedule_seq IN ((SELECT tripbppschedule_seq FROM tbltripbppschedule WHERE tripbpp_seq = 1))));
--가이드 총가격

--SELECT SUM(price) FROM tbltripbppscheduleguide WHERE tripbppschedule_seq IN ((SELECT tripbppschedule_seq FROM tbltripbppschedule WHERE tripbpp_seq = 1));
       

SELECT 
    tb.tripbpp_seq,
    (SELECT name FROM tblcountry 
    WHERE country_seq = (SELECT country_seq FROM tblairport 
        WHERE airport_seq = (SELECT arriveairport_seq FROM tblflight 
            WHERE flight_seq = (SELECT flight_seq FROM tblticket WHERE ticket_seq = tb.startticket_seq)))) AS countryName,
    (SELECT issuedate FROM tblticket 
        WHERE ticket_seq = tb.startticket_seq) AS startdate,
    (SELECT issuedate FROM tblticket 
        WHERE ticket_seq = tb.arriveticket_seq) AS arrivedate,
    tb.paymentdate,
    (SELECT price FROM tblflight 
        WHERE flight_seq = (SELECT flight_seq FROM tblticket WHERE ticket_seq = tb.startticket_seq)) AS sTicketPrice,
    (SELECT price FROM tblflight 
        WHERE flight_seq = (SELECT flight_seq FROM tblticket WHERE ticket_seq = tb.arriveticket_seq)) AS aTicketPrice,
    (SELECT SUM(price) FROM tblroom
        WHERE room_seq IN(SELECT room_seq FROM tblhotelschedule 
        WHERE hotelschedule_seq IN (SELECT hotelschedule_seq FROM tbltripbppscheduleroom 
            WHERE tripbppschedule_seq IN ((SELECT tripbppschedule_seq FROM tbltripbppschedule WHERE tripbpp_seq = tb.tripbpp_seq))))) AS roomPrice,
    (SELECT SUM(price) FROM tbltripbppscheduleguide 
        WHERE tripbppschedule_seq IN ((SELECT tripbppschedule_seq FROM tbltripbppschedule WHERE tripbpp_seq = tb.tripbpp_seq))) AS guidePrice
    
FROM tbltripbpp tb
    WHERE member_id = 'ybh123' AND ispaid = 1 AND isdelete = 1 ORDER BY paymentdate DESC;



SELECT * FROM tbltripbppscheduleguide;

SELECT * FROM tblroom
    WHERE room_seq = (SELECT room_seq FROM tblhotelschedule WHERE hotelschedule_seq = 111);
    
SELECT * FROM tblmember;


--리뷰와 가이드 내역뽑아와보리기
SELECT gr.guidereview_seq, gr.tripbppscheduleguide_seq, gr.title, gr.content, gr.grade, gr.regdate,

    (SELECT member_id FROM tbltripbpp 
        WHERE tripbpp_seq = (SELECT tripbpp_seq FROM tbltripbppschedule 
            WHERE tripbppschedule_seq = (SELECT tripbppschedule_seq FROM tbltripbppscheduleguide WHERE tripbppscheduleguide_seq = gr.tripbppscheduleguide_seq))) AS member_id
FROM tblguidereview gr
    WHERE tripbppscheduleguide_seq IN(SELECT tripbppscheduleguide_seq FROM tbltripbppscheduleguide
        WHERE guideschedule_seq IN (SELECT guideschedule_seq FROM tblguideschedule WHERE guide_id = 'G0003'));

SELECT guide_id, name, gender, age, picture, description, regdate, isdelete 
FROM tblguide WHERE guide_id = 'G0001';

ROLLBACK;
--DELETE FROM tblguidereview WHERE guidereview_seq = 1;

