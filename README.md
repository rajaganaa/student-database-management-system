# 🎓 University Database Management System

![MySQL](https://img.shields.io/badge/mysql-%2300f.svg?style=for-the-badge&logo=mysql&logoColor=white) ![SQL](https://img.shields.io/badge/SQL-Data%20Engineering-orange)

## 📖 Overview
This project establishes a normalized relational database schema for a university system. It currently manages **30+ student records**, course catalogs, and instructor details. The system includes automated scripts to populate dummy data and handle enrollment transactions.

---

## 🗄️ Database Schema (The Rules)

### 1. 🧑‍🎓 Student Table
| Column | Type | Constraints | Description |
| :--- | :--- | :--- | :--- |
| `studentId` | `INT` | PK, Auto Inc | Unique ID |
| `firstName` | `VARCHAR` | Not Null | |
| `lastName` | `VARCHAR` | Not Null | |
| `email` | `VARCHAR` | Unique | Official email |

### 2. 📚 Course Table
| Column | Type | Constraints | Description |
| :--- | :--- | :--- | :--- |
| `courseId` | `INT` | PK, Auto Inc | Course Code |
| `courseName` | `VARCHAR` | Not Null | e.g., "Computer Science" |
| `courseFees` | `DECIMAL`| Not Null | Cost per semester |

---

## 📊 Data Preview (Actual Output)

*Below is a sample of the data currently populating the system:*

### 👨‍🎓 Student Roster (Sample)
| ID | First Name | Last Name | Email | Course |
| :--- | :--- | :--- | :--- | :--- |
| 1 | John | Doe | john.doe@example.com | Computer Science |
| 2 | Jane | Smith | jane.smith@example.com | Mathematics |
| ... | ... | ... | ... | ... |
| 29 | Andrew | Thompson | andrew.thompson@example.com | Computer Science |
| **30** | **Raja** | **Ganapathy** | **rajaganaa@gmail.com** | **Artificial Intelligence** |

### 🏫 Course Catalog (Sample)
| ID | Course Name | Branch | Fees |
| :--- | :--- | :--- | :--- |
| 1 | Computer Science | IT | 1000.00 |
| 21 | Data Science | IT | 1500.00 |
| 24 | Medicine | Medical | 1800.00 |

### 🔎 Analytics Query Result
*Query: generating a list of students enrolled in specific courses.*

| Student Name | Course Name |
| :--- | :--- |
| John Doe | Computer Science |
| Jane Smith | Mathematics |
| Raja Ganapathy | Artificial Intelligence |

---

## 🚀 How to Run

1. **Clone the repository:**
   ```bash
   git clone https://github.com/rajaganaa/student-database-management-system.git
   ```

2. **Initialize the Database:**
   Import the SQL script to set up the schema and data.
   ```bash
   mysql -u root -p < sql_scripts/init_student_schema.sql
   ```