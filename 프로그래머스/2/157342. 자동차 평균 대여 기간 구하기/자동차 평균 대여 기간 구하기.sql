-- 코드를 입력하세요
SELECT CAR_ID,
       ROUND(AVG(DATEDIFF(end_date, start_date) + 1), 1) AS AVERAGE_DURATION
FROM car_rental_company_rental_history
GROUP BY car_id
HAVING AVERAGE_DURATION >= 7
ORDER BY AVERAGE_DURATION DESC, 
         car_id DESC