use [MyDB]
go
CREATE VIEW Em_view2
AS
	SELECT A.Em_id,Em_name,Em_dep,Em_code
	FROM [dbo].[Employee] AS A,[dbo].[comp_dep] AS B
	WHERE A.Em_code = B.Em_code