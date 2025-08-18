-- OUTER조인
-- LEFT, RIGHT | LEFT만 알면 된다. 즉 왼쪽 오른쪽 기준을 말함
SELECT * 
FROM STUDENT S
INNER JOIN ENROL E ON S.STU_NO = E.STU_NO;

SELECT * 
FROM STUDENT S -- LEFT를 쓸 경우 왼쪽에 있는 STUDENT 테이블에 있는건 모두 출력하되 없는 건 NULL로 출력해줌
LEFT JOIN ENROL E ON S.STU_NO = E.STU_NO;

-- 각 학생들이 시험을 본 개수 출력
-- 이름, 개수, 출력  단 시험을 하나도 보지 않으면 개수는 0으로 출력

SELECT S.STU_NO, COUNT(*) -- 시험을 본 학생들
FROM STUDENT S
INNER JOIN ENROL E ON S.STU_NO = E.STU_NO
GROUP BY S.STU_NO;

SELECT S.STU_NO, STU_NAME, COUNT(ENR_GRADE) -- 시험을 안본 학생들
FROM STUDENT S
LEFT JOIN ENROL E ON S.STU_NO = E.STU_NO
GROUP BY S.STU_NO, STU_NAME;

----------------------------------------------------------------

SELECT * FROM EMP;

-- 각 직원의 부하직원 수를 구하기, 단 없으면 0으로 출력
-- 출력 컬럼 : 사번, 이름, 부하직원 수

SELECT COUNT(EMPNO) 
FROM EMP;

SELECT MGR, COUNT(EMPNO) 
FROM EMP 
GROUP BY MGR;

SELECT EMPNO, ENAME, NVL(CNT, 0)  -- NVL은 NULL을 0으로 처리해준다.
FROM EMP E
LEFT JOIN (
    SELECT MGR, COUNT(*) CNT
    FROM EMP 
    GROUP BY MGR
) T ON E.EMPNO = T.MGR
    ORDER BY CNT DESC; -- 높은 순으로 정리
     
-------------------------------------------
-- 학번, 학생이름, 담당교수 이름 출력
-- 단, 담당교수가 없으면 담당교수 이름을 '담당교수없음'으로 출력
SELECT * FROM PROFESSOR;
SELECT * FROM STU;

SELECT STUNO, S.NAME, NVL(P.NEME, '담당교수가 없음')
FROM STU S
LEFT JOIN PROFESSOR P ON S.STUNO = P.STUNO;

-- STUDENT
-- 1. 학생들의 시험 평균 점수 출력
-- 단, 시험을 보지 않은 학생은 '성적없음' 출력

SELECT * FROM STUDENT;

SELECT S.STU_NO, NVL(TO_CHAR(AVG(STU_GRADE), '성적없음') 평균점수 --TO_CHAR는 숫자를 문자로 바꾸는걸 가능하다.
FROM STUDENT S
LEFT JOIN  ENROL E ON S.STU_NO = E.STU_NO
GROUP BY S.STU_NO;



