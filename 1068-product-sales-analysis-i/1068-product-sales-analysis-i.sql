# Write your MySQL query statement below

select Product.product_name, year, price from Sales join Product on Product.product_id = Sales.product_id