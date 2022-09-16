USE employees;
SHOW TABLES;
DESCRIBE dept_manager;

/*
SELECT emp_no
FROM employees 
WHERE hire_date =
(
SELECT hire_date
FROM employees 
WHERE emp_no = 101010
AND to_date > CURDATE()
)

*/
#2
/*
SELECT title 
FROM titles
WHERE emp_no IN (SELECT emp_no
				FROM employees
                WHERE first_name = "Aamod")
*/


#3
/* 91479 was what. i got

SELECT COUNT(to_date)
FROM dept_emp
WHERE to_date < CURDATE();
*/

#4
/*
SELECT emp_no, first_name, last_name
FROM employees
WHERE gender = 'F'
AND emp_no IN (SELECT emp_no FROM dept_manager)
'110114', 'Isamu', 'Legleitner'
'110183', 'Shirish', 'Ossenbruggen'
'110228', 'Karsten', 'Sigstam'
'110303', 'Krassimir', 'Wegerle'
'110344', 'Rosine', 'Cools'
'110567', 'Leon', 'DasSarma'
'110725', 'Peternela', 'Onuegbe'
'110765', 'Rutger', 'Hofmeyr'
'110800', 'Sanjoy', 'Quadeer'
'111534', 'Hilary', 'Kambil'
'111692', 'Tonny', 'Butterworth'
'111784', 'Marjo', 'Giarratana'
'111877', 'Xiaobin', 'Spinelli'
*/

#5
#DESCRIBE salaries;
SELECT emp_no
FROM employees
WHERE to_date > CURDATE AND (SELECT salary > AVG(salary)
FROM salaries) 
AND to_date > CURDATE();
