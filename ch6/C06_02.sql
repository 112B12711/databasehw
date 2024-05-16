CREATE TABLE SampleStr
(str1  VARCHAR(40),
 str2  VARCHAR(40),
 str3  VARCHAR(40));

START TRANSACTION;

INSERT INTO SampleStr (str1, str2, str3) VALUES ('�@�G�T',	'�|��'	,	NULL);
INSERT INTO SampleStr (str1, str2, str3) VALUES ('abc'	,	'def'	,	NULL);
INSERT INTO SampleStr (str1, str2, str3) VALUES ('�s��'	,	'�ӭ�'	,	'�O�]');
INSERT INTO SampleStr (str1, str2, str3) VALUES ('aaa'	,	NULL	,	NULL);
INSERT INTO SampleStr (str1, str2, str3) VALUES (NULL	,	'�ҤA��',	NULL);
INSERT INTO SampleStr (str1, str2, str3) VALUES ('@!#$%',	NULL	,	NULL);
INSERT INTO SampleStr (str1, str2, str3) VALUES ('ABC'	,	NULL	,	NULL);
INSERT INTO SampleStr (str1, str2, str3) VALUES ('aBC'	,	NULL	,	NULL);
INSERT INTO SampleStr (str1, str2, str3) VALUES ('abc�ӭ�',	'abc'	,	'ABC');
INSERT INTO SampleStr (str1, str2, str3) VALUES ('abcdefabc',	'abc'	,	'ABC');
INSERT INTO SampleStr (str1, str2, str3) VALUES ('�����H�楲�G','��'	,	'��');

COMMIT;