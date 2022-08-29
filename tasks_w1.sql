SELECT *
FROM employees.employees
WHERE hire_date = '1998-08-06'
;

SELECT *
FROM employees.employees
WHERE first_name = 'Kellie'
	AND gender = 'F'
;

SELECT *
FROM employees.employees
WHERE first_name = 'Mark'
	AND gender = 'M'
;

SELECT *
FROM employees.employees
WHERE hire_date = '1995-11-29'
	AND gender = 'F'
;

SELECT *
FROM employees.employees
WHERE hire_date = '1996-06-19'
	AND gender = 'M'
;

SELECT *
FROM employees.employees
WHERE (first_name = 'Kellie'
	OR first_name = 'Beshir')
		AND gender ='F'
;

SELECT *
FROM employees.employees
WHERE (first_name = 'Mark'
	AND gender = 'M')
		OR last_name = 'Luit'
;

SELECT *
FROM employees.employees
WHERE (hire_date = '1995-11-29'
	AND gender = 'F')
		OR (hire_date = '1996-06-19'
			AND gender = 'M')
;

SELECT *
FROM employees.employees
WHERE first_name IN ('Denis', 'Elvis')
;

SELECT *
FROM employees.employees
WHERE hire_date = '1986-06-26'
	AND first_name NOT IN ('John', 'Mark', 'Jacob')
;

SELECT *
FROM employees.employees
WHERE first_name NOT IN ('John', 'Mark', 'Jacob')
	AND hire_date = '1986-06-26'
;

SELECT *
FROM employees.employees
WHERE gender = 'F'
	AND hire_date IN ('1997-12-07', '1995-11-29', '1994-11-11', '1995-04-27', '1997-01-03')
;

SELECT *
FROM employees.employees
WHERE gender = 'M'
	AND first_name LIKE 'Mark%'
;

SELECT *
FROM employees.employees
WHERE gender = 'F'
	AND hire_date LIKE '2000%'
;

SELECT *
FROM employees.employees
WHERE hire_date = '1989-09-12'
	AND first_name NOT LIKE '%a%'
;

SELECT *
FROM employees.employees
WHERE emp_no LIKE '1000_'
;

SELECT *
FROM employees.employees
WHERE birth_date LIKE '1962-10-19'
	AND first_name LIKE '___'
;

SELECT *
FROM employees.employees
WHERE first_name LIKE 'Mark_'
;

SELECT *
FROM employees.salaries
WHERE salary BETWEEN '35000' AND '39000'
;

SELECT *
FROM employees.employees
WHERE emp_no BETWEEN 110020 AND 110039
;

SELECT *
FROM employees.employees
WHERE emp_no NOT BETWEEN 10020 AND 499990
;

SELECT *
FROM employees.departments
WHERE dept_no BETWEEN 'd003' AND 'd006'
;

SELECT *
FROM employees.departments
WHERE dept_name IS NOT NULL
	AND (dept_name LIKE '%a%' 
		OR dept_name LIKE '_e%')
;

SELECT *
FROM employees.salaries
WHERE salary < 39300
;

SELECT *
FROM employees.salaries
WHERE salary < 39300
;

SELECT *
FROM employees.employees
WHERE year(hire_date) >= '2000%'
;
