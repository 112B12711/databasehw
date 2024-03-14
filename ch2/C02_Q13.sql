SELECT shohin_name, shohin_catalg, reg_date
  FROM shohin
 WHERE shohin_catalg = '辦公用品'
   AND reg_date = '2009-09-11'
    OR reg_date = '2009-09-20';