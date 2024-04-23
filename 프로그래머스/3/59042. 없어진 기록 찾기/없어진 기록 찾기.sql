-- 코드를 입력하세요
SELECT ANIMAL_ID, O.NAME
FROM animal_outs AS O
     LEFT JOIN animal_ins
     USING(animal_id)
WHERE INTAKE_CONDITION IS NULL

# SELECT ANIMAL_ID, O.NAME
# FROM animal_ins
#      LEFT JOIN animal_outs AS O
#      USING(animal_id)