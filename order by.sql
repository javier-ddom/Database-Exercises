use employees; 
#select * from employees;

#select first_name, last_name from employees where first_name in ('Irena', 'Vidya', 'Maya') ; #vidya awdeh, maya melter

#select first_name, last_name from employees where first_name in ('Irena', 'Vidya', 'Maya') order by first_name, last_name; #irena acton, vidya zwezig

#select first_name, last_name from employees where first_name in ('Irena', 'Vidya', 'Maya') order by last_name, first_name; #irena acton, maya zyda

#select last_name, emp_no from employees where last_name like 'e%e' order by emp_no #899 found, erde 10021, erde 499648

#select last_name, hire_date from employees where last_name like 'e%e' order by hire_date desc #eldridge 1999, erde 1985

#select * from employees where hire_date like '199%' and birth_date like '%-12-25' order by birth_date desc, hire_date; ##number of emps 362, i'm assuming douadi pettis, and bernini khun