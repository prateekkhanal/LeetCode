# Write your MySQL query statement below

select Visits.customer_id , count(*) as count_no_trans from Visits Left Join Transactions on Visits.visit_id = Transactions.visit_id where Transactions.transaction_id is null group by (customer_id)