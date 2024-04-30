-- 코드를 입력하세요
SELECT a.APNT_NO, p.PT_NAME, p.PT_NO, d.MCDP_CD, d.DR_NAME, a.APNT_YMD
FROM patient AS p,
     appointment AS a,
     doctor AS d
WHERE p.pt_no = a.pt_no
      AND a.mddr_id = d.dr_id
      AND a.apnt_ymd LIKE '2022-04-13%'
      AND a.apnt_cncl_yn = 'N'
      AND d.mcdp_cd = 'CS'
ORDER BY APNT_YMD ASC