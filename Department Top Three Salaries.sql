# Write your MySQL query statement below
select d.name as Department,e1.name as Employee,salary from Employee e1 join Department d on e1.departmentId=d.id where (select count(distinct salary) from Employee e2 where e2.departmentId=e1.departmentId and e2.salary>=e1.salary)<=3 order by departmentId,salary desc;
