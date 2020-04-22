/*
문서명 : DML-DM06-Member+Schedule+Review.sql (7/9)
작성자 : 클라&서버 2조
작성일자 : 2019.07.26.
프로젝트명 : Tramap_Basket
프로그램명 : 자유여행사 사이트(Travel+Map+Basket)
프로그램 설명 : JSP와 Database 기반의 프로그램입니다.
URL Link : https://github.com/Chanmi-Kim/Tra-Map-Basket
*/

--회원 + 회원여행내역 + 회원리뷰


INSERT INTO tblMember(member_id, pw, name, gender, picture, birth, tel, regdate, isDelete)
    VALUES('skyAhn', 'java1234', '안상현', 1 ,'skyAhn.jpg', '19941018', '01025608875', '2019-07-12', 1);

INSERT INTO tblMember(member_id, pw, name, gender, picture, birth, tel, regdate, isDelete)
    VALUES('daHyun', 'java1234', '이다현', 2 ,'daHyun.jpg', '19941215', '01033258775', '2019-07-12', 1);  

INSERT INTO tblMember(member_id, pw, name, gender, picture, birth, tel, regdate, isDelete)
    VALUES('ybh123', 'java1234', '유병현', 1 ,'ybh123.jpg', '19960112', '01025258375', '2019-07-17', 1);  


--여행내역
INSERT INTO tblTripBPP(tripBPP_seq, startTicket_seq, arriveTicket_seq, member_id, isPaid, isDelete, paymentdate)
    VALUES(1, 13, 14, 'skyAhn', 1, 1, '2019-07-12');
INSERT INTO tblTripBPP(tripBPP_seq, startTicket_seq, arriveTicket_seq, member_id, isPaid, isDelete, paymentdate)
    VALUES(2, 13, 14, 'daHyun', 1, 1, '2019-07-12');  


--여행내역 일차별
INSERT INTO tbltripbppschedule(tripBPPSchedule_seq, tripBPP_seq, tourdate, day)
    VALUES(1, 1, '2019-07-13', 1);
INSERT INTO tbltripbppschedule(tripBPPSchedule_seq, tripBPP_seq, tourdate, day)
    VALUES(2, 1, '2019-07-14', 2);
INSERT INTO tbltripbppschedule(tripBPPSchedule_seq, tripBPP_seq, tourdate, day)
    VALUES(3, 1, '2019-07-15', 3);

INSERT INTO tbltripbppschedule(tripBPPSchedule_seq, tripBPP_seq, tourdate, day)
    VALUES(4, 2, '2019-07-13', 1);
INSERT INTO tbltripbppschedule(tripBPPSchedule_seq, tripBPP_seq, tourdate, day)
    VALUES(5, 2, '2019-07-14', 2);
INSERT INTO tbltripbppschedule(tripBPPSchedule_seq, tripBPP_seq, tourdate, day)
    VALUES(6, 2, '2019-07-15', 3);


--여행내역 일차별 관광지
INSERT INTO tbltripbppscheduletouristspot(tripBPPScheduleTouristSpot_seq, tripBPPSchedule_seq, touristSpot_seq)
    VALUES(1, 1, 1);
INSERT INTO tbltripbppscheduletouristspot(tripBPPScheduleTouristSpot_seq, tripBPPSchedule_seq, touristSpot_seq)
    VALUES(2, 1, 2);
INSERT INTO tbltripbppscheduletouristspot(tripBPPScheduleTouristSpot_seq, tripBPPSchedule_seq, touristSpot_seq)
    VALUES(3, 1, 3);
    
INSERT INTO tbltripbppscheduletouristspot(tripBPPScheduleTouristSpot_seq, tripBPPSchedule_seq, touristSpot_seq)
    VALUES(4, 2, 4);
INSERT INTO tbltripbppscheduletouristspot(tripBPPScheduleTouristSpot_seq, tripBPPSchedule_seq, touristSpot_seq)
    VALUES(5, 2, 5);
INSERT INTO tbltripbppscheduletouristspot(tripBPPScheduleTouristSpot_seq, tripBPPSchedule_seq, touristSpot_seq)
    VALUES(6, 2, 6);

INSERT INTO tbltripbppscheduletouristspot(tripBPPScheduleTouristSpot_seq, tripBPPSchedule_seq, touristSpot_seq)
    VALUES(7, 3, 7);
INSERT INTO tbltripbppscheduletouristspot(tripBPPScheduleTouristSpot_seq, tripBPPSchedule_seq, touristSpot_seq)
    VALUES(8, 3, 8);
INSERT INTO tbltripbppscheduletouristspot(tripBPPScheduleTouristSpot_seq, tripBPPSchedule_seq, touristSpot_seq)
    VALUES(9, 3, 9);
    

INSERT INTO tbltripbppscheduletouristspot(tripBPPScheduleTouristSpot_seq, tripBPPSchedule_seq, touristSpot_seq)
    VALUES(10, 4, 9);
