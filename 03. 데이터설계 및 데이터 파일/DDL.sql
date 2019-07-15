-- 프로젝트 sql
--CREATE USER test34 IDENTIFIED BY java1234;
--GRANT connect, resource TO test34;
--NVL((SELECT MAX(seq) FROM tblAddress)+1,1)

-- 국가 ex) 미국-LA, 미국-워싱턴, 태국, ...
CREATE TABLE tblCountry(
    country_seq NUMBER PRIMARY KEY, 
    name VARCHAR2(60) NOT NULL , --국가이름
    picture VARCHAR2(60) DEFAULT 'noCountry.png' NOT NULL, --국가사진
    description VARCHAR2(3000) NULL, --국가설명
    isDelete NUMBER(1) NOT NULL CHECK(isDelete IN (0,1)) -- 삭제상태 0=삭제 1=정상
);
--DROP TABLE tblCountry;

-- 관광지 ex)에펠탑, 개선문, 해운대, ...
CREATE TABLE tblTouristSpot(
    touristSpot_seq NUMBER PRIMARY KEY,
    country_seq NUMBER REFERENCES tblCountry(country_seq) NOT NULL, --국가 FK
    name VARCHAR2(60) NOT NULL, --관광지 이름
    picture VARCHAR2(60) DEFAULT 'noTouristSpot.png' NOT NULL, --관광지 사진
    description VARCHAR2(3000) NULL, -- 관광지 설명
    lat NUMBER NOT NULL, -- 관광지 위도
    lng NUMBER NOT NULL, -- 관광지 경도
    isDelete NUMBER(1) NOT NULL CHECK(isDelete in (0,1)) --삭제상태
);

-- 테마 ex)허니문, 맛집, 낚시, 등산, ...
CREATE TABLE tblTheme(
    theme_seq NUMBER PRIMARY KEY,
    name VARCHAR2(60) NOT NULL, --테마이름
    icon VARCHAR2(60) DEFAULT 'noTheme.png' NOT NULL, --테마 아이콘사진
    isDelete NUMBER(1) NOT NULL CHECK(isDelete in (0,1)) --삭제상태
);

-- 관광지가 담당하는 테마 ex)에펠탑-허니문, 에펠탑-맛집, 에펠탑-낚시, ...
CREATE TABLE tblTouristSpotTheme(
    touristSpotTheme_seq NUMBER PRIMARY KEY,
    touristSpot_seq NUMBER REFERENCES tblTouristSpot(touristSpot_seq) NOT NULL, --관광지 FK
    theme_seq NUMBER REFERENCES tblTheme(theme_seq) NOT NULL -- 테마 FK
);
--DROP TABLE tblTouristSpotTheme;


--==========================================================




-- 공항 ex)인천공항, 제주공항, ...
CREATE TABLE tblAirport(
    airport_seq NUMBER PRIMARY KEY,
    country_seq NUMBER REFERENCES tblCountry(country_seq) NOT NULL,--국가 FK
    name VARCHAR2(60) NOT NULL , -- 공항이름
    lat NUMBER NOT NULL, -- 공항 위도
    lng NUMBER NOT NULL, -- 공항 경도
    isDelete NUMBER(1) NOT NULL CHECK(isDelete in (0,1)) --삭제상태
);

-- 좌석등급(모든 공항, 항공사 공통) ex) 일반, 비즈니스, 이코노미, ...
CREATE TABLE tblFlightClass(
    flightClass_seq NUMBER PRIMARY KEY,
    name VARCHAR2(30) NOT NULL, --좌석이름
    isDelete NUMBER(1) NOT NULL CHECK(isDelete in (0,1))
);
--DROP TABLE tblFlightClass;

-- 항공편 시간대(모든 공항 공통) ex) 12:40/13:40, 14:40/15:30, ...
CREATE TABLE tblFlightTime(
    flightTime_seq NUMBER PRIMARY KEY, 
    startTime VARCHAR2(5) NOT NULL, --출발시간 (출력용)
    arriveTime VARCHAR2(5) NOT NULL, --도착시간 (출력용)
    isDelete NUMBER(1) NOT NULL CHECK(isDelete in (0,1))
);

-- 항공사 ex)진에어, 하나항공, ...
CREATE TABLE tblAirline(
    airline_seq NUMBER PRIMARY KEY,
    name VARCHAR2(60) NOT NULL, --항공사 이름
    picture VARCHAR2(60) DEFAULT 'noAirline.png' NOT NULL, -- 항공사 사진? 아이콘? 
    isDelete NUMBER(1) NOT NULL CHECK(isDelete in (0,1))
);


