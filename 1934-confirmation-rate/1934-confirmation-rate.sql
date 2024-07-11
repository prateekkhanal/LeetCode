# Write your MySQL query statement below

 select distinct s.user_id, coalesce(round(nullif((select count(*) from Confirmations where user_id = s.user_id and action = 'confirmed'), 0)/NULLIF ((select count(*) from Confirmations where user_id = s.user_id), 0), 2), 0) as confirmation_rate from Confirmations as c right join Signups as s using(user_id);

-- SELECT
--     c.user_id, 
--     ROUND(
--         (
--             SELECT COUNT(*) 
--             FROM Confirmations 
--             WHERE user_id = c.user_id AND action = 'confirmed'
--         ) / NULLIF(
--             (
--                 SELECT COUNT(*) 
--                 FROM Confirmations 
--                 WHERE user_id = c.user_id
--             ), 0
--         ), 2
--     ) AS confirmation_rate 
-- FROM 
--     Confirmations AS c;
