-- 코드를 입력하세요
SELECT o.ANIMAL_ID, o.ANIMAL_TYPE, o.NAME
FROM animal_ins AS i
     JOIN animal_outs AS o
     ON i.animal_id = o.animal_id
WHERE sex_upon_intake LIKE 'Intact%'
     AND sex_upon_outcome NOT LIKE 'Intact%'