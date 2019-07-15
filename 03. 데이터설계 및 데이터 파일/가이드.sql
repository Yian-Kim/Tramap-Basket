--가이드
INSERT INTO tblGuide(guide_id, pw, name, gender, age, picture, description, regdate, isDelete)
    VALUES('G0001','java1234', '뽀이 뜨리차다', 2, 28,'G0001.png', '가이드 설명 상의해서 넣기', '2019-07-10', 1);
INSERT INTO tblGuide(guide_id, pw, name, gender, age, picture, description, regdate, isDelete)
    VALUES('G0002','java1234', '피야퐁 피우온', 1, 30,'G0002.png', '가이드 설명 상의해서 넣기', '2019-07-10', 1);
INSERT INTO tblGuide(guide_id, pw, name, gender, age, picture, description, regdate, isDelete)
    VALUES('G0003','java1234', '이지은', 2, 30,'G0003.png', '가이드 설명 상의해서 넣기', '2019-07-10', 1);
INSERT INTO tblGuide(guide_id, pw, name, gender, age, picture, description, regdate, isDelete)
    VALUES('G0004','java1234', '김수철', 1, 30,'G0004.png', '가이드 설명 상의해서 넣기', '2019-07-10', 1);
    
    
--가이드 스케줄
    --뽀이 뜨리차다의 4일차 스케줄
INSERT INTO tblGuideSchedule(guideSchedule_seq, guide_id, issuedate, state) 
    VALUES(1, 'G0001', '2019-08-22', 1);
INSERT INTO tblGuideSchedule(guideSchedule_seq, guide_id, issuedate, state) 
    VALUES(2, 'G0001', '2019-08-23', 1);
INSERT INTO tblGuideSchedule(guideSchedule_seq, guide_id, issuedate, state) 
    VALUES(3, 'G0001', '2019-08-24', 1);
INSERT INTO tblGuideSchedule(guideSchedule_seq, guide_id, issuedate, state) 
    VALUES(4, 'G0001', '2019-08-25', 1);  
    --피야퐁 피우온의 4일차 스케줄
INSERT INTO tblGuideSchedule(guideSchedule_seq, guide_id, issuedate, state) 
    VALUES(5, 'G0002', '2019-08-22', 1);
INSERT INTO tblGuideSchedule(guideSchedule_seq, guide_id, issuedate, state) 
    VALUES(6, 'G0002', '2019-08-22', 1);
INSERT INTO tblGuideSchedule(guideSchedule_seq, guide_id, issuedate, state) 
    VALUES(7, 'G0002', '2019-08-22', 1);
INSERT INTO tblGuideSchedule(guideSchedule_seq, guide_id, issuedate, state) 
    VALUES(8, 'G0002', '2019-08-22', 1);
    --이지은의 4일차 스케줄
INSERT INTO tblGuideSchedule(guideSchedule_seq, guide_id, issuedate, state) 
    VALUES(9, 'G0003', '2019-08-22', 1);
INSERT INTO tblGuideSchedule(guideSchedule_seq, guide_id, issuedate, state) 
    VALUES(10, 'G0003', '2019-08-22', 1);
INSERT INTO tblGuideSchedule(guideSchedule_seq, guide_id, issuedate, state) 
    VALUES(11, 'G0003', '2019-08-22', 1);
INSERT INTO tblGuideSchedule(guideSchedule_seq, guide_id, issuedate, state) 
    VALUES(12, 'G0003', '2019-08-22', 1);
    --김수철의 4일차 스케줄
INSERT INTO tblGuideSchedule(guideSchedule_seq, guide_id, issuedate, state) 
    VALUES(13, 'G0004', '2019-08-22', 1);
INSERT INTO tblGuideSchedule(guideSchedule_seq, guide_id, issuedate, state) 
    VALUES(14, 'G0004', '2019-08-22', 1);
INSERT INTO tblGuideSchedule(guideSchedule_seq, guide_id, issuedate, state) 
    VALUES(15, 'G0004', '2019-08-22', 1);
INSERT INTO tblGuideSchedule(guideSchedule_seq, guide_id, issuedate, state) 
    VALUES(16, 'G0004', '2019-08-22', 1);


--COMMIT;