-- 항공편 ex) 버스좌석이아니라 버스하나 느낌? 그냥 항공편임 각 항공마다 고정값
CREATE TABLE tblFlight(
    flight_seq NUMBER PRIMARY KEY,
    startAirport_seq NUMBER REFERENCES tblAirport(airport_seq) NOT NULL, --출발공항 FK
    arriveAirport_seq NUMBER REFERENCES tblAirport(airport_seq) NOT NULL, --도착공항 FK
    waypointAirport_seq NUMBER REFERENCES tblAirport(airport_seq) NULL, --경유공항 없으면 NULL가능 FK
    flightTime_seq NUMBER REFERENCES tblFlightTime(flightTime_seq) NOT NULL, -- 항공편시간대 FK
    airline_seq NUMBER REFERENCES tblAirline(airline_seq) NOT NULL, -- 항공사 FK
    flightClass_seq NUMBER REFERENCES tblFlightClass(flightClass_seq) NOT NULL, --좌석등급 FK
    price NUMBER NOT NULL, --항공편 가격
    isDelete NUMBER(1) NOT NULL CHECK(isDelete in (0,1))
);

-- 티켓 ex) 인천 공항의 13:00-15:00 비즈니스 항공편의 2019.8.10 티켓 30장 
CREATE TABLE tblTicket(
    ticket_seq NUMBER PRIMARY KEY, 
    issuedate DATE DEFAULT SYSDATE NOT NULL, -- 티켓 날짜 (DEFAULT준 이유는 나중에 혹시 편할꺼같아서)
    quantity NUMBER(3) NOT NULL, --티켓 수 결제하면 -1 씩 차감되고 0이면 품절!
    flight_seq NUMBER REFERENCES tblFlight(flight_seq) NOT NULL-- 항공편FK
);

--=========================================================================

-- 숙박시설(호텔) ex) 신라호텔, 캘리포니아호텔, ...
CREATE TABLE tblHotel(
    hotel_seq NUMBER PRIMARY KEY,
    touristSpot_seq NUMBER REFERENCES tblTouristSpot(touristSpot_seq) NOT NULL, --관광지 FK
    name VARCHAR2(60) NOT NULL, --숙박시설 이름
    picture VARCHAR2(60) DEFAULT 'noHotel.png' NOT NULL, --숙박시설 사진
    description VARCHAR2(3000) NULL, --숙박시설 설명
    lat NUMBER NOT NULL, -- 숙박시설 위도
    lng NUMBER NOT NULL, -- 숙박시설 경도
    isDelete NUMBER(1) NOT NULL CHECK(isDelete in (0,1)) 
);

-- 방등급(모든 숙박시설 공통) ex) 스위트룸, 일반룸, 특별룸, ...
CREATE TABLE tblRoomClass(
    roomClass_seq NUMBER PRIMARY KEY,
    name VARCHAR2(30) NOT NULL
);

-- 특정 숙박시설의 체크인 시간 체크아웃시간 정책
CREATE TABLE tblHotelTime(
    hotelTime_seq NUMBER PRIMARY KEY,
    hotel_seq NUMBER REFERENCES tblHotel(hotel_seq) NOT NULL, --숙박시설FK
    check_in VARCHAR2(5) NOT NULL, --체크인 시간 09:00
    check_out VARCHAR2(5) NOT NULL, --체크아웃 시간 13:00
    isDelete NUMBER(1) NOT NULL CHECK(isDelete in (0,1)) 
);  

-- 특정 숙박시설의 방들 ex) 300,000원, 2~3인실
CREATE TABLE tblRoom(
    room_seq NUMBER PRIMARY KEY,
    hotel_seq NUMBER REFERENCES tblHotel(hotel_seq) NOT NULL, --숙박시설FK
    roomClass_seq NUMBER REFERENCES tblRoomClass(roomClass_seq) NOT NULL, --방등급FK
    price NUMBER NOT NULL, --숙박시설 특정 방 가격
    personCount VARCHAR2(30) NOT NULL, -- 숙박시설 특정 방 적정인원수 2~3인실, 5인실, ..
    isDelete NUMBER(1) NOT NULL CHECK(isDelete in (0,1)) 
);

