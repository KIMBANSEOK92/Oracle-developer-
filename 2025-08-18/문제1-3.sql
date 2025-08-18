-- STUDENT
-- 각 학과의 가장 키가 큰 사람을 구해라 - 학번, 이름 , 키
SELECT * FROM STUDENT;

SELECT STU_DEPT, MAX(STU_HEIGHT)
FROM STUDENT 
GROUP BY STU_DEPT;
------------------------
SELECT * 
FROM STUDENT S
INNER JOIN (
    SELECT STU_DEPT, MAX(STU_HEIGHT) MAX_HEIGHT -- MAX의 별칭을 넣어준다 
    FROM STUDENT 
    GROUP BY STU_DEPT
) T ON S.STU_DEPT = T.STU_DEPT AND S.STU_HEIGHT = T.MAX_HEIGHT; -- 임시저장 하는 별칭을 만들어준다.
    