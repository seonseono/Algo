-- 코드를 작성해주세요
SELECT d.DEPT_ID, d.DEPT_NAME_EN,
       ROUND(AVG(e.SAL), 0) AS AVG_SAL
FROM hr_department AS d
     JOIN hr_employees AS e
     ON d.dept_id = e.dept_id
GROUP BY d.dept_id
ORDER BY AVG_SAL DESC