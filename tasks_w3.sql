SELECT *
FROM employees.employees AS em
LEFT JOIN employees.dept_manager as dm
    ON em.emp_no = dm.emp_no
    WHERE dm.dept_no IS NULL
;

SELECT *
FROM employees.employees AS em
LEFT JOIN 
    (
        SELECT emp_no
        FROM employees.dept_emp
        WHERE dept_emp.to_date = '9999-01-01'
) AS de
    ON em.emp_no = de.emp_no
    WHERE de.emp_no IS NULL
    ;
    
SELECT *
FROM employees.employees
ORDER BY hire_date DESC
LIMIT 1;

SELECT emp_no, salary
FROM employees.salaries
ORDER BY salary DESC
LIMIT 1;

SELECT emp_no, salary
FROM employees.salaries
	WHERE salary = (SELECT max(salary)
		FROM employees.salaries)
;

SELECT emp_no, salary
FROM salaries  
WHERE salary = (SELECT max(salary) FROM salaries)
;

SELECT *
FROM employees.departments
UNION
SELECT *
FROM employees.departments;

SELECT *
FROM employees.departments
UNION ALL
SELECT *
FROM employees.departments;

SELECT sum(salary),
CASE 
	WHEN salary BETWEEN '30000' AND '60000' THEN 'low_salary'
    WHEN salary BETWEEN '60001' AND '110000' THEN 'mid_salary'
	WHEN salary BETWEEN '110001' AND '180000' THEN 'hig_salary'
    ELSE 'test'
END AS level_sal
FROM employees.salaries
GROUP BY level_sal; 

SELECT count(distinct emp_no),
CASE 
	WHEN salary BETWEEN '30000' AND '60000' THEN 'low_salary'
    WHEN salary BETWEEN '60001' AND '110000' THEN 'mid_salary'
	WHEN salary BETWEEN '110001' AND '180000' THEN 'hig_salary'
    ELSE 'test'
END AS level_sal
FROM employees.salaries
GROUP BY level_sal; 

SELECT avg(salary),
CASE 
	WHEN salary BETWEEN '30000' AND '60000' THEN 'low_salary'
    WHEN salary BETWEEN '60001' AND '110000' THEN 'mid_salary'
	WHEN salary BETWEEN '110001' AND '180000' THEN 'hig_salary'
    ELSE 'test'
END AS level_sal
FROM employees.salaries
GROUP BY level_sal; 






