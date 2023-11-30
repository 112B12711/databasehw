CREATE TABLE OrderDetail (
    訂單代號 INT,
    產品代號 INT,
    數量 INT,
    PRIMARY KEY (訂單代號, 產品代號),
    FOREIGN KEY (訂單代號) REFERENCES OrderHeader(訂單代號),
    FOREIGN KEY (產品代號) REFERENCES Product(產品代號)
);