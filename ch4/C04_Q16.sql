START TRANSACTION;

    UPDATE Shohin
       SET sell_price = sell_price - 1000
     WHERE shohin_name = 'Ũ�m';

    UPDATE Shohin
       SET sell_price = sell_price + 1000
     WHERE shohin_name = 'T��';


COMMIT;