# Write your MySQL query statement below
(select name as results 
from Users 
join MovieRating 
on Users.user_id=MovieRating.user_id
group by name 
order by 
count(*) desc, 
name limit 1)

union all

(select title as results 
from Movies
join MovieRating 
on Movies.movie_id=MovieRating.movie_id
where year(created_at)=2020 and month(created_at)=2
group by title
order by 
avg(rating) desc,
title limit 1
);


-- year(created_at)=2020 and month(created_at)=2 , we can also use extract(year_month from created_at)=202002



