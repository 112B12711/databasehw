SELECT shohin_id, shohin_name
  FROM Shohin
 WHERE shohin_catalg = '�p�ХΫ~'
UNION
SELECT shohin_id, shohin_name
  FROM Shohin2
 WHERE shohin_catalg = '�p�ХΫ~'
ORDER BY shohin_id;