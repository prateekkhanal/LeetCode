# Write your MySQL query statement below

SELECT name, bonus from Employee left JOIN Bonus using (empID) WHERE bonus < 1000 or bonus is null