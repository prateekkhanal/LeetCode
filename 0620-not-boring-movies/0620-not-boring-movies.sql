# Write your MySQL query statement below

SELECT * FROM Cinema WHERE id % 2 <> 0 and description not like '%boring%' order by rating desc