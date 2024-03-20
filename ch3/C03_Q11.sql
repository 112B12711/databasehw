SELECT shohin_catalg, COUNT(*)
  FROM Shohin
 GROUP BY shohin_catalg
HAVING shohin_catalg = 'жчкл';