CREATE TABLE �P���
(
�s�� CHAR(5),
�~�� CHAR(5),
�ƶq INT NOT NULL,
PRIMARY KEY (�s��,�~��),
FOREIGN KEY(�s��) REFERENCES ���u��(�s��)
ON UPDATE CASCADE
ON DELETE CASCADE,
FOREIGN KEY(�~��) REFERENCES ���~��(�~��)
)