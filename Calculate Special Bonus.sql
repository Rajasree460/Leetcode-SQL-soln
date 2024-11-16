# Write your MySQL query statement below
select employee_id, salary*(employee_id%2)*(name not like 'M%') as bonus
from Employees
order by employee_id;


-- 1
--    select employee_id , 
--    case when employee_id%2 <>0 and name not like 'M%' then salary 
--    else 0
--    end 
--    as bonus
--    from employees
--    order by employee_id;



-- 2
        -- -- select entries with odd  employee id and name not start with M
        --     select employee_id , salary as bonus 
        --     from employees 
        --     where employee_id%2 <>0 and name not like 'M%'
            
        -- -- join both selection 
        --     union
            
        -- -- select remaining entries from table 
        --     select employee_id , 0 as bonus
        --     from employees
        --     where employee_id%2 = 0 or name like 'M%'
        --     order by employee_id;
            
