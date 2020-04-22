/*
문서명 : DML-DM03-Hotel+Room.sql (4/9)
작성자 : 클라&서버 2조
작성일자 : 2019.07.26.
프로젝트명 : Tramap_Basket
프로그램명 : 자유여행사 사이트(Travel+Map+Basket)
프로그램 설명 : JSP와 Database 기반의 프로그램입니다.
URL Link : https://github.com/Chanmi-Kim/Tra-Map-Basket
*/

-- 방 등급
INSERT INTO tblRoomClass(roomClass_seq, name)
   VALUES
      (
      1, --방등급 번호
      '디럭스 룸' --등급 이름
);

INSERT INTO tblRoomClass(roomClass_seq, name)
   VALUES
      (
      2, --방등급 번호
      '프리미엄 룸' --등급 이름
);

INSERT INTO tblRoomClass(roomClass_seq, name)
   VALUES
      (
      3, --방등급 번호
      '스위트 룸' --등급 이름
);




--숙박시설
INSERT INTO tblHotel(hotel_seq, touristSpot_seq, name, picture, description, lat, lng, isDelete)
   VALUES
      (
      11, --호텔 번호
      1, --관광지 번호
      '카사 니트라', --숙박시설이름
      '카오산_카사니트라.jpg', --사진
      '방콕 카오사로드 부근에 위치해 카오산 로드까지 도보로 5분이내에 갈 수 있다. 모던한 분위기에 깔끔하며 편안한 호텔이다.', --설명
      13.765917, --위도
      100.500744, --경도
      1
      
);

INSERT INTO tblHotel(hotel_seq, touristSpot_seq, name, picture, description, lat, lng, isDelete)
   VALUES
      (
      12, --호텔 번호
      1, --관광지 번호
      '나발라이 리버 리조트', --숙박시설이름
      '카오산_나발라이리버리조트.jpg', --사진
      '카오산로드 도보 10분에 위치하며, 루프탑 테라스가 유명한 호텔이다. 푸짐한 조식을 즐길 수 있으며, 좋은 바와 카페가 다양하게 있다.', --설명
      13.763201, --위도
      100.494321,  --경도
      1
);
INSERT INTO tblHotel(hotel_seq, touristSpot_seq, name, picture, description, lat, lng, isDelete)
   VALUES
      (
      21, --호텔 번호
      2, --관광지 번호
      '아룬 레지던스', --숙박시설이름
      '이글네스트_아룬레지던스.jpg', --사진
      '새벽사원이라 불리는 왓 아룬 사원을 짜오프라야강 맞은편에 두고 위치한 아룬 레지던스는 훌륭한 야경을 자랑하는 곳이다.시간마다 다른 모습의 사원을 편한 잠자리와 함께 볼 수 있다.', --설명
      13.744748, --위도
      100.491363, --경도
      1
);
INSERT INTO tblHotel(hotel_seq, touristSpot_seq, name, picture, description, lat, lng, isDelete)
   VALUES
      (
      22, --호텔 번호
      2, --관광지 번호
      '아우룸 더 리버 플레이스', --숙박시설이름
      '이글네스트_아우룸더리버플레이스.jpg', --사진
      '모든 객실이 모던한 인테리어로 연출되어 있으며 전망이 아주 뛰어나고 위치가 좋은 호텔이다.', --설명
      13.743768, --위도
      100.492224, --경도
      1
);
INSERT INTO tblHotel(hotel_seq, touristSpot_seq, name, picture, description, lat, lng, isDelete)
   VALUES
      (
      81, --호텔 번호
      8, --관광지 번호
      '반얀트리 방콕', --숙박시설이름
      '버티고_반얀트리방콕.jpg', --사진
      '모던하고 고급스러운 객실에서 대형 창문을 통해 활기찬 도시 전망을 감상 할 수 있다. apsara라는 디너 크루즈 레스토랑도 있어 배를 타고 선상에서 식사를 할 수 있다.', --설명
      13.723717, --위도
      100.539730, --경도
      1
);

