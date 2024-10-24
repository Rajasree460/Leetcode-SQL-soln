# Write your MySQL query statement below
select *
from Users
where mail regexp '^[A-Za-z][A-Za-z0-9_\.\-]*@leetcode(\\?com)?\\.com$';  

-- [a-zA-Z] = means mail should start from small or capital letter.
-- [a-zA-Z0-9_.-]* = after that any letter or number or _ or . or -
-- @leetcode = after that combine with  @leetcode
-- [.] = must come . after @leetcode
-- com = then com.
