-- 코드를 입력하세요
SELECT YEAR(sales_date) AS YEAR
     , MONTH(sales_date) AS MONTH
     , GENDER
     , COUNT(distinct(i.user_id)) AS USERS
FROM user_info AS i
     INNER JOIN online_sale AS o
     ON i.user_id = o.user_id
WHERE gender IS NOT NULL
GROUP BY YEAR(sales_date), MONTH(sales_date), gender
ORDER BY YEAR(sales_date), MONTH(sales_date), gender