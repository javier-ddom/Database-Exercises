/*

SELECT DISTINCT title 
FROM titles;

#3
SELECT last_name, COUNT(last_name)
FROM employees
WHERE last_name like 'e%e'
GROUP BY last_name;

*/
#4
/*
SELECT first_name, last_name
FROM employees
WHERE last_name like 'e%e'
GROUP BY first_name, last_name;
*/

#5 /*
SELECT last_name FROM employees
WHERE last_name like '%q%' AND last_name NOT LIKE '%qu%'
GROUP BY last_name;
#'Chleq'. 'Lindqvist'. 'Qiwen'
*/
#6
/*
SELECT last_name COUNT(last_name) AS 'number_of_employees'
FROM employees
WHERE last_name like '%q%' AND last_name NOT LIKE '%qu%'
GROUP BY last_name;
#'Chleq' 189. 'Lindqvist' 190. 'Qiwen' 168
*/

#7
/*
SELECT gender, first_name, COUNT(gender)
FROM employees
WHERE first_name in ('Irene', 'Vidya', 'Maya')
GROUP BY gender, first_name;
/*'M', 'Vidya', '151'
'M', 'Irene', '158'
'F', 'Maya', '90'
'F', 'Vidya', '81'
'F', 'Irene', '105'
'M', 'Maya', '146'. */
*/

#8
SELECT 
	lower(
		CONCAT(
			SUBSTR(first_name, 1, 1),
			SUBSTR(last_name, 1, 4),
			'_',
			SUBSTR(birth_date, 6, 2),
			SUBSTR(birth_date, 3, 2)
			
			)
		
		) as username,
		COUNT(*) as count_of_users
	FROM eployees
	GROUP BY username
	HAVING count_of_users > 1;
