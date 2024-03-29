START TRANSACTION;

    UPDATE Shohin
       SET sell_price = sell_price - 1000
     WHERE shohin_name = 'Å¨­m';

    UPDATE Shohin
       SET sell_price = sell_price + 1000
     WHERE shohin_name = 'T«ò';


COMMIT;