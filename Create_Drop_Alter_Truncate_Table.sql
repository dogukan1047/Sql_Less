select * from Student

CREATE TABLE Lesson(
   less�nId int IDENTITY(1,1) Primary Key, 
   ogrenciNo int,
   lessonName varchar(50),
   credit int)

   Alter Table Lesson Add LessonHour int

   Drop table Lesson

   Truncate Table Lesson 