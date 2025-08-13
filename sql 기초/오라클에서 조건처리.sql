-- 오라클에서 조건 처리

SELECT NAME, PAY, BONUS, PAY+BONUS 
FROM PROFESSOR;

-- NVL 함수
SELECT NAME, NVL(BONUS, 0) -- 'NULL' 값을 0으로 바꿔서 출력해준다.
FROM PROFESSOR;

-- ex) 페이 + 보너스의 합이 300이상인 사람을 구하세요
SELECT SUM(PAY+BOUNS) 
FROM PROFESSOR
WHERE PAY+NVL(BOUNS, 0) >= 300;

-- NVL 2
SELECT BONUS, NVL2(BONUS, 1000, 0)
FROM PROFESSOR;

------------------------------------
-- ex) STU에 7번째 숫자가 1인지 2인지 출력
SELECT NAME, SUBSTR(JUMIN, 7, 1) AS 성별
FROM STU;

-- DECODE = 자바의 조건문(IF)랑 같다.
-- DECODE(컬럼명), '값', '값이 컬럼값이랑 동일할 때 출력할 값', '조건 만족 안했을 떄 출력 할 값')

SELECT ENAME, JOB, DECODE(JOB, 'MANAGER', '매니저!', '그 외') FROM EMP;

SELECT NAME, DECODE(SUBSTR(JUMIN, 7, 1), 1, '남자', '여자') AS 성별
FROM STU;

-- IF = ELSE IF ~ ELSE
-- ex)
SELECT 
    ENAME, 
    JOB, 
    DECODE(JOB, 'MANAGER', '매니저!', 'SALESMAN', '세일즈맨!', '그 외') 
FROM EMP;

-- 주민번호 7번째가 1,3 이면 '남자', 2,4면 '여자'로 출력
SELECT 
    NAME,   -- 1이랑 3만 남자로 입력한다면 나머지는 숫자는 여자로 출력됨
    DECODE(SUBSTR(JUMIN, 7, 1), 1, '남자', 3, '남자', '여자') AS 성별 
FROM STU;

-- CASE ~ WHEN (DECODE 보다 좀 더 복잡한 처리 가능한 IF문)
SELECT * FROM PROFESSOR;

SELECT
    CASE
        WHEN PAY >= 500 THEN '고소득'
        WHEN PAY BETWEEN 300 AND 500 THEN '적당히 받음'
        ELSE '화이팅'
    END 급여정보
FROM PROFESSOR;

