SELECT 
	COUNT(employee_id) AS "count"
FROM 
	employees
WHERE salary > (
		SELECT AVG(salary) AS "average_salary" FROM employees
);

/*
SELECT 
	COUNT(employee_id) AS
FROM 
	employees
WHERE salary > (
		SELECT AVG(salary) FROM employees
);
*/

