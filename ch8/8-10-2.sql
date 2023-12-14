SELECT 編號,COUNT(*) AS 銷售產品種類
FROM 銷售表
GROUP BY 編號
HAVING COUNT(*) >= 2