SELECT buying_price, COUNT(*)
  FROM Shohin
 WHERE shohin_catalg = '�窫'
 GROUP BY buying_price;