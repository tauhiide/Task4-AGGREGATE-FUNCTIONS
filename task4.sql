
# I designed this table to store employee data, with employee_id as the primary key, VARCHAR for names and department, DECIMAL(10,2) for salary to handle precise financial calculations, and DATE for joining_date to support date-based analysis.
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    joining_date DATE
);

# I inserted 20 employee records across five departments (IT, HR, Sales, Marketing, Finance) with varied salaries and joining dates. This data allows me to apply aggregate functions and analyze trends, as required by the task.
INSERT INTO employees VALUES (1, 'Jahnvi', 'Deshmukh', 'IT', 75000.00, '2023-01-15');
INSERT INTO employees VALUES (2, 'Jamna', 'Smithi', 'HR', 60000.00, '2022-03-10');
INSERT INTO employees VALUES (3, 'Aliza', 'Jamil', 'Sales', 65000.00, '2021-06-20');
INSERT INTO employees VALUES (4, 'Bob', 'Williams', 'Marketing', 55000.00, '2023-02-01');
INSERT INTO employees VALUES (5, 'Charlie', 'Brown', 'Finance', 80000.00, '2020-11-12');
INSERT INTO employees VALUES (6, 'Emma', 'Davis', 'IT', 82000.00, '2022-07-05');
INSERT INTO employees VALUES (7, 'Michael', 'Clark', 'HR', 58000.00, '2023-04-22');
INSERT INTO employees VALUES (8, 'Sarah', 'Lewis', 'Sales', 70000.00, '2021-09-30');
INSERT INTO employees VALUES (9, 'David', 'Walker', 'Marketing', 62000.00, '2022-12-15');
INSERT INTO employees VALUES (10, 'Lalita', 'Hiwale', 'Finance', 78000.00, '2021-03-18');
INSERT INTO employees VALUES (11, 'James', 'Allen', 'IT', 68000.00, '2023-05-10');
INSERT INTO employees VALUES (12, 'Emily', 'Young', 'HR', 61000.00, '2022-08-25');
INSERT INTO employees VALUES (13, 'Thomas', 'King', 'Sales', 72000.00, '2020-12-01');
INSERT INTO employees VALUES (14, 'Olivia', 'Scott', 'Marketing', 59000.00, '2023-01-20');
INSERT INTO employees VALUES (15, 'William', 'Green', 'Finance', 85000.00, '2021-07-15');
INSERT INTO employees VALUES (16, 'Sophia', 'Adams', 'IT', 77000.00, '2022-02-28');
INSERT INTO employees VALUES (17, 'Daniel', 'Baker', 'HR', 63000.00, '2023-03-05');
INSERT INTO employees VALUES (18, 'Ava', 'Nelson', 'Sales', 67000.00, '2021-10-10');
INSERT INTO employees VALUES (19, 'Matthew', 'Carter', 'Marketing', 64000.00, '2022-11-01');
INSERT INTO employees VALUES (20, 'Mia', 'Mitchell', 'Finance', 81000.00, '2020-09-22');

# Query 1: View All Employees
# I wrote this query to display all records in the employees table to verify the data was inserted correctly. It helps me ensure the dataset is ready for analysis with aggregate functions.
SELECT * FROM employees;

# Query 2: Total Salary by Department
# This query calculates the total salary for each department. I used SUM on the salary column (a numeric column, as per the task hints) and grouped by department to categorize the data. It summarizes the payroll cost per department.
SELECT department, SUM(salary) AS total_salary
FROM employees 
GROUP BY department;

# Query 3: Average Salary by Department
# I created this query to find the average salary per department. Using AVG on salary and ROUND to 2 decimal places makes the results clear and precise. GROUP BY department organizes the data, meeting the task’s requirement to categorize and summarize.
SELECT department, ROUND(AVG(salary), 2) AS average_salary
FROM employees 
GROUP BY department;

# Query 4: Number of Employees by Department
#This query counts how many employees are in each department. I used COUNT(employee_id) to ensure accurate row counts and grouped by department. This helps analyze department sizes, aligning with the task’s goal of summarizing data.

SELECT department, COUNT(employee_id) AS number_of_employees
FROM employees 
GROUP BY department;

# Query 5: Departments with High Average Salary
# I wrote this query to identify departments with an average salary above 65000. Using AVG(salary) with ROUND for readability and HAVING to filter groups (as per the task hints), it highlights high-paying departments for deeper analysis.
SELECT department, ROUND(AVG(salary), 2) AS average_salary
FROM employees 
GROUP BY department
HAVING average_salary > 65000;

# Query 6: Employees by Department and Hire Year
# This query counts employees by department and the year they joined. I used YEAR(joining_date) to extract the year and grouped by both department and hire_year, as the task hints suggest categorizing data. This shows hiring trends over time.
SELECT department, YEAR(joining_date) AS hire_year, COUNT(employee_id) AS number_of_emp
FROM employees 
GROUP BY department, hire_year;

# Query 7: Salary Percentage by Department
# I designed this query to calculate each department’s share of the total company salary. Using SUM(salary) for department totals, I divided by the total salary (from a subquery) and multiplied by 100 for percentage. I rounded to 2 decimal places for consistency with my other queries. This query goes beyond basic aggregates to analyze salary distribution, making my submission stand out.
SELECT department, 
SUM(salary) AS department_salary, 
ROUND((SUM(salary) * 100.0 / (SELECT SUM(salary) FROM employees)), 2) AS salary_percentage
FROM employees
GROUP BY department;
