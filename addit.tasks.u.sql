
SELECT dept_no
FROM employees.dept_emp 
UNION 
SELECT dept_no
FROM employees.departments
;

SELECT dept_no
FROM employees.dept_manager
UNION ALL
SELECT dept_no
FROM employees.departments
;

SELECT dept_no
FROM employees.departments
UNION
SELECT title
FROM employees.titles
;
