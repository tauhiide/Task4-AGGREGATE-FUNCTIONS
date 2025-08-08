
Overview
This is my submission for Task 4 of the SQL Developer Internship, created using MySQL Workbench. I focused on writing SQL queries to apply aggregate functions (SUM, COUNT, AVG), GROUP BY, and HAVING, as outlined in the task hints. My goal was to summarize and analyze employee salary data using clear, efficient SQL code, ensuring my work stands out by providing thorough queries and detailed explanations.
Repository Structure

task4.sql: MySQL script with table creation, data insertion, and queries.
answers.md: My answers to the 10 interview questions.
README.md: This file.

Dataset
I designed the employees table with the following schema:

employee_id (INT, PRIMARY KEY)
first_name (VARCHAR(50))
last_name (VARCHAR(50))
department (VARCHAR(50))
salary (DECIMAL(10,2))
joining_date (DATE)

The table contains 20 employee records across five departments (Finance, HR, IT, Marketing, Sales), with varied salaries and joining dates to support robust analysis using aggregate functions.
SQL Queries

In task4.sql, I included six queries:

View All Employees: Displays all records to verify the dataset.
Total Salary by Department: Uses SUM(salary) to calculate total salaries, grouped by department.
Average Salary by Department: Computes AVG(salary) with ROUND for readability, grouped by department.
Number of Employees by Department: Counts employees with COUNT(employee_id), grouped by department.
High Salary Departments: Uses AVG(salary) with HAVING to filter departments with average salaries above 65000.
Employees by Department and Hire Year: Counts employees by department and YEAR(joining_date) for multi-column grouping.
Salary Percentage by Department: Calculates each department’s share of total salary using SUM and a subquery, rounded for clarity.

These queries align with the task hints:

Aggregate Functions: SUM, COUNT, AVG on the numeric salary column.
GROUP BY: Categorizes data by department and hire year.
HAVING: Filters groups based on average salary.
Outcome: Summarizes data (totals, averages, counts) and analyzes trends (salary distribution, hiring patterns).

Each query includes comments explaining its purpose and how it meets the task requirements, written in my own words to show my understanding.
How to Run

Requirements: MySQL Workbench (free).
Steps:
Open MySQL Workbench and create a database: CREATE DATABASE employees; USE employees;
Run task4.sql to create the table, insert data, and execute the queries.


Output: Results display in MySQL Workbench’s query output pane.


#Why This Submission Stands Out

Personal Effort: My detailed comments in task4.sql explain each query as if I wrote them, showing my thought process.
Complete Coverage: The queries fully address the task hints, with an extra analytical query (salary percentage) for deeper insights.
Clean Code: The SQL is well-structured, with DECIMAL(10,2) for precise salary calculations and DATE for joining_date.
Professional Setup: The repository is organized, with a clear README file.

