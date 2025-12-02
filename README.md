# University Database Management System

![MySQL](https://img.shields.io/badge/Database-MySQL-orange?logo=mysql&logoColor=white)
![SQL](https://img.shields.io/badge/Language-SQL-blue?logo=mysql)
![Status](https://img.shields.io/badge/Status-Educational-success)
![Data](https://img.shields.io/badge/Data-Relational-blueviolet)

---

## 📊 Business Use Case

In higher education institutions, **managing student records, course enrollments, and faculty assignments efficiently is paramount**. Manual record-keeping leads to data redundancy and errors. This project provides a **normalized relational database solution** to streamline university operations. It enables administrators to:

- **Centralize Data**: Maintain a single source of truth for students, instructors, and courses.
- **Track Academic Progress**: Monitor student enrollments and course loads.
- **Financial Analysis**: Calculate potential revenue based on course fees and enrollment numbers.
- **Resource Allocation**: Optimize instructor assignments based on course demand.

---

## 🏗️ Architecture

The system is built on a robust **Relational Database Management System (RDBMS)** architecture:

```
┌─────────────────────────────────────────────────────────────┐
│                    UNIVERSITY OPERATIONS                     │
│             (Student Registration, Course Selection)        │
└──────────────────────┬──────────────────────────────────────┘
                       │ Data Entry / Transactions
                       ▼
┌─────────────────────────────────────────────────────────────┐
│  🗄️ RELATIONAL DATA MODEL (MySQL)                           │
│                                                             │
│  ┌──────────────┐       ┌──────────────┐      ┌───────────┐ │
│  │   STUDENT    │◄──────┤  ENROLLMENT  ├──────►│  COURSE   │ │
│  │ (Personal ID)│       │(Transaction) │      │(Catalog)  │ │
│  └──────────────┘       └──────────────┘      └─────┬─────┘ │
│                                                     │       │
│                                                     ▼       │
│                                               ┌───────────┐ │
│                                               │ INSTRUCTOR│ │
│                                               │ (Faculty) │ │
│                                               └───────────┘ │
└──────────────────────┬──────────────────────────────────────┘
                       │ SQL Queries
                       ▼
┌─────────────────────────────────────────────────────────────┐
│  📈 ANALYTICS & REPORTING                                   │
│  • Enrollment Trends                                        │
│  • Fee Revenue Analysis                                     │
│  • Instructor Workload                                      │
└─────────────────────────────────────────────────────────────┘
```

---

## ✨ Features

### 🗄️ **Normalized Schema Design**
- **3NF Compliance**: Tables designed to minimize redundancy and dependency (Student, Course, Instructor, Enrollment).
- **Integrity Constraints**: Primary Keys and Foreign Keys ensure data accuracy and referential integrity.

### 🚀 **Automated Data Population**
- **Seed Scripts**: Pre-loaded with 30+ dummy records for students, courses, and instructors for immediate testing.
- **Transaction Simulation**: Automated enrollment records to simulate real-world university activity.

### 🔍 **Advanced Analytical Queries**
- **Financial Reporting**: Rank students based on total course fees to identify high-value enrollments.
- **Enrollment Analytics**: Identify students with the most course enrollments.
- **Gap Analysis**: Find courses with zero enrollments to optimize the catalog.
- **Faculty Mapping**: Join operations to link courses with their respective instructors.

---

## 💻 Tech Stack

| Category | Technologies |
|----------|-------------|
| **Database Engine** | MySQL 8.0+ |
| **Query Language** | SQL (Structured Query Language) |
| **Scripting** | SQL Scripts (`.sql`) |

---

## 📦 Installation

### Prerequisites
- MySQL Server installed and running locally (or cloud instance)
- MySQL Command Line Client or Workbench

### Setup Steps

1. **Clone the repository**:
   ```bash
   git clone git@github.com:rajaganaa/student-database-management-system.git
   cd student-database-management-system
   ```

2. **Initialize the Database**:
   Run the initialization script to create the schema and populate data.
   
   **Option A: Command Line**
   ```bash
   mysql -u root -p < sql_scripts/init_student_schema.sql
   ```
   
   **Option B: MySQL Workbench**
   - Open `sql_scripts/init_student_schema.sql` in Workbench.
   - Click the "Execute" lightning bolt icon.

3. **Verify Installation**:
   Log in to MySQL and check the tables:
   ```sql
   USE project_1;
   SHOW TABLES;
   SELECT * FROM STUDENT LIMIT 5;
   ```

---

## 📝 License

This project is open-source and available for educational purposes.

---

## 👤 Author

**Rajaganapathy M**  
GitHub: [@rajaganaa](https://github.com/rajaganaa)  
Email: rajaganaa@gmail.com

---

**Built with ❤️ for Database Engineering**