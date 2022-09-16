use employees;
#select database();
#show tables;

describe titles;

select * from titles
LIMIT 10;

select distinct title
from titles;


select distinct last_name
from employees
order by last_name desc
LIMIT 10;
/* 
Zykh
Zyda
Zwicker
Zweizig
Zumaque
Zultner
Zucker
Zuberek
Zschoche
Zongker 
*/

select first_name, last_name, hire_date
from employees
where hire_date LIKE '199%'
AND birth_date LIKE '%-12-25'
ORDER BY hire_date
limit 5; 
/* 
Alselm	    Cappello	1990-01-01
Utz	        Mandell	    1990-01-03
Bouchung	Schreiter	1990-01-04
Baocai	    Kushner	    1990-01-05
Petter  	Stroustrup	1990-01-10
*/




select first_name, last_name, hire_date
from employees
where hire_date LIKE '199%'
AND birth_date LIKE '%-12-25'
ORDER BY hire_date
limit 5 OFFSET 45;
/* 
Pranay	Narwekar	1990-07-18
Marjo	Farrow	    1990-07-18
Ennio	Karcich	    1990-08-05
Dines	Lubachevsky	1990-08-06
Ipke	Fontan  	1990-08-06
*/

