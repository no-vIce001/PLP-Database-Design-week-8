# PLP-Database-Design-week-8
# **Student Records Management System (SRMS)**

## **Project Description**
The **Student Records Management System (SRMS)** is a comprehensive database solution designed to manage and track student records, course enrollments, exams, marks and lecturers' details. This system provides a structured way to store and retrieve data related to students, courses, and their academic performance. It is particularly useful for educational institutions that need to efficiently manage student information and academic records.

## **Features**
* **Student Management:** Add, update, and delete student information.
* **Course Management:** Manage course details, including course names and codes.
* **Enrollment Tracking:** Track which students are enrolled in which courses.
* **Exam Management:** Record and manage exam details, including exam names and dates.
* **Marks Management:** Record and retrieve marks for students in specific exams.
* **Lecturer Management:** Add, update and delete lecturer information. 

## **How to Run/Setup the Project**
## **Prerequisites**
* **MySQL Database:** Ensure you have MySQL installed and running on your system.
* **MySQL Client:** Use a MySQL client such as MySQL Workbench, phpMyAdmin, or the command-line client.

## **Steps to Set Up the Project**
1. **Create the Database:**
    * Open your MySQL client and create a new database for the SRMS.
```
    CREATE DATABASE srms;
    USE srms;
```
2. **Create the Tables:**
    * Run the following [SQL script](./CREATE-TABLES-statements.sql) to create the necessary tables in the database.
    * Here is the [**ERD**](./ERD.png) for the SRMS showing the tables and their relationships.

3. **Import the SQL Script:**
    * Alternatively, you can save the above [SQL script](./CREATE-TABLES-statements.sql) to a file (e.g., srms_setup.sql) and import it into your database using the following command:
```
    mysql -u your_username -p srms < path/to/srms_setup.sql
```

4. **Verify the Setup:**
    * Ensure that the tables have been created successfully by running the following query:
```
    SHOW TABLES;
```

## **Additional Notes**
* **Security:** Ensure that your MySQL server is configured securely, especially if it is accessible over a network.
* **Backup:** Regularly back up your database to prevent data loss.
* **Documentation:**  Maintain documentation for any custom queries or additional features you implement.

By following these steps, you can set up and run the Student Records Management System (SRMS) to efficiently manage student records and academic data.
