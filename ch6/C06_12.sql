SELECT shohin_name,
       CASE WHEN shohin_catalg = '�窫'     THEN 'A�G' || shohin_catalg
            WHEN shohin_catalg = '�줽�Ϋ~' THEN 'B�G' || shohin_catalg
            WHEN shohin_catalg = '�p�ХΫ~' THEN 'C�G' || shohin_catalg
            ELSE NULL
       END AS abc_shohin_catalg
  FROM Shohin;



