CREATE TABLE OrderDetail (
    �q��N�� INT,
    ���~�N�� INT,
    �ƶq INT,
    PRIMARY KEY (�q��N��, ���~�N��),
    FOREIGN KEY (�q��N��) REFERENCES OrderHeader(�q��N��),
    FOREIGN KEY (���~�N��) REFERENCES Product(���~�N��)
);