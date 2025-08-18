-- 다시 보기
-- 서브 쿼리 = 쿼리 안에 또 다른 쿼리

SELECT MAX(PAY)
FROM PROFESSOR;
-- 급여 많이 받는사람

SELECT *
FROM PROFESSOR
WHERE PAY = (
    SELECT MAX(PAY)
    FROM PROFESSOR
);

-- 급여 가장 많이 받는 사람과 가장 적게 받는 사람 (OR이나 IN으로 찾을 수 있다)
SELECT *
FROM PROFESSOR
WHERE PAY = (
    SELECT MAX(PAY)
    FROM PROFESSOR
) OR PAY = (    
    SELECT  MIN(PAY)
    FROM PROFESSOR
);

-----------------------
SELECT *
FROM PROFESSOR;
-------------------------------
SELECT DEPTNO
FROM DEPARTMENT
WHERE DNAME =  '컴퓨터공학과';
----------------------------
SELECT *
FROM PROFESSOR (
WHERE DEPTNO = (  
    SELECT DEPTNO
    FROM DEPARTMENT
    WHERE DNAME =  '컴퓨터공학과'
    );
--------------------------------------

--서비쿼리에서는 두개 이상의 컬럼이 들어 갈때 IN을 사용 할 수 있다.
SELECT *
FROM PROFESSOR (
WHERE DEPTNO IN (  
    SELECT DEPTNO
    FROM DEPARTMENT
    WHERE DNAME IN ('컴퓨터공학과', '멀티미디어공학과')
 );   


-- 권장하는 방식은 아닌 명령어 조인으로 대처가 가능
SELECT 
    STU_NAME,
    (SELECT COUNT(*) FROM STUDENT)
FROM STUDENT;


