CREATE TABLE OrderHeader (
    �q��N�� INT PRIMARY KEY,
    �q���� DATE,
    �Ȥ�N�� INT,
    FOREIGN KEY (�Ȥ�N��) REFERENCES Customer(�Ȥ�N��)
);