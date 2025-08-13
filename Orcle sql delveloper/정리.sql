-- 정리
-- DML = 데이터 조작이라 한다.
-- SELECT, UPDATE, INSERT, DELETE

SELECT * -- SELECT 뒤에는 컬럼명이 온다. 대소문자를 왠만해서 구분 지어 놓으면 좋다.
FROM STUDENT; -- 커밋 시킨 데이터는 명확하게 대소문자를 구분지어줘야 한다.

-- 그룹 함수
SELECT STU_DEPT, ROUND(AVG(STU_HEIGHT), 1) 
FROM STUDENT
GROUP BY STU_DEPT;

SELECT * 
FROM PROFESSOR
WHERE LENGTH(ID) >= 6;

UPDATE PROFESSOR
SET 
    PAY = PAY +50
WHERE LENGTH(ID) >=6;

ROLLBACK;

DELETE FROM PROFESSOR; -- 뒤에서 조건을 줘서 삭제도 가능 WHERE LENGTH(ID) < 6;

INSERT INTO STUDENT(STU_NO, STU_NAME, STU_DEPT)
VALUES ('12341234', '홍길동', '기계');

INSERT INTO STUDENT
VALUES ('12341234', '김철수', '전기전자', 1, 'A', 'M', 175, NULL);


