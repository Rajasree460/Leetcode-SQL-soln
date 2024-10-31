# Write your MySQL query statement below
select user_id, concat(ucase(substring(name,1,1)),lcase(substring(name,2))) as name 
from Users
order by user_id;


-- SUBSTRING(name, 2), the 2 specifies the starting position, meaning "start from the second character" of the string name and extract everything from there to the end of the string.

-- SUBSTRING(name, 2): Extracts all characters from the second position onward.
