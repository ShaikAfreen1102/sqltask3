# 🎓 College Database - SQL Constraints Practice

This project demonstrates how to design a structured database using SQL constraints to maintain data integrity and enforce relationships between tables.

## 📌 Objective
To build a simple College Database with proper constraints that prevent invalid or inconsistent data.

## 🗂️ Tables Created

### 1. Students Table
- StudentID (Primary Key)
- Name (NOT NULL)
- Email (UNIQUE)
- Age (CHECK >= 18)
- IsActive (DEFAULT TRUE)

### 2. Enrollments Table
- EnrollmentID (Primary Key)
- CourseName (NOT NULL)
- Credits (CHECK between 1 and 5)
- StudentID (Foreign Key)
- EnrollmentDate (DEFAULT CURRENT_DATE)

## 🔒 Constraints Used
- PRIMARY KEY
- FOREIGN KEY
- UNIQUE
- NOT NULL
- CHECK
- DEFAULT

## 🧪 Testing Constraints
Tested various invalid inputs to ensure:
- No NULL values in required fields
- No duplicate emails
- Age restrictions enforced
- Valid student references for enrollments
- Credits within allowed range

## 🎯 Key Learnings
- Importance of data integrity
- How constraints prevent invalid data
- Enforcing relationships between tables
- Real-world database design basics

## 🚀 Tools Used
- MySQL

---
✨ This project is part of my SQL learning journey with 10000 Coders.
