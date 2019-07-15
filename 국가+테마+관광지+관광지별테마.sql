--나라 + 테마 + 관광지 + 관광지의 테마


--테마
insert into tblTheme (theme_seq, name, icon, isDelete) 
    values
        (
        1, --테마 번호
        '바다',
        '바다.jpg',
        1
        );

insert into tblTheme (theme_seq, name, icon, isDelete) 
    values
        (
        2, --테마 번호
        '야경',
        '야경.jpg',
        1
        );
        
insert into tblTheme (theme_seq, name, icon, isDelete) 
    values
        (
        3, --테마 번호
        '맛집',
        '맛집.jpg',
        1
        );
        

--나라
insert into tblCountry (country_seq, name, picture, description, isDelete) 
        values(
            0, --국가명 seq
            '한국',--국가명
            '한국.jpg', --국가사진 이름
            '한국 정보', --국가 정보
            1);


insert into tblCountry (country_seq, name, picture, description, isDelete) 
        values(
            1, --국가명 seq
            '태국',--국가명
            '태국.jpg', --국가사진 이름
            '태국 정보', --국가 정보

            1); 
insert into tblCountry (country_seq, name, picture, description, isDelete) 
        values(
            2, --국가명 seq
            '미국',--국가명
            '미국.jpg', --국가사진 이름
            '미국 정보', --국가 정보
            1);
     
     
            
-- 관광지 + 관광지별 테마

    --카오산 로드(야경)
insert into tbltouristspot (touristSpot_seq, country_seq, name, picture, description, lat, lng, isDelete)
    values 
        (
        1, --관광지 번호
        1, --국가FK
        '카오산로드', --관광지 이름
        '카오산로드.jpg', --관광지 사진
        '방콕 왕궁에서 약 1km 떨어진 방람푸 시장 근처에 형성된 여행자 거리이다. "전 세계 배낭여행자들의 베이스캠프"라는 별칭이 붙을 만큼 여행자들이 모여 자연스럽게 교류하고 정보를 공유하는 배낭여행의 메카이다.', --관광지 설명
        13.758793, --관광지 위도
        100.497473, --관광지 경도
        1
        );          
    INSERT INTO tbltouristspottheme(touristspottheme_seq, touristSpot_seq, theme_seq)
        VALUES(1, 1, 2); --야경



--이글네스트(야경+맛집)        
insert into tbltouristspot (touristSpot_seq, country_seq, name, picture, description, lat, lng, isDelete)
    values 
        (
        2, --관광지 번호
        1, --국가FK
        '이글네스트', --관광지 이름
        '이글네스트.jpg', --관광지 사진
        '짜오프라야 강 바로 옆에 위치한 5층 높이의 루프탑바이다.짜오프라야강 건너편에 왓포사원가 왓아룬 사원이 위치해 야경을 볼 수 있다.', --관광지 설명
        13.74519, --관광지 위도
        100.490935, --관광지 경도
        1
        );    
    INSERT INTO tbltouristspottheme(touristspottheme_seq, touristSpot_seq, theme_seq)
        VALUES(2, 2, 2); --야경
    INSERT INTO tbltouristspottheme(touristspottheme_seq, touristSpot_seq, theme_seq)
        VALUES(3, 2, 3); --맛집
       
--워킹스트리트(야경)
insert into tbltouristspot (touristSpot_seq, country_seq, name, picture, description, lat, lng, isDelete)
    values 
        (
        3, --관광지 번호
        1, --국가FK
        '워킹스트리트', --관광지 이름
        '워킹스트리트.jpg', --관광지 사진
        '파타야의 화려한 밤거리이다. 발리 하이 선착장까지 약 500미터의 거리에 수많은 레스토랑과 클럽,바,라이브 펍들이 자리를 잡고 있다.', --관광지 설명
        12.926400, --관광지 위도
        100.873173, --관광지 경도
        1
        );    
    INSERT INTO tbltouristspottheme(touristspottheme_seq, touristSpot_seq, theme_seq)
        VALUES(4, 3, 2); --야경
        
        
--산호섬투어(바다)  
insert into tbltouristspot (touristSpot_seq, country_seq, name, picture, description, lat, lng, isDelete)
    values 
        (
        4, --관광지 번호
        1, --국가FK
        '산호섬투어', --관광지 이름
        '산호섬투어.jpg', --관광지 사진
        '에메랄드 빛 바다에서 즐기는 다양한 액티비티를 체험할 수 있다. 파라세일링, 씨워크, 제트스키, 거북이 섬 해변 감상이 있다.', --관광지 설명
        12.917186, --관광지 위도
        100.785242, --관광지 경도
        1
        );         
    INSERT INTO tbltouristspottheme(touristspottheme_seq, touristSpot_seq, theme_seq)
        VALUES(5, 4, 1); --바다
    
   --호라이즌(바다+야경+맛집)   
