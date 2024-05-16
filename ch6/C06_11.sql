SELECT shohin_name, sell_price
  FROM Shohin AS S
 WHERE EXISTS (SELECT *
                 FROM StoreShohin AS SS
                WHERE SS.store_id = '000C'
                  AND TS.shohin_id = S.shohin_id);




