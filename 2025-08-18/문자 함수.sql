-- 2. 문자 함수
-- 1) CONCAT - 문자열 결합 (||)

SELECT CONCAT(STU_NAME, STU_DEPT)
FROM STUDENT;

SELECT CONCAT(CONCAT(STU_NAME, ' '), STU_DEPT)
FROM STUDENT;

SELECT STU_NAME || ' - ' || STU_DEPT
FROM STUDENT;

-- 2) LENGTH - 문자열 길이
SELECT STU_DEPT, LENGTH(STU_DEPT)
FROM STUDENT;

-- 3) SUBSTR - 문자열 자르기(특정 부분 추출)
SELECT SUBSTR('Hello Oracle', 1, 5)
FROM DUAL;

SELECT NAME, SUBSTR(JUMIN, 1, 6) AS 생년월일
FROM STU;

-- DECODE - 자바의 IF문과 비슷한 문법
SELECT 
    NAME, 
    SUBSTR(JUMIN, 7, 1),
    DECODE(SUBSTR(JUMIN, 7, 1), 1, '남', '여')
FROM STU;

-- UPPER, LOWER -- 대문자, 소문자로 변경
SELECT 
    UPPER('HelLo OraCle'),
    LOWER('HelLo OraCle')
FROM DUAL;

-- INSTR - 특정 문자열이 처음으로 몇번째에 나오는지
SELECT EMAIL, INSTR(EMAIL, '@') 
FROM PROFESSOR;

-- REPLACE - 문자열을 다른 문자열로 대체
SELECT EMAIL, REPLACE(EMAIL, 'net', 'com') 
FROM PROFESSOR;

-- TRIM - 공백제거
SELECT 
    TRIM('  Hello Oracle  '),
    LTRIM('  Hello Oracle  '),
    RTRIM('  Hello Oracle  ')
FROM DUAL;

-- LPAD, RPAD - 왼쪽OR오른쪽에 지정한 길이만큼 특정 문자 채우기

SELECT
    LPAD(ID, 10, '*'),
    RPAD(ID, 10, '*')
FROM STU;

-- STU테이블의 ID끝에 3글자만 *로 표시
SELECT 
    ID, 
    SUBSTR(ID, 1, LENGTH(ID)-3) || '***',
    RPAD(SUBSTR(ID, 1, LENGTH(ID)-3), LENGTH(ID), '*')
FROM STU;