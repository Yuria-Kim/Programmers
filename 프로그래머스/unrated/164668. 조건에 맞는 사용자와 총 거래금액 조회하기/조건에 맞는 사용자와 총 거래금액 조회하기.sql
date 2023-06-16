-- 코드를 입력하세요
SELECT U.USER_ID, U.NICKNAME, SUM(B.PRICE) AS TOTAL_SALES
FROM USED_GOODS_BOARD B, USED_GOODS_USER U
WHERE B.WRITER_ID = U.USER_ID AND B.STATUS = 'DONE'
GROUP BY U.NICKNAME
HAVING SUM(B.PRICE)>=700000
ORDER BY TOTAL_SALES;