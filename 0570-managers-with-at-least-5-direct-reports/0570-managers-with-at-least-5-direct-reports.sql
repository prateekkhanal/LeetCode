# Write your MySQL query statement below

select name from Employee as e where (select count(managerId) from Employee where managerId = e.id) >= 5;