insert into tbltouristspot (touristSpot_seq, country_seq, name, picture, description, lat, lng, isDelete)
    values 
        (
        5, --관광지 번호
        1, --국가FK
        '호라이즌', --관광지 이름
        '호라이즌.jpeg', --관광지 사진
        '파타야 힐튼호텔 34층에 위치한 레스토랑 겸 바이다. 파타야 전망이 아름다운 곳에서 식사도 할 수 있다.', --관광지 설명
        12.935140, --관광지 위도
        100.882467, --관광지 경도
        1
        ); 
    INSERT INTO tbltouristspottheme(touristspottheme_seq, touristSpot_seq, theme_seq)
        VALUES(6, 5, 1); --바다
    INSERT INTO tbltouristspottheme(touristspottheme_seq, touristSpot_seq, theme_seq)
        VALUES(7, 5, 2); --야경
    INSERT INTO tbltouristspottheme(touristspottheme_seq, touristSpot_seq, theme_seq)
        VALUES(8, 5, 3); --맛집

--람파라핀(바다+야경+맛집)
insert into tbltouristspot (touristSpot_seq, country_seq, name, picture, description, lat, lng, isDelete)
    values 
        (
        6, --관광지 번호
        1, --국가FK
        '람파라핀', --관광지 이름
        '파타야_람파라핀.jpeg', --관광지 사진
        '바다 위 아름다운 선셋을 바라보며 식사를 할 수 있는 식당. 바다 위 펼쳐지는 선셋과 야경을 보며 맛있는 태국음식을 먹을 수 있다.', --관광지 설명
        12.805154, --관광지 위도
        100.913307, --관광지 경도
        1
        );
    INSERT INTO tbltouristspottheme(touristspottheme_seq, touristSpot_seq, theme_seq)
        VALUES(9, 6, 1); --바다
    INSERT INTO tbltouristspottheme(touristspottheme_seq, touristSpot_seq, theme_seq)
        VALUES(10, 6, 2); --야경
    INSERT INTO tbltouristspottheme(touristspottheme_seq, touristSpot_seq, theme_seq)
        VALUES(11, 6, 3); --맛집
        
        
--피파(바다+야경+맛집)
insert into tbltouristspot (touristSpot_seq, country_seq, name, picture, description, lat, lng, isDelete)
    values 
        (
        7, --관광지 번호
        1, --국가FK
        '피파',--관광지 이름
        '피파.jpeg', --관광지 사진
        '파타야 바다와 파타야 야경을 바라보며 식사를 할 수 있는 떠오르는 핫한 식당. 태국음식이 아닌 스테이크나 와인도 파는 곳', --관광지 설명
        12.945285, --관광지 위도
        100.886748, --관광지 경도
        1
        ); 
    INSERT INTO tbltouristspottheme(touristspottheme_seq, touristSpot_seq, theme_seq)
        VALUES(12, 7, 1); --바다
    INSERT INTO tbltouristspottheme(touristspottheme_seq, touristSpot_seq, theme_seq)
        VALUES(13, 7, 2); --야경
    INSERT INTO tbltouristspottheme(touristspottheme_seq, touristSpot_seq, theme_seq)
        VALUES(14, 7, 3); --맛집
        
        
--버티고 앤 문 바(야경+맛집)
insert into tbltouristspot (touristSpot_seq, country_seq, name, picture, description, lat, lng, isDelete)
    values 
        (
        8, --관광지 번호
        1, --국가FK
        '버티고 앤 문 바', --관광지 이름
        '버티고 앤 문 바.jpg', --관광지 사진
        '반얀트리호텔 내 61층에 위치하고있는 루프탑바이다. 배의 형상을 하고 있고 61층에 위치해 확 트인 시야로 방콕의 야경을 360도로 야경을 감상할 수 있다. 이용시간은 오후5시부터 오전1시까지이다.', --관광지 설명
        13.723552, --관광지 위도
        100.540013, --관광지 경도
        1
        );    

    INSERT INTO tbltouristspottheme(touristspottheme_seq, touristSpot_seq, theme_seq)
        VALUES(16, 8, 2); --야경
    INSERT INTO tbltouristspottheme(touristspottheme_seq, touristSpot_seq, theme_seq)
        VALUES(17, 8, 3); --맛집 
        
        
--욧시암보트(바다 + 야경)
insert into tbltouristspot (touristSpot_seq, country_seq, name, picture, description, lat, lng, isDelete)
    values 
        (
        9, --관광지 번호
        1, --국가FK
        '욧시암보트', --관광지 이름
        '욧시암보트.png', --관광지 사진
        '아시아티크 옆 선착장에서 탈 수 있으며,  야경과 바다를 볼 수 있다. 보트 안에서 음료와 식사도 할 수 있다.', --관광지 설명
        13.705004, --관광지 위도
        100.501844, --관광지 경도
        1
        ); 
    INSERT INTO tbltouristspottheme(touristspottheme_seq, touristSpot_seq, theme_seq)
        VALUES(19, 9, 1); --바다
    INSERT INTO tbltouristspottheme(touristspottheme_seq, touristSpot_seq, theme_seq)
        VALUES(18, 9, 2); --야경


---



