-- 코드를 작성해주세요
SELECT SUM(PRICE) AS TOTAL_PRICE
FROM item_info
WHERE rarity = 'LEGEND'