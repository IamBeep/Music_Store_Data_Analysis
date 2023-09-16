/* which city has the best customers?Wew would like to trhow a promotional music festival in the city we made the 
most money.Write a query that returs one city that has the highest sum of invoice totals.Return both the city nakme and sum of all 
invoice total*/

select * from invoice;

select sum(total) as invoice_total , billing_city
from invoice group by billing_city order by invoice_total desc limit 1;
--ishmam faruki 2



/*Who is the best customer.The customer who has spent the most money
will be declared the best customer.Write a query that returns the person who has spent the most money.*/

select * from customer;

--select  customer.first_name,customer.last_name,sum(total) as best,customer_id from invoice join customer on invoice.customer_id=customer.customer_id  group by customer_id order by best desc limit 1;
select customer.customer_id,customer.first_name,customer.last_name,sum(invoice .total) as total
from invoice join customer on customer.customer_id = invoice.customer_id
group by customer.customer_id order by total desc limit 1;