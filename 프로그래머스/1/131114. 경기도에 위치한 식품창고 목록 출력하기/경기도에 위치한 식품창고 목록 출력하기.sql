-- 코드를 입력하세요
SELECT WAREHOUSE_ID, WAREHOUSE_NAME, ADDRESS, IF(FREEZER_YN = 'Y', 'Y', 'N') FREEZER_YN
FROM food_warehouse
WHERE address LIKE '경기도%'
ORDER BY warehouse_id