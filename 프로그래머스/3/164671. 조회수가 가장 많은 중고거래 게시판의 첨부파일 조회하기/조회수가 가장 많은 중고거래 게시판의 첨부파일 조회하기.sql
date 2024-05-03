-- 코드를 입력하세요
SELECT CONCAT('/home/grep/src/', b.board_id
              , '/', file_id, file_name, file_ext)
              AS FILE_PATH
FROM used_goods_board AS b
     JOIN used_goods_file AS f
     ON b.board_id = f.board_id
WHERE VIEWS = (SELECT MAX(VIEWS) 
               FROM USED_GOODS_BOARD )
ORDER BY FILE_ID DESC