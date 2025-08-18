-- 1. 각 직급별 가장 많은 급여를 받는 교수의 이름, 급여 출력 (PROFESSOR)
SELECT * FROM PROFESSOR;

SELECT POSITION, MAX(PAY)
FROM PROFESSOR
GROUP BY POSITION;

-----------------------------------------
SELECT *
FROM PROFESSOR P
INNER JOIN (
    SELECT POSITION, MAX(PAY) MAX_PAY
    FROM PROFESSOR
    GROUP BY POSITION 
) T ON P.POSITION = T.POSITION AND P.PAY = T.MAX_PAY;

-- 2. 본인 부서의 평균 급여보다 높은 급여를 받는 사원의 사번, 이름, 급여 출력 (EMP)
SELECT * FROM EMP;

SELECT DEPTNO, AVG(SAL)
FROM EMP
GROUP BY DEPTNO;

--------------------------------------------------------
SELECT  EMPNO, ENAME, SAL, ROUND(AVG_SAL) 
FROM EMP E
INNER JOIN (
    SELECT DEPTNO, AVG(SAL) AVG_SAL
    FROM EMP
    GROUP BY DEPTNO
) T ON  E.DEPTNO = T.DEPTNO AND E.SAL > T.AVG_SAL;







