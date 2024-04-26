-- 코드를 입력하세요
SELECT USER_ID, PRODUCT_ID
FROM online_sale
GROUP BY user_id, product_id
HAVING COUNT(PRODUCT_ID) > 1
ORDER BY user_id, product_id DESC