SELECT shohin_catalg, AVG(sell_price)
  FROM Shohin
 GROUP BY shohin_catalg
HAVING AVG(sell_price) >= 2500;