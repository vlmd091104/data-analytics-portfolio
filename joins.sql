-- join
select *
from employee_demographics;

select *
from employee_salary;

select ed.employee_id, age, occupation
from employee_demographics ed
inner join employee_salary es
	on ed.employee_id = es.employee_id
;

-- outer join

select *
from employee_demographics ed
right join employee_salary es
	on ed.employee_id = es.employee_id
;

-- left join: take everything on left table match on right table
-- right join: take everything on right table match on left table

-- self join
select e1.employee_id as e_santa,
e1.first_name as first_name_santa,
e1.last_name as last_name_santa,
e2.employee_id as e_id,
e2.first_name as first_name,
e2.last_name as last_name
from employee_salary e1
join employee_salary e2
	on e1.employee_id + 1 = e2.employee_id
;

-- joining multiple

select *
from employee_demographics ed
inner join employee_salary es
	on ed.employee_id = es.employee_id
inner join parks_departments pd
	on es.dept_id = pd.department_id
;

select *
from parks_departments;
