# Write your MySQL query statement below
update Salary set sex = if(sex = 'm', 'f', 'm');



-- UPDATE salary SET sex =
-- CASE sex
--     WHEN 'm' THEN 'f'
--     ELSE 'm'
-- END;
