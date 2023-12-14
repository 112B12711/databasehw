SELECT 品號,COUNT(*) AS 銷售員工數
AVG(數量) AS 平均數量
FROM 銷售表
GROUP BY 品號
ORDER BY 品號 