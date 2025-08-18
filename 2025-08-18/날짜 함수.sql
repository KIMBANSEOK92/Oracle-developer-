-- 날짜 함수
-- 1) SYSDATE - 현재 시간 가져오기
-- 2) TO_CHAR - 날짜를 문자 포맷으로, TO_DATE - 문자를 날짜 포맷으로
SELECT 
    SYSDATE,
    TO_CHAR(SYSDATE, 'YYYY-MM-DD HH:MI:SS'), -- 원하는 시간대 설정 초분등 세밀하게 조정가능
    TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2025-10-15', 'YYYY-MM-DD')
FROM DUAL;


