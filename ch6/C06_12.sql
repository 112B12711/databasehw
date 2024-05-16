SELECT shohin_name,
       CASE WHEN shohin_catalg = '衣物'     THEN 'A：' || shohin_catalg
            WHEN shohin_catalg = '辦公用品' THEN 'B：' || shohin_catalg
            WHEN shohin_catalg = '廚房用品' THEN 'C：' || shohin_catalg
            ELSE NULL
       END AS abc_shohin_catalg
  FROM Shohin;



