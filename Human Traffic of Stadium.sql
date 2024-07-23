# Write your MySQL query statement below
SELECT s.id, s.visit_date, s.people FROM Stadium s, Stadium t, Stadium u
WHERE ((s.id+1 = t.id AND s.id+2 = u.id) 
    OR (s.id-1 = t.id AND s.id+1 = u.id) 
    OR (s.id-1 = t.id AND s.id-2 = u.id))
    AND s.people>=100 AND t.people>=100 AND u.people>=100
GROUP BY s.id
ORDER BY id