INSERT INTO tblHotel(hotel_seq, touristSpot_seq, name, picture, description, lat, lng, isDelete)
   VALUES
      (
      82, --호텔 번호
      8, --관광지 번호
      '더 수코타이 방콕', --숙박시설이름
      '버티고_더수코타이방콕.jpg', --사진
      '럭셔리한 분위기의 5성급 호텔에서는 다양한 최고급 시설을 제공하고 있다. 저녁에 여유롭게 술 한잔과 휴식을 취할 수 있는 아늑한 라운지 바가 있다.', --설명
      13.723056, --위도
      100.540836, --경도
      1
);
INSERT INTO tblHotel(hotel_seq, touristSpot_seq, name, picture, description, lat, lng, isDelete)
   VALUES
      (
      91, --호텔 번호
      9, --관광지 번호
      '호텔 원스 방콕', --숙박시설이름
      '욧시암_호텔원스.jpg', --사진
      '호텔 내 멋진 바와 레스토랑에서 맛있는 음식과 휴식을 취할 수 있으며 객실이 넓고 깨끗하며 안락한 욕실도 있다. ', --설명
      13.707215, --위도
      100.507040, --경도
      1
);
INSERT INTO tblHotel(hotel_seq, touristSpot_seq, name, picture, description, lat, lng, isDelete)
   VALUES
      (
      92, --호텔 번호
      9, --관광지 번호
      '더 썬레노 서비스드 아파트먼트', --숙박시설이름
      '욧시암_더썬레노아파트먼트.jpg', --사진
      '쇼핑하기 편리한 위치에 있다. 전망이 뛰어나고 객실도 깔끔한 현대적인 아파트이다.', --설명
      13.704333, --위도
      100.505140, --경도
      1
);
INSERT INTO tblHotel(hotel_seq, touristSpot_seq, name, picture, description, lat, lng, isDelete)
   VALUES
      (
      71, --호텔 번호
      7, --관광지 번호
      '밋 비치 호텔', --숙박시설이름
      '피파_밋비치호텔.jpg', --사진
      '5성급 호텔 파타야 의 고급스러운 호텔이다. 직원들이 친절하고 음식이 맛있는  호텔', --설명
      12.945275, --위도
      100.886688, --경도
      1
);
INSERT INTO tblHotel(hotel_seq, touristSpot_seq, name, picture, description, lat, lng, isDelete)
   VALUES
      (
      72, --호텔 번호
      7, --관광지 번호
      '시암 디자인 호텔', --숙박시설이름
      '피파_시암디자인호텔.jpg', --사진
      '모든 객실에는 분위기 있는 인테리어를 연출했으며 에어컨 시설 및 냉장고, 전용 발코니, 미니 바 등이 갖춰져 있습니다. 욕실에는 샤워 시설, 헤어드라이어, 목욕 가운 등이 완비되어 있습니다.', --설명
      12.945782, --위도
      100.888506, --경도
      1
);



INSERT INTO tblHotel(hotel_seq, touristSpot_seq, name, picture, description, lat, lng, isDelete)
   VALUES
      (
      41, --호텔 번호
      4, --관광지 번호
      '시암 베이쇼어 리조트', --숙박시설이름
      '산호섬_시암베이쇼어리조트.jpeg', --사진
      '파타야 부두 근처에 위치해 있다. 가족 여행객들이 이용할 수 있는 객실도 준비되어있고 훌륭한 수영장이 있다.', --설명
      12.924587, --위도
      100.869033, --경도
      1
);



INSERT INTO tblHotel(hotel_seq, touristSpot_seq, name, picture, description, lat, lng, isDelete)
   VALUES
      (
      42, --호텔 번호
      4, --관광지 번호
      '더몬트라파타야', --숙박시설이름
      '산호섬_더몬트라파타야.jpg', --사진
      '파타야에 자리한 이 리조트에서는 럭셔리한 5성급 객실 및 시설은 물론, 전용 비치, 인피니티 풀까지 이용하실 수 있습니다.', --설명
      12.917610, --위도
      100.857245, --경도
      1
);
INSERT INTO tblHotel(hotel_seq, touristSpot_seq, name, picture, description, lat, lng, isDelete)
   VALUES
      (
      61, --호텔 번호
      6, --관광지 번호
      '르네상스파타야리조트', --숙박시설이름
      '람파라핀_르네상스파타야리조트.jpg', --사진
      '이 호텔에서는 컨시어지 서비스, 아이돌봄 서비스 등과 같은 다양한 최고급 서비스를 이용하실 수 있습니다. 친절한 미소로 게스트들을 지원해드릴 직원들이 항시 대기하고 있습니다. ', --설명
      12.808259, --위도
      100.915652, --경도
      1
);
INSERT INTO tblHotel(hotel_seq, touristSpot_seq, name, picture, description, lat, lng, isDelete)
   VALUES
      (
      62, --호텔 번호
      6, --관광지 번호
      '도르샤다 리조트', --숙박시설이름
      '람파라핀_도르샤다리조트.jpg', --사진
      '조용하고 한적한 전용 해변과 내부의 스파 및 웰니스 센터를 이용할 수 있다.스타일리시하고 현대적인 객실이 있다. 수영장도 아주 멋지다.', --설명
      12.832974,  --위도
      100.910777, --경도
      1
);

