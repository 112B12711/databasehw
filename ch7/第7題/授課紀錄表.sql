CREATE TABLE TeachingRecord (
    �Ѯv�s�� INT,
    �ҵ{�N�� INT,
    PRIMARY KEY (�Ѯv�s��, �ҵ{�N��),
    FOREIGN KEY (�Ѯv�s��) REFERENCES TeacherInfo(�Ѯv�s��),
    FOREIGN KEY (�ҵ{�N��) REFERENCES CourseInfo(�ҵ{�N��)
);