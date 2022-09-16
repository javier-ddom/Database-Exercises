#  704 rows

/*
SELECT CONCAT(first_name, " ", last_name) AS full_name 
FROM employees
WHERE first_name 'e%e';
*/

# 704 
/*
SELECT UPPER(
			CONCAT(first_name, " ", last_name)
            ) AS full_name 
from employees
WHERE first_name LIKE 'e%e';
*/



/*

SELECT first_name, last_name, 
    DATEDIFF(NOW(), hire_date) AS "days_with_company"
from employees
WHERE hire_date LIKE '199%'
AND birth_date LIKE '%-12-25';
*/


/*
SELECT MIN(salary), MAX(salary) 
FROM salaries 
WHERE to_date > CURDATE();
*/



SELECT 
	  LOWER(
			CONCAT(
                   SUBSTR(first_name, 1, 1),
                   SUBSTR(last_name, 1, 4),
                    '_',
				   SUBSTR(birth_date, 6, 2),
                   SUBSTR(birth_date, 3, 2)
                  )
          ) AS username,
    first_name, last_name, birth_date
FROM employees;