-----

--워킹스트리트 호텔(1)

    insert into tblHotel (hotel_seq, touristSpot_seq, name, picture, description, lat, lng, isDelete)
        values
            (
            31, --호텔PK
            3, --관광지 번호(파타야)
            '노바 플래티넘 호텔 파타야', --숙소 이름
            '노바 플래티넘 호텔 파타야.jpg', --숙소 사진
            '노바 플래티넘 호텔 파타야 내부에 있는 매장에서 쇼핑하거나 가까운 지역에 있는 여러 상점과 부티크 샵을 방문해 보실수 있습니다. 
                그 밖에도 직원들이 투어 데스크에서 파타야 투어 및 관광 예약을 도와 드립니다. 
                파타야에 자리한 이 리조트에서는 워킹 스트리트까지 가볍게 걸어가실 수 있으며 거품 욕조, 수영장, 사우나도 이용하실 수 있습니다. 
                또한 주변 관광 명소를 둘러보시기에 좋은 위치를 갖추고 있습니다. 
                이 리조트에는 휴식을 취할 수 있는 정원이 조성되어 있으며 무료 구내 전용 주차장도 제공되고 있습니다. 
                편의 시설 및 서비스에는 24시간 룸서비스, 카페 및 페이셜/바디 관리가 포함됩니다. 
                객실에는 에어컨이 완비되어 있으며 평면 TV, 미니 바 등의 최고급 시설이 갖춰져 있습니다. 
                전용 욕실, 객실 내 금고, 생수도 갖춰져 있습니다. 
                내부의 레스토랑에서 간편하게 식사를 드실 수 있습니다. 
                매일 아침마다 색다른 메뉴로 구성되는 조식을 즐길 수 있습니다.', --숙소 설명
            12.922635, --위도
            100.871516, --경도,
            1 --유지상태
            );
            
--워킹스트리트 호텔(2)            
    insert into tblHotel (hotel_seq, touristSpot_seq, name, picture, description, lat, lng, isDelete)
        values 
            (
            32, --호텔PK
            3, --관광지 번호
            '누르사바파타야 호텔', --숙소 이름
            '누르사바파타야.jpg', --숙소 사진
            '각 객실은 수영장의 멋진 전망을 자랑하며, 휴식 공간이 마련된 널찍한 발코니, 
                에어컨 및 천장형 선풍기를 갖추고 있습니다. 모든 객실에는 평면 TV, 
                커피/차 및 책상도 비치되어 있습니다. 실내 욕실에는 고급 욕실용품이 갖추어져 있습니다. 
                일부 객실에는 욕조도 딸려 있습니다.
                로비에서 무료 스낵을 비롯해 온종일 소프트드링크를 즐겨 보시기 바랍니다. 
                셀프서비스 커피 머신도 준비되어 있습니다.
                숙소는 애비뉴 파타야에서 차로 10분, 킹 파워 파타야 면세점에서 차로 15분 거리에 있습니다. 
                센트럴 페스티벌 파타야 비치는 Noursabah Pattaya에서 차로 20분 거리에 있습니다.', --숙소 설명
            12.922500, --위도
            100.87155, --경도
            1 --유지상태
            );
            
--호라이즌 호텔(1)            
    insert into tblHotel (hotel_seq, touristSpot_seq, name, picture, description, lat, lng, isDelete)
        values 
            (
            51, --호텔PK
            5, --관광지 번호
            '그랜드 벨라 호텔', --숙소 이름
            '그랜드 벨라 호텔.jpg', --숙소 사진
            '호텔 주변에는 센트럴 페스티벌 파타야 비치, 하드락 카페 등을 포함한 인기 관광지들이 있습니다. 
                또한 1km 거리에 로열 가든 플라자와 알카자 카바레도 있습니다. 
                파타야에 자리한 이 호텔은 현대적인 3.5성급 숙소입니다. 스파, 피트니스센터, 실외 풀도 마련되어 있습니다. 
                독특한 분위기의 이 호텔에는 카페, 24시간 룸서비스, 회의실 등이 완비되어 있습니다. 
                직원들이 항시 대기하고 있으며 투어 예약 및 티켓 예매를 도와드립니다. 
                이 호텔에는 360개의 현대적인 객실이 있으며 편안한 숙박에 필요한 모든 것 갖춰져 있습니다.', --숙소 설명
            12.935510, --위도 
            100.887052, --경도
            1 --유지상태
            );

