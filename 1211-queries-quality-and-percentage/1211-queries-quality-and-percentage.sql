# Write your MySQL query statement below

SELECT query_name, round(avg(rating/position) , 2) as quality, round(100 * sum(case when rating < 3 then 1 else 0 end)/count(*), 2) as poor_query_percentage FROM Queries WHERE query_name is not null GROUP BY query_name;

-- SELECT  query_name, ROUND(AVG(rating / position), 2) AS quality, ROUND(100 * SUM(CASE WHEN rating < 3 THEN 1 ELSE 0 END) / COUNT(*), 2) AS poor_query_percentage FROM Queries GROUP BY query_name;