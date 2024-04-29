-- 코드를 입력하세요
SELECT USER_ID, NICKNAME, 
        CONCAT(city,' ',street_address1,' ',street_address2) AS 전체주소, 
        CONCAT(substr(TLNO,1,3), '-', substr(TLNO,4,4), '-', substr(TLNO,8,4)) AS 전화번호
FROM used_goods_board AS b, 
     used_goods_user AS u
WHERE writer_id = user_id
GROUP BY user_id
HAVING COUNT(user_id) >= 3
ORDER BY user_id DESC
