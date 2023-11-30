CREATE TABLE TeachingRecord (
    老師編號 INT,
    課程代號 INT,
    PRIMARY KEY (老師編號, 課程代號),
    FOREIGN KEY (老師編號) REFERENCES TeacherInfo(老師編號),
    FOREIGN KEY (課程代號) REFERENCES CourseInfo(課程代號)
);