-- 코드를 입력하세요
SELECT I.NAME, I.DATETIME
FROM animal_ins AS I 
    LEFT JOIN animal_outs AS O ON I.animal_id = O.animal_id
WHERE O.DATETIME IS NULL
ORDER BY I.DATETIME LIMIT 3