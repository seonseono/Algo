# -- 코드를 작성해주세요
SELECT COUNT(*) AS FISH_COUNT,
       FISH_NAME
FROM fish_info AS i
     JOIN fish_name_info AS n
     USING(fish_type)
GROUP BY FISH_NAME
ORDER BY FISH_COUNT DESC
