CREATE TABLE Enrollment (
    �Ǹ� INT,
    �ҵ{�N�� INT,
    ���Z INT,
    PRIMARY KEY (�Ǹ�, �ҵ{�N��),
    FOREIGN KEY (�Ǹ�) REFERENCES StudentInfo(�Ǹ�),
    FOREIGN KEY (�ҵ{�N��) REFERENCES CourseInfo(�ҵ{�N��)
);