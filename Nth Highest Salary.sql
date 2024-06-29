CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
    SET N = N - 1;
  RETURN (
      SELECT DISTINCT salary
      FROM Employee
      ORDER BY salary DESC
      LIMIT 1 OFFSET N
      
  );
END

-- LIMIT 1 OFFSET N in the query specifies that the result set should skip the first N rows and then return the next row
-- LIMIT 1: Limits the result to 1 row.
-- OFFSET N: Skips the first N rows in the sorted result.


-- CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
-- BEGIN
-- RETURN (
-- # Write your MySQL query statement below.
-- select salary from Employee e1 where N-1=(select count(distinct salary) from Employee e2 where e2.salary>e1.salary)
-- );
-- END

