CREATE TABLE StudentInfo (
    �Ǹ� INT PRIMARY KEY,
    �m�W VARCHAR(50),
    �~�� INT,
    ��t�N�X INT,
    FOREIGN KEY (��t�N�X) REFERENCES Department(��t�N�X),
    UNIQUE (�Ǹ�)
);