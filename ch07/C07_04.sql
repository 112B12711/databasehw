SELECT shohin_id, shohin_name
  FROM Shohin
 WHERE shohin_id IN (SELECT shohin_id
                       FROM Shohin2)
ORDER BY shohin_id;