
SELECT first_name, last_name, count(emp_no)
FROM employees.employees
-- WHERE first_name = 'Abdelkader' AND last_name = 'Isaac'
GROUP BY first_name, last_name
HAVING count(emp_no) > 1
;


SELECT first_name, last_name, count(emp_no)
FROM employees.employees
WHERE birth_date > '1960-01-01'
GROUP BY first_name, last_name
HAVING count(emp_no) > 1
;


SELECT first_name, last_name, count(gender)
FROM employees.employees
WHERE birth_date > '1960-01-01'
GROUP BY first_name, last_name
HAVING count(distinct(gender)) =2
;



SELECT first_name, last_name, count(gender)
FROM employees.employees
WHERE birth_date > '1960-01-01'
	AND hire_date < '1990-01-01'
GROUP BY first_name, last_name
HAVING count(distinct(gender)) =2
;


SELECT first_name, last_name, count(gender)
FROM employees.employees
WHERE birth_date > '1960-01-01'
	AND hire_date < '1990-01-01'
    AND first_name LIKE 'a%'
GROUP BY first_name, last_name
HAVING count(distinct(gender)) =2
;