--호라이즌 호텔(2)            
    insert into tblHotel (hotel_seq, touristSpot_seq, name, picture, description, lat, lng, isDelete)
        values 
            (
            52, --호텔PK
            5, --관광지 번호
            '선샤인 호텔', --숙소 이름
            '선샤인 호텔.jpg', --숙소 사진
            '이 호텔은 인기 관광지와, 부티크, 식당 등에 둘러싸여 있어서 파타야 주변 지역을 관광하고 싶으신 고객님들께 좋은 숙소입니다. 
                그 밖에 수영장 등이 완비된 피트니스센터도 있습니다. 
                이 호텔에서는 여행객들을 위해 공용 지역 무료 무선 인터넷, 카페, 이그제큐티브 플로어 등을 포함한 다양한 시설과 서비스를 제공하고 있습니다. 
                직원들이 항시 대기하고 있으며 투어 예약 및 티켓 예매를 도와드립니다. 
                이 3성급 호텔은 바와 클럽에서 아주 가까운 거리에 있어 현지 밤 문화를 즐기시기에 좋습니다. 
                모든 객실에는 에어컨이 완비되어 있고 냉장고, 전화 및 미니 바도 갖추고 있습니다. 
                저녁에 이 호텔의 레스토랑 또는 바에서 피로를 풀 수 있습니다. 
                매일 오전 조식이 서빙되며 객실에서 편안하게 드실 수 있습니다.', --숙소 설명
            12.935742, --위도     
            100.884320, --경도
            1 --유지상태
            );



---------------------------------------------
----숙박시설의 방들

--11번
insert into tblRoom (room_seq, roomClass_seq, hotel_seq, price, personcount, isdelete) values (1, 1, 11, 100000, '2인실', 1);
insert into tblRoom (room_seq, roomClass_seq, hotel_seq, price, personcount, isdelete) values (2, 2, 11, 110000, '3~4인실', 1);
insert into tblRoom (room_seq, roomClass_seq, hotel_seq, price, personcount, isdelete) values (3, 3, 11, 130000, '4인실', 1);
insert into tblRoom (room_seq, roomClass_seq, hotel_seq, price, personcount, isdelete) values (4, 1, 11, 80000, '1인실', 1);
insert into tblRoom (room_seq, roomClass_seq, hotel_seq, price, personcount, isdelete) values (5, 1, 11, 90000, '2인실', 1);

--21번
insert into tblRoom(room_seq, roomClass_seq, hotel_seq, price, personCount, isDelete) values(6,1,21,50000,'1~2인실',1);
insert into tblRoom(room_seq, roomClass_seq, hotel_seq, price, personCount, isDelete) values(7,1,21,50000,'1~2인실',1);
insert into tblRoom(room_seq, roomClass_seq, hotel_seq, price, personCount, isDelete) values(8,2,21,80000,'2~4인실',1);
insert into tblRoom(room_seq, roomClass_seq, hotel_seq, price, personCount, isDelete) values(9,2,21,80000,'2~4인실',1);
insert into tblRoom(room_seq, roomClass_seq, hotel_seq, price, personCount, isDelete) values(10,3,21,100000,'2~4인실',1);


--31(노바 플래티넘 호텔 파타야) - 워킹스트리트 

INSERT INTO tblRoom(room_seq, hotel_seq, roomClass_seq, price, personCount, isDelete)
    VALUES(11, 31, 1, 70000, '1~2인실', 1);
INSERT INTO tblRoom(room_seq, hotel_seq, roomClass_seq, price, personCount, isDelete)
    VALUES(12, 31, 2, 90000, '1~2인실', 1);
INSERT INTO tblRoom(room_seq, hotel_seq, roomClass_seq, price, personCount, isDelete)
    VALUES(13, 31, 1, 90000, '2~3인실', 1);
INSERT INTO tblRoom(room_seq, hotel_seq, roomClass_seq, price, personCount, isDelete)
    VALUES(14, 31, 2, 110000, '2~3인실', 1);
