-- 코드를 입력하세요
SELECT ID, NAME, HOST_ID
FROM places
WHERE HOST_ID 
      IN (SELECT HOST_ID
          FROM places
          GROUP BY HOST_ID
          HAVING COUNT(*) >= 2
        )
ORDER BY ID;