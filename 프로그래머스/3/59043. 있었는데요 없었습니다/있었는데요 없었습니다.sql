-- 코드를 입력하세요
SELECT I.ANIMAL_ID, I.NAME
FROM animal_ins AS I
    JOIN animal_outs AS O ON I.animal_id = O.animal_id
WHERE I.DATETIME > O.DATETIME
ORDER BY I.DATETIME