INSERT INTO tbltripbppscheduletouristspot(tripBPPScheduleTouristSpot_seq, tripBPPSchedule_seq, touristSpot_seq)
    VALUES(11, 4, 8);
INSERT INTO tbltripbppscheduletouristspot(tripBPPScheduleTouristSpot_seq, tripBPPSchedule_seq, touristSpot_seq)
    VALUES(12, 4, 7);
    
INSERT INTO tbltripbppscheduletouristspot(tripBPPScheduleTouristSpot_seq, tripBPPSchedule_seq, touristSpot_seq)
    VALUES(13, 5, 3);
INSERT INTO tbltripbppscheduletouristspot(tripBPPScheduleTouristSpot_seq, tripBPPSchedule_seq, touristSpot_seq)
    VALUES(14, 5, 2);
INSERT INTO tbltripbppscheduletouristspot(tripBPPScheduleTouristSpot_seq, tripBPPSchedule_seq, touristSpot_seq)
    VALUES(15, 5, 1);

INSERT INTO tbltripbppscheduletouristspot(tripBPPScheduleTouristSpot_seq, tripBPPSchedule_seq, touristSpot_seq)
    VALUES(16, 6, 6);
INSERT INTO tbltripbppscheduletouristspot(tripBPPScheduleTouristSpot_seq, tripBPPSchedule_seq, touristSpot_seq)
    VALUES(17, 6, 5);
INSERT INTO tbltripbppscheduletouristspot(tripBPPScheduleTouristSpot_seq, tripBPPSchedule_seq, touristSpot_seq)
    VALUES(18, 6, 4);
    


--여행 일차별 가이드
INSERT INTO tblTripBPPScheduleGuide(tripBPPScheduleGuide_seq, tripBPPSchedule_seq, guideSchedule_seq, price)
    VALUES(1, 1, 17, 138000);
INSERT INTO tblTripBPPScheduleGuide(tripBPPScheduleGuide_seq, tripBPPSchedule_seq, guideSchedule_seq, price)
    VALUES(2, 2, 21, 152000);
INSERT INTO tblTripBPPScheduleGuide(tripBPPScheduleGuide_seq, tripBPPSchedule_seq, guideSchedule_seq, price)
    VALUES(3, 3, 25, 143000);
    
INSERT INTO tblTripBPPScheduleGuide(tripBPPScheduleGuide_seq, tripBPPSchedule_seq, guideSchedule_seq, price)
    VALUES(4, 4, 23, 138000);
INSERT INTO tblTripBPPScheduleGuide(tripBPPScheduleGuide_seq, tripBPPSchedule_seq, guideSchedule_seq, price)
    VALUES(5, 5, 18, 152000);
INSERT INTO tblTripBPPScheduleGuide(tripBPPScheduleGuide_seq, tripBPPSchedule_seq, guideSchedule_seq, price)
    VALUES(6, 6, 22, 143000);


--가이드 리뷰
--가이드 후기+평점
INSERT INTO tblGuideReview(guideReview_seq, tripBPPScheduleGuide_seq, title, content, grade, regdate)
    VALUES(1, 1, '친절한 현지인 가이드', '한국말을 저보다 잘하는거 같아서 놀랐어요', 4, '2019-07-16');
INSERT INTO tblGuideReview(guideReview_seq, tripBPPScheduleGuide_seq, title, content, grade, regdate)
    VALUES(2, 2, '완벽한 가이드', '모르는걸 말하지않아도 먼저 알려줘서 좋았어요', 5, '2019-07-16');
INSERT INTO tblGuideReview(guideReview_seq, tripBPPScheduleGuide_seq, title, content, grade, regdate)
    VALUES(3, 3, '현지에서 만난 한국인 가이드', '외지에서 만나서 그런지 한국인 가이드라 엄청 반가웠어요', 4, '2019-07-16');
    
INSERT INTO tblGuideReview(guideReview_seq, tripBPPScheduleGuide_seq, title, content, grade, regdate)
    VALUES(4, 4, '나쁘지 않았어요', '없는 것보단 가이드가 있는게 확실히 편해요', 3, '2019-07-16');
INSERT INTO tblGuideReview(guideReview_seq, tripBPPScheduleGuide_seq, title, content, grade, regdate)
    VALUES(5, 5, '좋기도 나쁘기도', '있으면 편하긴한데 계속 같이 이동해야하니까 혼자 여행하는 기분이 안났어요', 3, '2019-07-16');
INSERT INTO tblGuideReview(guideReview_seq, tripBPPScheduleGuide_seq, title, content, grade, regdate)
    VALUES(6, 6, '주도하는 기분이 안들어요', '내가 주도해서 이동하는게 아니고 따라다니는 느낌', 3, '2019-07-16');

COMMIT;
