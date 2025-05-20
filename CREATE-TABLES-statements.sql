-- Create the Student Table
CREATE TABLE Student (
    StudentID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(150) UNIQUE NOT NULL
);

-- Create the Course Table
CREATE TABLE Course (
    CourseID INT PRIMARY KEY AUTO_INCREMENT,
    CourseName VARCHAR(100) NOT NULL,
    CourseCode VARCHAR(20) UNIQUE NOT NULL
);

-- Create the Course Enrollment Table
CREATE TABLE CourseEnrollment (
    EnrollmentID INT PRIMARY KEY AUTO_INCREMENT,
    StudentID INT,
    CourseID INT,
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);

-- Create the Exam Table
CREATE TABLE Exam (
    ExamID INT PRIMARY KEY AUTO_INCREMENT,
    ExamName VARCHAR(100) NOT NULL,
    Date DATE NOT NULL,
    CourseID INT,
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);

-- Create the Marks Table
CREATE TABLE Marks (
    MarkID INT PRIMARY KEY AUTO_INCREMENT,
    EnrollmentID INT,
    ExamID INT,
    Score DECIMAL(5, 2) NOT NULL,
    FOREIGN KEY (EnrollmentID) REFERENCES CourseEnrollment(EnrollmentID),
    FOREIGN KEY (ExamID) REFERENCES Exam(ExamID)
);

-- Create the Lecturer Table
CREATE TABLE Lecturer (
    LecturerID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(150) UNIQUE NOT NULL
);

-- Create the Course Lecturer Table
CREATE TABLE CourseLecturer (
    CourseLecturerID INT PRIMARY KEY AUTO_INCREMENT,
    CourseID INT,
    LecturerID INT,
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID),
    FOREIGN KEY (LecturerID) REFERENCES Lecturer(LecturerID)
);