INSERT INTO tblRoom(room_seq, hotel_seq, roomClass_seq, price, personCount, isDelete)
    VALUES(15, 31, 3, 130000, '2~3인실', 1);


--41번
insert into tblRoom(room_seq, roomClass_seq, hotel_seq, price, personCount, isDelete) values(16,1,41,60000,'1~2인실',1);
insert into tblRoom(room_seq, roomClass_seq, hotel_seq, price, personCount, isDelete) values(17,1,41,75000,'1~2인실',1);
insert into tblRoom(room_seq, roomClass_seq, hotel_seq, price, personCount, isDelete) values(18,2,41,85000,'2~4인실',1);
insert into tblRoom(room_seq, roomClass_seq, hotel_seq, price, personCount, isDelete) values(19,2,41,90000,'2~4인실',1);
insert into tblRoom(room_seq, roomClass_seq, hotel_seq, price, personCount, isDelete) values(20,3,41,120000,'2~4인실',1);

--51번
insert into tblRoom(room_seq,roomClass_seq,hotel_seq,price,personCount,isDelete) values(21,1,51,45000,'1~2인실',1);
insert into tblRoom(room_seq,roomClass_seq,hotel_seq,price,personCount,isDelete) values(22,1,51,45000,'1~2인실',1);
insert into tblRoom(room_seq,roomClass_seq,hotel_seq,price,personCount,isDelete) values(23,2,51,75000,'2~4인실',1);
insert into tblRoom(room_seq,roomClass_seq,hotel_seq,price,personCount,isDelete) values(24,2,51,75000,'2~4인실',1);
insert into tblRoom(room_seq,roomClass_seq,hotel_seq,price,personCount,isDelete) values(25,3,51,90000,'2~4인실',1);



--61
INSERT INTO tblRoom(room_seq, hotel_seq, roomClass_seq, price, personCount, isDelete)
    VALUES(26, 61, 1, 75000, '1~2인실', 1);
INSERT INTO tblRoom(room_seq, hotel_seq, roomClass_seq, price, personCount, isDelete)
    VALUES(27, 61, 2, 95000, '1~2인실', 1);
INSERT INTO tblRoom(room_seq, hotel_seq, roomClass_seq, price, personCount, isDelete)
    VALUES(28, 61, 1, 93000, '2~3인실', 1);
INSERT INTO tblRoom(room_seq, hotel_seq, roomClass_seq, price, personCount, isDelete)
    VALUES(29, 61, 2, 110000, '2~3인실', 1);
INSERT INTO tblRoom(room_seq, hotel_seq, roomClass_seq, price, personCount, isDelete)
    VALUES(30, 61, 3, 135000, '2~3인실', 1);

--71번
insert into tblRoom(room_seq,roomClass_seq,hotel_seq,price,personCount,isDelete) values(31,1,71,90000,'2인실',1);
insert into tblRoom(room_seq,roomClass_seq,hotel_seq,price,personCount,isDelete) values(32,1,71,80000,'1~2인실',1);
insert into tblRoom(room_seq,roomClass_seq,hotel_seq,price,personCount,isDelete) values(33,2,71,100000,'3~4인실',1);
insert into tblRoom(room_seq,roomClass_seq,hotel_seq,price,personCount,isDelete) values(34,2,71,110000,'3~4인실',1);
insert into tblRoom(room_seq,roomClass_seq,hotel_seq,price,personCount,isDelete) values(35,3,71,120000,'4인실',1);

--81번
insert into tblRoom(room_seq,roomClass_seq,hotel_seq,price,personCount,isDelete) values(36,1,81,45000,'1~2인실',1);
insert into tblRoom(room_seq,roomClass_seq,hotel_seq,price,personCount,isDelete) values(37,2,81,80000,'2~4인실',1);
insert into tblRoom(room_seq,roomClass_seq,hotel_seq,price,personCount,isDelete) values(38,2,81,80000,'2~4인실',1);
insert into tblRoom(room_seq,roomClass_seq,hotel_seq,price,personCount,isDelete) values(39,3,81,95000,'2~4인실',1);
insert into tblRoom(room_seq,roomClass_seq,hotel_seq,price,personCount,isDelete) values(40,3,81,95000,'2~4인실',1);

--91
INSERT INTO tblRoom(room_seq, hotel_seq, roomClass_seq, price, personCount, isDelete)
    VALUES(41, 91, 1, 80000, '1~2인실', 1);
