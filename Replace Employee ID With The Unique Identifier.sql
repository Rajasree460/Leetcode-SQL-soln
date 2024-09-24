# Write your MySQL query statement below
select 
unique_id as unique_id, name as name
from Employees left join EmployeeUNI on Employees.id = EmployeeUNI.id
