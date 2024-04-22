SELECT f.flavor
FROM first_half as f
     JOIN icecream_info as i 
     ON f.flavor = i.flavor
WHERE TOTAL_ORDER > 3000
      AND ingredient_type LIKE '%fruit%'
