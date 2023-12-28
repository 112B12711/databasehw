use MyDB
go
CREATE VIEW DB 前三名成績單 AS
SELECT TOP 3 姓名,課程名稱,成績
FROM 學生資料表 AS A,選課資料表 AS B,課程資料表 AS C
WHERE A.學號 = B.學號
AND C.課程代號 = B.課號
AND C.課程代號 = 'C005'Order by 成績 Desc