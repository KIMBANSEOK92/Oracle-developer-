
-----------------------------------------------------------------
SELECT ROWNUM, S.* -- ROWNUM = 첫번째 레코드를 실행할때 숫자 넘버링을 체크해준다.
FROM STUDENT S 
WHERE ROWNUM <= 5;

SELECT ROWNUM, S.*
FROM STUDENT S ;
-- WHERE ROWNUM BETWEEN 3 AND 6;
-- 3~6

SELECT *
FROM (
    SELECT ROWNUM AS RN, S.*
    FROM STUDENT S 
)
WHERE RN BETWEEN 3 AND 6;

SELECT ROWNUM, S.*
FROM STUDENT S
ORDER BY STU_HEIGHT DESC;

-- 학생테이블에서 키가 큰 상위 5명만 출력

SELECT ROWNUM, S.*
FROM (
    SELECT *
    FROM STUDENT
    WHERE STU_HEIGHT IS NOT NULL
    ORDER BY STU_HEIGHT DESC
) S 
WHERE ROWNUM <= 5;

-- 평균급여가 2번째로 큰 부서의 부서명, 평균급여 출력
-- ROWNUM // ROW_NUMBER(), OFFSET ~ FETCH, RANK()
-- ROWNUM으로만 해결
SELECT DNAME, 평균급여
FROM (
    SELECT ROWNUM RN, S.*
    FROM (
        SELECT DNAME, ROUND(AVG(SAL)) 평균급여
        FROM EMP E
        INNER JOIN DEPT D ON E.DEPTNO = D.DEPTNO
        GROUP BY DNAME
        ORDER BY 평균급여 DESC
    ) S
) S
WHERE RN = 2;


