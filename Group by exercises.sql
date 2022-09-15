USE employees;

#SELECT * FROM employees
SELECT 

LOWER(
	CONCAT(
		SUBSTR(first_name, 1, 1),
		SUBSTR(last_name, 1, 4),
        '_',
        SUBSTR(birth_date, 6, 2),
        SUBSTR(birth_date, 3, 2)
	)
)
AS username,
COUNT(*) as total
FROM employees
GROUP BY username
HAVING total > 1;
