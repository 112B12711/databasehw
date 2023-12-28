use MyDB
go
CREATE VIEW 學生成績加總(學號,總成績)
AS
Select 學號,Sum(成績)
From 選課資料表
Group by 學號