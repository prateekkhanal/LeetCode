# Write your MySQL query statement below

SELECT p.product_id, ifnull(round(sum(p.price*u.units)/sum(u.units),2), 0) as average_price from UnitsSold as u right join Prices as p on p.product_id = u.product_id and 
u.purchase_date >= p.start_date and u.purchase_date <= p.end_date
 group by product_id
