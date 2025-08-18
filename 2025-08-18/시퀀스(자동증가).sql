INSERT INTO BOARD VALUES(1, '첫번째게시글', '내용111', 'test');
ROLLBACK;

-- 자동증가
CREATE SEQUENCE BOARD_SEQ
    INCREMENT BY 1 -- 몇씩 증가 시킬것인지
    START WITH 1 -- 몇 부터 시작할지
   
-- 옵션   
    MINVALUE  1 -- 시퀀스 최소 값
    MAXVALUE 99999 -- 최대값
    NOCYCLE; -- 반복여부
    
DROP SEQUENCE BOARD_SEQ -- 시퀀스 삭제 명령어

-- 자동증가
CREATE SEQUENCE TEST_SEQ.NEXTVAL
FROM DUAL;

INSERT INTO BOARD
VALUES(BOARD_SEQ.NEXTVAL, 'ZZZZZ', 'HHHHH', 'test');

SELECT * FROM BOARD;
COMMIT;