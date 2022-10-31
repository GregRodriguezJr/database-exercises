USE employees;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
         JOIN dept_manager
              ON dept_manager.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dept_manager.dept_no
WHERE dept_manager.to_date = '9999-01-01';

SELECT departments.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM employees AS e
    JOIN dept_manager On e.emp_no = dept_manager.emp_no
    JOIN departments ON dept_manager.dept_no = departments.dept_no
WHERE dept_manager.to_date = '9999-01-01'
AND  e.gender = 'F';

SELECT titles.title, COUNT(titles.title) AS Total
FROM employees
    JOIN titles ON employees.emp_no = titles.emp_no
    JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
    JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE titles.to_date = '9999-01-01'
AND dept_emp.to_date = '9999-01-01'
AND departments.dept_name = 'Customer Service'
GROUP BY titles.title;

SELECT departments.dept_name AS 'Department Name', CONCAT(employees.first_name, ' ',employees.last_name) AS 'Full Name', salaries.salary AS 'Salary'
FROM departments
JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
JOIN employees ON dept_manager.emp_no = employees.emp_no
JOIN salaries ON employees.emp_no = salaries.emp_no
WHERE dept_manager.to_date = '9999-01-01'
AND salaries.to_date = '9999-01-01'
ORDER BY dept_name;



