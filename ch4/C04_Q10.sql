-- 存放各商品分類價格總計的資料表
CREATE TABLE ShohinCatalg
(shohin_catalg VARCHAR(32) NOT NULL,
 sum_sell_price  INTEGER,
 sum_buying_price INTEGER,
 PRIMARY KEY (shohin_catalg));
