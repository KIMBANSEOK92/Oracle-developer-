-- 2. UPDATE (테이블의 특정 컬럼에 있는 데이터를 수정)

SELECT * 
FROM STUDENT;

UPDATE STUDENT
SET
    STU_HEIGHT = 175
WHERE STU_NAME = '박희철';
COMMIT;
ROLLBACK;
-- 데이터 변경(수정 및 삭제, 삽입)는 COMMIT를 해줘야 적용 됨


UPDATE STUDENT
SET
    STU_HEIGHT = STU_HEIGHT + 1,
    STU_WEIGHT = STU_WEIGHT - 1
WHERE STU_DEPT = '기계';
COMMIT;