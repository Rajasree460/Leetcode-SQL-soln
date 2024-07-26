# Write your MySQL query statement below
(
    SELECT r.requester_id AS id, 
           IFNULL(COUNT(r.requester_id), 0) + IFNULL(acc.cnt, 0) AS num
    FROM RequestAccepted r
    LEFT JOIN (
        SELECT COUNT(accepter_id) AS cnt, accepter_id AS id
        FROM RequestAccepted
        GROUP BY accepter_id
    ) AS acc 
    ON acc.id = r.requester_id 
    GROUP BY r.requester_id
)
UNION (
    SELECT accepter_id AS id, 
           COUNT(accepter_id) AS num
    FROM RequestAccepted r
    WHERE accepter_id NOT IN (
        SELECT DISTINCT requester_id 
        FROM RequestAccepted
    )
    GROUP BY r.accepter_id
)
ORDER BY num DESC
LIMIT 1;
