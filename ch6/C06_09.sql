CREATE TABLE StoreShohin
(store_id  CHAR(4)       NOT NULL,
 store_name  VARCHAR(200) NOT NULL,
 shohin_id CHAR(4)       NOT NULL,
 s_amount     INTEGER       NOT NULL,
 PRIMARY KEY (store_id, shohin_id)) DEFAULT CHARSET=utf8;


 START TRANSACTION;

INSERT INTO StoreShohin (store_id, store_name, shohin_id, s_amount) VALUES ('000A',	'�F��',		'0001',	30);
INSERT INTO StoreShohin (store_id, store_name, shohin_id, s_amount) VALUES ('000A',	'�F��',		'0002',	50);
INSERT INTO StoreShohin (store_id, store_name, shohin_id, s_amount) VALUES ('000A',	'�F��',		'0003',	15);
INSERT INTO StoreShohin (store_id, store_name, shohin_id, s_amount) VALUES ('000B',	'�W�j��',	'0002',	30);
INSERT INTO StoreShohin (store_id, store_name, shohin_id, s_amount) VALUES ('000B',	'�W�j��',	'0003',	120);
INSERT INTO StoreShohin (store_id, store_name, shohin_id, s_amount) VALUES ('000B',	'�W�j��',	'0004',	20);
INSERT INTO StoreShohin (store_id, store_name, shohin_id, s_amount) VALUES ('000B',	'�W�j��',	'0006',	10);
INSERT INTO StoreShohin (store_id, store_name, shohin_id, s_amount) VALUES ('000B',	'�W�j��',	'0007',	40);
INSERT INTO StoreShohin (store_id, store_name, shohin_id, s_amount) VALUES ('000C',	'�j��',		'0003',	20);
INSERT INTO StoreShohin (store_id, store_name, shohin_id, s_amount) VALUES ('000C',	'�j��',		'0004',	50);
INSERT INTO StoreShohin (store_id, store_name, shohin_id, s_amount) VALUES ('000C',	'�j��',		'0006',	90);
INSERT INTO StoreShohin (store_id, store_name, shohin_id, s_amount) VALUES ('000C',	'�j��',		'0007',	70);
INSERT INTO StoreShohin (store_id, store_name, shohin_id, s_amount) VALUES ('000D',	'�֩�',		'0001',	100);

COMMIT;