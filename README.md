# 🎓 University Database Management System

![MySQL](https://img.shields.io/badge/mysql-%2300f.svg?style=for-the-badge&logo=mysql&logoColor=white) ![SQL](https://img.shields.io/badge/SQL-Data%20Engineering-orange)

## 📖 Overview
This project establishes a normalized relational database schema for a university system. It is designed to handle core academic data including student records, course catalogs, instructor details, and enrollment history. 

This repository includes the schema initialization scripts and a suite of complex SQL queries for data analysis.

---

## 🗄️ Database Schema / Entity Relationship

The database is built on a relational model ensuring data integrity via Foreign Keys.

### 1. 🧑‍🎓 Student Table (`STUDENT`)
*Master record for student personal and academic data.*

| Column Name | Data Type | Constraints | Description |
| :--- | :--- | :--- | :--- |
| `studentId` | `INT` | **PK**, Auto Increment | Unique ID for every student |
| `firstName` | `VARCHAR(50)` | Not Null | |
| `lastName` | `VARCHAR(50)` | Not Null | |
| `email` | `VARCHAR(100)` | **Unique**, Not Null | Official communication email |
| `course` | `VARCHAR(50)` | - | Current major/stream |
| `yearOfJoining`| `INT` | - | Academic intake year |

### 2. 📚 Course Table (`COURSE`)
*Catalog of available academic programs.*

| Column Name | Data Type | Constraints | Description |
| :--- | :--- | :--- | :--- |
| `courseId` | `INT` | **PK**, Auto Increment | Unique Course Code |
| `courseName` | `VARCHAR(100)`| Not Null | Official Course Title |
| `branches` | `VARCHAR(50)` | - | Department offering the course |
| `courseFees` | `DECIMAL(10,2)`| Not Null | Cost per semester |

### 3. 👨‍🏫 Instructor Table (`INSTRUCTOR`)
*Faculty details mapping.*

| Column Name | Data Type | Constraints |
| :--- | :--- | :--- |
| `instructorId` | `INT` | **PK**, Auto Increment |
| `firstName` | `VARCHAR(50)` | Not Null |
| `email` | `VARCHAR(100)` | **Unique**, Not Null |
| `branches` | `VARCHAR(50)` | Department specialization |

### 4. 📝 Enrollment Table (`ENROLLMENT`)
*Transactional table linking Students to Courses (Many-to-Many relationship).*

| Column Name | Data Type | Constraints | Description |
| :--- | :--- | :--- | :--- |
| `enrollmentId` | `INT` | **PK**, Auto Increment | Transaction ID |
| `studentId` | `INT` | **FK** references `STUDENT`| Link to Student |
| `courseId` | `INT` | **FK** references `COURSE` | Link to Course |
| `enrollmentDate`| `DATE` | Not Null | Date of registration |

---

## 🔎 SQL Analytics & Business Logic

This project goes beyond table creation by including analytical queries that solve business problems:

- **📊 Financial Analysis:** Aggregating `courseFees` to calculate total projected revenue.
- **🔗 Relationship Mapping:** Using `INNER JOIN` to generate student rosters with full course details.
- **📉 Outlier Detection:** Identifying students not enrolled in any courses (Left Joins/Filtering).
- **🏆 Ranking:** Sorting courses based on enrollment popularity.

## 🚀 How to Run

1. Clone the repository:
   ```bash
   git clone https://github.com/rajaganaa/student-database-management-system.git