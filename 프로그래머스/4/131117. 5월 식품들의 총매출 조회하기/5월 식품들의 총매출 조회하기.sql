-- 코드를 입력하세요
SELECT p.PRODUCT_ID, p.PRODUCT_NAME, PRICE*SUM(amount) AS TOTAL_PRICE
FROM food_product AS p, food_order AS o
WHERE p.product_id = o.product_id
      AND PRODUCE_DATE LIKE '2022-05%'
GROUP BY PRODUCT_NAME
ORDER BY PRICE*SUM(amount) DESC, PRODUCT_ID ASC