INSERT INTO tblRoom(room_seq, hotel_seq, roomClass_seq, price, personCount, isDelete)
    VALUES(42, 91, 2, 98000, '1~2인실', 1);
INSERT INTO tblRoom(room_seq, hotel_seq, roomClass_seq, price, personCount, isDelete)
    VALUES(43, 91, 1, 100000, '2~3인실', 1);
INSERT INTO tblRoom(room_seq, hotel_seq, roomClass_seq, price, personCount, isDelete)
    VALUES(44, 91, 2, 120000, '2~3인실', 1);
INSERT INTO tblRoom(room_seq, hotel_seq, roomClass_seq, price, personCount, isDelete)
    VALUES(45, 91, 3, 145000, '2~3인실', 1);
--



---숙소당 체크인 체크아웃 정책
--호텔 시간 정책
    insert into tblHotelTime (hotelTime_seq, hotel_seq, check_in, check_out, isDelete)
        values
            (
            1,
            11,
            '09:00', 
            '13:00', 
            1
            );

    insert into tblHotelTime (hotelTime_seq, hotel_seq, check_in, check_out, isDelete)
        values
            (
            2,
            12,
            '10:00',
            '12:00', 
            1
            );
            
    insert into tblHotelTime (hotelTime_seq, hotel_seq, check_in, check_out, isDelete)
        values
            (
            3,
            21,
            '10:00', 
            '13:00', 
            1
            );
 
    insert into tblHotelTime (hotelTime_seq, hotel_seq, check_in, check_out, isDelete)
        values
            (
            4,
            22,
            '11:00', 
            '13:00', 
            1
            );

    insert into tblHotelTime (hotelTime_seq, hotel_seq, check_in, check_out, isDelete)
        values
            (
            5,
            31,
            '13:00', 
            '11:00', 
            1
            );
            
    insert into tblHotelTime (hotelTime_seq, hotel_seq, check_in, check_out, isDelete)
        values
            (
            6,
            32,
            '09:00', 
            '13:00', 
            1
            );
            
    insert into tblHotelTime (hotelTime_seq, hotel_seq, check_in, check_out, isDelete)
        values
            (
            7,
            41,
            '15:00',
            '11:00', 
            1
            );
            
    insert into tblHotelTime (hotelTime_seq, hotel_seq, check_in, check_out, isDelete)
        values
            (
            8,
            42,
            '13:00', 
            '12:00', 
            1
            );
            
    insert into tblHotelTime (hotelTime_seq, hotel_seq, check_in, check_out, isDelete)
        values
            (
            9,
            51,
            '09:00', 
            '13:00', 
            1
            );
            
    insert into tblHotelTime (hotelTime_seq, hotel_seq, check_in, check_out, isDelete)
        values
            (
            10,
            52,
            '10:00', 
            '12:00', 
            1
            );
    
    insert into tblHotelTime (hotelTime_seq, hotel_seq, check_in, check_out, isDelete)
        values
            (
            11,
            61,
            '14:00', 
            '13:00', 
            1
            );
    
    insert into tblHotelTime (hotelTime_seq, hotel_seq, check_in, check_out, isDelete)
        values
            (
            12,
            62,
            '16:00', 
            '14:00', 
            1
            );
            
        insert into tblHotelTime (hotelTime_seq, hotel_seq, check_in, check_out, isDelete)
        values
            (
            13,
            71,
            '14:00', 
            '11:00', 
            1
            );
            
        insert into tblHotelTime (hotelTime_seq, hotel_seq, check_in, check_out, isDelete)
        values
            (
            14,
            72,
            '11:00', 
            '13:00', 
            1
            );
        insert into tblHotelTime (hotelTime_seq, hotel_seq, check_in, check_out, isDelete)
        values
            (
            15,
            81,
            '16:00',
            '14:00', 
            1
            );
        insert into tblHotelTime (hotelTime_seq, hotel_seq, check_in, check_out, isDelete)
        values
            (
            16,
            82,
            '11:00', 
            '10:00', 
            1
            );
        insert into tblHotelTime (hotelTime_seq, hotel_seq, check_in, check_out, isDelete)
        values
            (
            17,
            91,
            '18:00',
            '11:00', 
            1
            );
        insert into tblHotelTime (hotelTime_seq, hotel_seq, check_in, check_out, isDelete)
        values
            (
            18,
            92,
            '19:00', 
            '13:00', 
            1
            );
         


