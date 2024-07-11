# Write your MySQL query statement below

SELECT t.id from Weather as t where t.temperature > (SELECT temperature from Weather where recordDate = t.recordDate - INTERVAL 1 DAY)