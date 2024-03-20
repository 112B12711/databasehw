SELECT buying_price, COUNT(*)
  FROM Shohin
 WHERE shohin_catalg = 'жчкл'
 GROUP BY buying_price;