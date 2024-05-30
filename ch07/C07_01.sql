CREATE TABLE Shohin2
(shohin_id     	 CHAR(4)      NOT NULL,
 shohin_name     VARCHAR(100) NOT NULL,
 shohin_catalg 	 VARCHAR(32)  NOT NULL,
 sell_price  	 INTEGER      ,
 buying_price  	 INTEGER      ,
 reg_date      	 DATE         ,
 PRIMARY KEY (shohin_id));

 START TRANSACTION;

INSERT INTO Shohin2 VALUES ('0001', 'T��', '�窫', 1000, 500, '2009-09-20');
INSERT INTO Shohin2 VALUES ('0002', '���վ�', '�줽�Ϋ~', 500, 320, '2009-09-11');
INSERT INTO Shohin2 VALUES ('0003', 'Ũ�m', '�窫', 4000, 2800, NULL);
INSERT INTO Shohin2 VALUES ('0009', '��M', '�窫', 800, 500, NULL);
INSERT INTO Shohin2 VALUES ('0010', '����', '�p�ХΫ~', 2000, 1700, '2009-09-20');

COMMIT;