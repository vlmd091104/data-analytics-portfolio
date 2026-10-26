-- Group by

select *
from employee_demographics;

select gender, avg(age), max(age), min(age), count(age)
from employee_demographics
group by gender
;

-- Order by
select *
from employee_demographics
order by 5, 4
;

-- order by sort the first column first then the next so order of it matter
-- index of column can be use to replace the name of the column
