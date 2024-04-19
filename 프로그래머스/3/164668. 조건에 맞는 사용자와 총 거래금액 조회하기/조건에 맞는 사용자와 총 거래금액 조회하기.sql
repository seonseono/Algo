-- 코드를 입력하세요
SELECT USER_ID, NICKNAME, sum(b.price) as TOTAL_SALES
FROM USED_GOODS_BOARD AS b
     JOIN USED_GOODS_USER AS u
     ON b.writer_id = u.user_id
WHERE b.status = 'DONE' 
GROUP BY user_id
HAVING sum(b.price) >= 700000
ORDER BY sum(b.price);