-- 코드를 작성해주세요
SELECT I.id AS ID, N.fish_name AS FISH_NAME, I.length AS LENGTH
FROM fish_info as I 
    JOIN fish_name_info as N ON I.fish_type = N.fish_type
WHERE (I.FISH_TYPE, I.LENGTH) 
        IN (SELECT FISH_TYPE, MAX(LENGTH)
            FROM FISH_INFO
            GROUP BY FISH_TYPE)
ORDER BY id