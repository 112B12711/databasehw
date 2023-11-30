CREATE TABLE StudentInfo (
    學號 INT PRIMARY KEY,
    姓名 VARCHAR(50),
    年級 INT,
    科系代碼 INT,
    FOREIGN KEY (科系代碼) REFERENCES Department(科系代碼),
    UNIQUE (學號)
);