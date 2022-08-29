SELECT min(emp_no)
FROM employees.employees
;

SELECT max(emp_no)
FROM employees.employees
;

SELECT count(salary) -1
FROM employees.salaries
WHERE emp_no = '10050'
;

SELECT count(*)
FROM employees.employees AS em
LEFT JOIN employees.dept_emp AS dept
    ON em.emp_no = dept.emp_no
    WHERE dept_no IN ('d003')
    ;
    
SELECT gender
FROM employees.employees
GROUP BY gender
;

SELECT gender, max(birth_date)
FROM employees.employees
GROUP BY gender
;

SELECT gender, min(YEAR(hire_date))
FROM employees.employees
WHERE gender = 'M'
GROUP BY gender
;

SELECT distinct gender
FROM employees.employees
;

SELECT distinct dept_no
FROM employees.dept_manager
;

SELECT emp_no, avg(salary)
FROM employees.salaries
GROUP BY emp_no
HAVING avg(salary) > 120000
;

SELECT emp_no, from_date
FROM employees.dept_emp
WHERE from_date > '2000-01-01'
GROUP BY emp_no
HAVING count(emp_no) > 1
;

SELECT *
FROM employees.salaries
ORDER BY salary ASC
;

SELECT *
FROM employees.salaries
ORDER BY salary DESC
;

SELECT max(salary)
FROM employees.employees AS em
INNER JOIN employees.salaries AS s
    ON em.emp_no = s.emp_no
    WHERE gender = 'M'
		AND first_name = 'Tokuyasu'
        AND last_name = 'Pesch'
;

SELECT *
FROM employees.employees AS em
INNER JOIN employees.dept_manager AS dm
    ON em.emp_no = dm.emp_no 
	AND year(dm.to_date) = '9999-01-01'

INNER JOIN employees.departments AS dep
	ON dm.dept_no = dep.dept_no
    WHERE dept_name = 'Development'
;