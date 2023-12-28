use MyDB
go
CREATE view 隱藏薪資的老師資料表
AS
SELECT T_id,T_name,R_region
FROM dbo.Teacher