CREATE VIEW ShohinSumJim (shohin_catalg, cnt_shohin)
AS
SELECT shohin_catalg, cnt_shohin
  FROM ShohinSum
 WHERE shohin_catalg = '�줽�Ϋ~';

-- �T�{�˵���O�_�إߧ���
SELECT shohin_catalg, cnt_shohin
  FROM ShohinSumJim;