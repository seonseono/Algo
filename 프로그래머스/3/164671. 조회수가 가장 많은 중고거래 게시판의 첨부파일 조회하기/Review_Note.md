<br/>

## Case 1
**오답 코드**
```MYSQL
SELECT CONCAT('/home/grep/src/', b.board_id
              , '/', file_id, file_name, file_ext)
              AS FILE_PATH
FROM used_goods_board AS b
     JOIN used_goods_file AS f
     ON b.board_id = f.board_id
GROUP BY VIEWS
HAVING MAX(VIEWS)
ORDER BY VIEWS DESC, FILE_ID DESC
LIMIT 1
```
**오답 이유**   
조회수가 가장 높은 게시물이 하나라는 조건이 있어서 서브쿼리를 사용하지 않고 GROUP BY, HAVING, ORDER BY 조건으로 VIEWS 컬럼의 최대값을 가져올 수 있게 데이터를 정렬하고, LIMIT 1을 지정해봤다. 
used_goods_file 테이블의 데이터를 확인해보면 한 게시물에 첨부파일이 두 개 이상인 경우가 있다. 
LIMIT는 출력 결과를 제한하는 함수이므로 LIMIT 1을 지정할 경우 하나의 첨부파일 경로만 출력된다. 
만약 조회수가 가장 높은 게시물 자체를 출력하는 것이 목표라면 LIMIT 1을 사용할 수 있다.  
LIMIT 조건을 사용한 이유는 HAVING MAX(VIEWS) 조건이 적용되지 않았기 때문이다. 원인을 찾다가 GROUP BY 문제를 확인했다. 
GROUP BY를 사용하면 데이터가 그룹으로 묶이고 HAVING 절에서 그룹핑된 각 row(행)에 조건을 적용할 수 있다.
오답 코드에서는 VIEWS로 데이터를 그룹화한 다음 MAX를 사용했다. 
이 경우 VIEWS 컬럼의 데이터가 각자 개별 그룹이 되므로 VIEWS 컬럼에 대해 집계 함수가 제대로 작동하지 않는다. 
<br/><br/><br/>

## Case 2
**오답 코드**
```MYSQL
SELECT CONCAT('/home/grep/src/', b.board_id
               , '/', file_id, file_name, file_ext)
               AS FILE_PATH
FROM used_goods_board AS b
     JOIN used_goods_file AS f
     ON b.board_id = f.board_id
HAVING MAX(VIEWS)
ORDER BY FILE_ID DESC
```
CASE 1에서 찾은 GROUP BY 문제를 해결하기 위해 그룹핑 조건을 삭제했다. WHERE에서는 집계함수를 사용할 수 없으므로 HAVING을 통해 MAX 집계함수를 사용했다.
그러나 이 코드에서도 첨부파일이 두 개 이상일 때 하나의 첨부파일 경로만 출력하는 문제가 발생한다. 이를 해결하기 위해 WHERE절 서브쿼리를 작성했다. 
<br/>
<br/>
