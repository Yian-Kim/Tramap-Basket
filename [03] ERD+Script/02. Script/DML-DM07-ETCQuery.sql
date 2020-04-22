/*
문서명 : DML-DM07-ETCQuery.sql (8/9)
작성자 : 클라&서버 2조
작성일자 : 2019.07.26.
프로젝트명 : Tramap_Basket
프로그램명 : 자유여행사 사이트(Travel+Map+Basket)
프로그램 설명 : JSP와 Database 기반의 프로그램입니다.
URL Link : https://github.com/Chanmi-Kim/Tra-Map-Basket
*/

create table tblfaketicket (
    faketicket_seq number primary key,
    airline_name varchar2(60) not null,
    issuedate DATE DEFAULT SYSDATE NOT NULL,
    start_time varchar2(5) not null,
    arrive_time varchar2(5) not null,
    class_lv varchar2 (15) not null,
    start_airport varchar2 (30) not null,
    arrive_airport varchar2 (30) not null,
    price varchar2(10) not null,
    isdelete NUMBER(1) NOT NULL CHECK(isDelete in (0,1))
);

create sequence faketicket_seq;

create or replace view vwfaketicket as 
select 
    faketicket_seq as 번호,
    airline_name as 항공사,
    to_char (issuedate, 'yy-mm-dd') as 날짜,
    start_time as 출발시간,
    arrive_time as 도착시간,
    class_lv as 좌석등급,
    start_airport as 출발공항,
    arrive_airport as 도착공항,
    price as 가격
    from tblFaketicket;
    
    
    
    
    
CREATE OR REPLACE view vwAirlineTicket as
select 
    A.name as 항공사,
    to_char (t.issuedate, 'yy-mm-dd') as 날짜,
    FT.startTime as 출발시간,
    FT.arriveTime as 도착시간,
    FC.name as 좌석등급,
    (select name from tblAirport where f.startAirport_seq = airport_seq) as 출발공항,
    (select name from tblAirport where f.arriveAirport_seq = airport_seq) as 도착공항,
    F.price as 가격

from tblAirline A
        inner join tblFlight F on a.airline_seq = f.airline_seq
        inner join tblTicket T on f.flight_seq = t.flight_seq
        inner join tblFlightTime FT on ft.flighttime_seq = f.flighttime_seq
        inner join tblFlightClass FC on fc.flightclass_seq = f.flightclass_seq
        inner join tblAirport AP on ap.airport_seq = f.arriveairport_seq
        inner join tblCountry C on c.country_seq = ap.airport_seq
        order by to_char(t.issuedate, 'yy-mm-dd'), ft.starttime asc;    

select * from vwAirlineTicket;


INSERT INTO tblMember (MEMBER_ID, PW,NAME,GENDER,PICTURE,BIRTH,TEL,REGDATE,ISDELETE)      VALUES('song','1234','송은이',2,'r9.jpg','19950412','01012345678','2018-05-12',1);

INSERT INTO tblMember (MEMBER_ID, PW,NAME,GENDER,PICTURE,BIRTH,TEL,REGDATE,ISDELETE)   VALUES('park','1234','박두산',1,'r9.jpg','19950412','01012345678','2018-05-12',1);
    
INSERT INTO tblMember (MEMBER_ID, PW,NAME,GENDER,PICTURE,BIRTH,TEL,REGDATE,ISDELETE)    VALUES('eklsf','1234','곽두팔',1,'r9.jpg','19950412','01012345678','2018-05-12',1);

INSERT INTO tblMember (MEMBER_ID, PW,NAME,GENDER,PICTURE,BIRTH,TEL,REGDATE,ISDELETE)    VALUES('sabae','1234','정은지',2,'r9.jpg','19950412','01012345678','2018-05-12',1);

INSERT INTO tblMember (MEMBER_ID, PW,NAME,GENDER,PICTURE,BIRTH,TEL,REGDATE,ISDELETE)    VALUES('wewev','1234','짜장면',1,'r9.jpg','19950412','01012345678','2018-05-12',1);

INSERT INTO tblMember (MEMBER_ID, PW,NAME,GENDER,PICTURE,BIRTH,TEL,REGDATE,ISDELETE)    VALUES('wev','1234','탕수육',1,'r9.jpg','19950412','01012345678','2018-05-12',1);

INSERT INTO tblMember (MEMBER_ID, PW,NAME,GENDER,PICTURE,BIRTH,TEL,REGDATE,ISDELETE)    VALUES('hsdE','1234','수제비',2,'r9.jpg','19950412','01012345678','2018-05-12',1);

INSERT INTO tblMember (MEMBER_ID, PW,NAME,GENDER,PICTURE,BIRTH,TEL,REGDATE,ISDELETE)    VALUES('HERJ','1234','갈비찜',1,'r9.jpg','19950412','01012345678','2018-05-12',1);

INSERT INTO tblMember (MEMBER_ID, PW,NAME,GENDER,PICTURE,BIRTH,TEL,REGDATE,ISDELETE)    VALUES('YUKY','1234','호랑이',1,'r9.jpg','19950412','01012345678','2018-05-12',1);

INSERT INTO tblMember (MEMBER_ID, PW,NAME,GENDER,PICTURE,BIRTH,TEL,REGDATE,ISDELETE)    VALUES('ARJAE','1234','허쉬',2,'r9.jpg','19950412','01012345678','2018-05-12',1);

INSERT INTO tblMember (MEMBER_ID, PW,NAME,GENDER,PICTURE,BIRTH,TEL,REGDATE,ISDELETE)    VALUES('MRSYJSRT','1234','무지개',2,'r9.jpg','19950412','01012345678','2018-05-12',1);

INSERT INTO tblMember (MEMBER_ID, PW,NAME,GENDER,PICTURE,BIRTH,TEL,REGDATE,ISDELETE)    VALUES('SRYMSR','1234','개나리',1,'r9.jpg','19950412','01012345678','2018-05-12',1);

INSERT INTO tblMember (MEMBER_ID, PW,NAME,GENDER,PICTURE,BIRTH,TEL,REGDATE,ISDELETE)    VALUES('SRYMSRY','1234','오나리',2,'r9.jpg','19950412','01012345678','2018-05-12',1);

