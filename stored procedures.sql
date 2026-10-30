-- store procedures
-- it can be understand as a function like in py of java

select *
from employee_salary
where salary >= 50000;

create procedure large_salaries()
select *
from employee_salary
where salary >= 50000;

call large_salaries();

delimiter $$
create procedure large_salaries2()
begin
	select *
	from employee_salary
	where salary >= 50000;
	select *
	from employee_salary
	where salary >= 10000;
end $$
delimiter ;

delimiter $$
create procedure large_salaries3(id int)
begin
	select salary
	from employee_salary
    where employee_id = id
    ;
end $$
delimiter ;

call large_salaries3(1)