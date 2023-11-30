CREATE TABLE Enrollment (
    學號 INT,
    課程代號 INT,
    成績 INT,
    PRIMARY KEY (學號, 課程代號),
    FOREIGN KEY (學號) REFERENCES StudentInfo(學號),
    FOREIGN KEY (課程代號) REFERENCES CourseInfo(課程代號)
);