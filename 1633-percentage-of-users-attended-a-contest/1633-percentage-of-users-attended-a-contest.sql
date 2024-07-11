# Write your MySQL query statement below

SELECT 
    r.contest_id, 
    round(COUNT(u.user_id) / (SELECT COUNT(*) FROM Users) * 100, 2) AS percentage 
FROM 
    Register AS r 
RIGHT JOIN 
    Users AS u 
USING (user_id) 
GROUP BY 
    r.contest_id
order by
    percentage desc, contest_id;
