-- 코드를 입력하세요
SELECT FACTORY_ID, FACTORY_NAME, ADDRESS
FROM food_factory
WHERE ADDRESS LIKE '강원도%'
ORDER BY factory_id