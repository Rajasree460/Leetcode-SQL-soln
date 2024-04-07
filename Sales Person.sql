# Write your MySQL query statement below
select name
from SalesPerson 
where name not in
    (select SalesPerson.name
    from SalesPerson
        join Orders on SalesPerson.sales_id = Orders.sales_id
        join Company on Orders.com_id = Company.com_id
    where Company.name = 'Red')