-- 특정 숙박시설의 특정방의 스케줄
CREATE TABLE tblHotelSchedule(
    hotelSchedule_seq NUMBER PRIMARY KEY,
    room_seq NUMBER REFERENCES tblRoom(room_seq) NOT NULL, -- 특정 숙박시설의 특정방 FK
    issuedate DATE DEFAULT SYSDATE NOT NULL, --스케줄 날짜 (혹시 편할지도모르니까 DEFAULT SYSDATE 해놓음)
    state NUMBER(1) NOT NULL CHECK(state in (0,1)) -- 0이면 예약불가 1이면 예약가능
);

--============================================================================

--가이드
CREATE TABLE tblGuide(
    guide_id VARCHAR2(15) PRIMARY KEY, --가이드아이디
    pw VARCHAR2(20) NOT NULL, --가이드 비밀번호
    name VARCHAR2(60) NOT NULL, --가이드 이름(외국인 생각해서 길게)
    gender NUMBER(1) NOT NULL CHECK(gender in (1,2)), --가이드 성별 1일때 남자, 2일때 여자
    age NUMBER(3) NOT NULL, --가이드 나이
    picture VARCHAR2(60) DEFAULT 'noGuide.png' NOT NULL, --가이드 사진
    description VARCHAR2(3000) NULL, -- 가이드 설명(자기소개? 등등)
    regdate DATE DEFAULT SYSDATE NOT NULL, -- 가이드 등록날짜
    isDelete NUMBER(1) NOT NULL CHECK(isDelete in (0,1))
);

--가이드의 담당 관광지들
CREATE TABLE tblGuideTouristSpot(
    guideTouristSpot_seq NUMBER PRIMARY KEY,
    guide_id VARCHAR2(15) REFERENCES tblGuide(guide_id) NOT NULL, --가이드 FK
    touristSpot_seq NUMBER REFERENCES tblTouristSpot(touristSpot_seq) NOT NULL, --관광지 FK
    price NUMBER NOT NULL -- 가이드의 담당여행지 가이딩 책정 가격
);

--가이드의 스케줄
CREATE TABLE tblGuideSchedule(
   guideSchedule_seq NUMBER PRIMARY KEY,
   guide_id VARCHAR2(15) REFERENCES tblGuide(guide_id) NOT NULL, --가이드 FK
   issuedate DATE DEFAULT SYSDATE NOT NULL, -- 그 날짜 (DEFAULT SYSDATE는 편리할수도 있을거같아서 넣음)
   state NUMBER(1) NOT NULL CHECK(state IN (0,1)) -- 0이면 예약불가 1이면 예약가능
);

--===========================================================

--관리자
CREATE TABLE tblAdmin(
    admin_id VARCHAR2(15) PRIMARY KEY,
    pw VARCHAR2(20) NOT NULL
);


--회원 아이디
CREATE TABLE tblMember(
    member_id VARCHAR2(15) PRIMARY KEY, --회원아이디
    pw VARCHAR2(20) NOT NULL, --회원 비밀번호
    name VARCHAR2(15) NOT NULL, --회원이름(5글자까지)
    gender NUMBER(1) NOT NULL CHECK(gender in (1,2)), --성별 1일때 남자, 2일때 여자
    picture VARCHAR2(60) DEFAULT 'noMember.png' NOT NULL, --회원 프로필 사진
    birth VARCHAR2(8) NOT NULL, -- 19960112 생년월일
    tel VARCHAR2(11) NOT NULL, -- 핸드폰번호 01025609335 유니크+낫널 까진 굳이?? 우리는 이게 중요한게아니니까
    regdate DATE DEFAULT SYSDATE NOT NULL, -- 회원 가입날짜
    isDelete NUMBER(1) NOT NULL CHECK(isDelete IN (0,1))
);

--회원의 찜 관광지 목록들
CREATE TABLE tblMemberWishTouristSpot(
    memberWishTouristSpot_seq NUMBER PRIMARY KEY,
    member_id VARCHAR2(15) REFERENCES tblMember(member_id) NOT NULL, --회원 FK
    touristSpot_seq NUMBER REFERENCES tblTouristSpot(touristSpot_seq) NOT NULL --관광지 FK
);



-- 회원의 여행장바구니이자 여행결제내역 (관리자가 보기도 함)
CREATE TABLE tblTripBPP(
    tripBPP_seq NUMBER PRIMARY KEY,
    startTicket_seq NUMBER REFERENCES tblTicket(ticket_seq) NOT NULL, -- 출발티켓FK
    arriveTicket_seq NUMBER REFERENCES tblTicket(ticket_seq) NOT NULL, -- 도착티켓FK
    member_id VARCHAR2(15) REFERENCES tblMember(member_id) NOT NULL, --회원 FK
    isPaid NUMBER(1) NOT NULL CHECK(isPaid IN (0,1)), -- 비결제: 0, 결제: 1
    --ㄴ 결제하면은 거래내역이되고 결제안하면은 장바구니의 위시리스트 용도가 됩니다.
    isDelete NUMBER(1) NOT NULL CHECK(isDelete IN (0,1))
);

