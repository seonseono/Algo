-- 코드를 입력하세요
SELECT R.REST_ID
       , REST_NAME
       , FOOD_TYPE
       , FAVORITES
       , ADDRESS
       , ROUND(AVG(review_score), 2) AS SCORE
FROM rest_review AS r
     LEFT JOIN rest_info AS i
     ON r.rest_id = i.rest_id
WHERE address LIKE '서울%'
GROUP BY r.rest_id
ORDER BY AVG(review_score) DESC, 
         FAVORITES DESC