-- 회원의 BPP 일차별
CREATE TABLE tblTripBPPSchedule(
    tripBPPSchedule_seq NUMBER PRIMARY KEY,
    tripBPP_seq NUMBER REFERENCES tblTripBPP(tripBPP_seq) NOT NULL, --BPP의 FK
    tourdate DATE NOT NULL, -- 일차의 날짜 (필요없을지도모름)
    --ㄴ 출발2019.08.10 ~ 도착2019.08.12이면 여기값들은 2019.08.10, 2019.08.11, 2019.08.12만 들어가야됨
    day NUMBER(3) NOT NULL -- 몇일차인지 1일차면 1 2일차면 2 
);

--회원의 BPP일차별 계획의 관광지들
CREATE TABLE tblTripBPPScheduleTouristSpot(
    tripBPPScheduleTouristSpot_seq NUMBER PRIMARY KEY,
    tripBPPSchedule_seq NUMBER REFERENCES tblTripBPPSchedule(tripBPPSchedule_seq) NOT NULL, --BPP스케줄의 FK
    touristSpot_seq NUMBER REFERENCES tblTouristSpot(touristSpot_seq) NOT NULL --관광지의 FK
);

--회원의 BPP일차별 계획의 숙소들
CREATE TABLE tblTripBPPScheduleRoom(
    tripBPPScheduleRoom_seq NUMBER PRIMARY KEY,
    tripBPPSchedule_seq NUMBER REFERENCES tblTripBPPSchedule(tripBPPSchedule_seq) NOT NULL, --BPP스케줄의 FK
    hotelSchedule_seq NUMBER REFERENCES tblHotelSchedule(hotelSchedule_seq) NOT NULL --숙박시설 방일정 FK  
);

--회원의 BPP일차별 계획의 가이드들
CREATE TABLE tblTripBPPScheduleGuide(
    tripBPPScheduleGuide_seq NUMBER PRIMARY KEY,
    tripBPPSchedule_seq NUMBER REFERENCES tblTripBPPSchedule(tripBPPSchedule_seq) NOT NULL, --BPP스케줄의 FK
    guideSchedule_seq NUMBER REFERENCES tblGuideSchedule(guideSchedule_seq) NOT NULL --가이드 일정의 FK 
);

--=============================================

--여행후기글 테이블
CREATE TABLE tblTouristReview(
    touristReview_seq NUMBER PRIMARY KEY, 
    tripBPP_seq NUMBER REFERENCES tblTripBPP(tripBPP_seq) NOT NULL, -- BPP(여행내역) FK: BPP 상태가 1(결제)일때만 쓸수있다
    title VARCHAR2(300) NOT NULL, --제목
    content VARCHAR2(4000) NULL -- 내용
    
);

--숙박시설 후기+평점 글 테이블
CREATE TABLE tblHotelReview(
    hotelReview_seq NUMBER PRIMARY KEY,
    hotel_seq NUMBER REFERENCES tblHotel(hotel_seq) NOT NULL, --숙박시설 FK
    tripBPPScheduleRoom_seq NUMBER REFERENCES tblTripBPPScheduleRoom(tripBPPScheduleRoom_seq) NOT NULL, --BPP 스케줄 방예약 FK
    title VARCHAR2(300) NOT NULL, -- 제목
    content VARCHAR2(4000) NULL, -- 내용
    grade NUMBER(1) NOT NULL CHECK(grade BETWEEN 1 AND 5) --별점 1~5점 까지
    
);



CREATE TABLE tblGuideReview(
    guideReview_seq NUMBER PRIMARY KEY,
    guide_id VARCHAR2(15) REFERENCES tblGuide(guide_id) NOT NULL, --가이드 FK
    tripBPPScheduleGuide_seq NUMBER REFERENCES tblTripBPPScheduleGuide(tripBPPScheduleGuide_seq) NOT NULL, --BPP스케줄 가이드예약 FK
    title VARCHAR2(300) NOT NULL, -- 제목
    content VARCHAR2(4000) NULL, -- 내용
    grade NUMBER(1) NOT NULL CHECK(grade BETWEEN 1 AND 5) --별점 1~5점 까지
);

