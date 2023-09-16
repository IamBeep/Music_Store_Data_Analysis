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


select customer.customer_id,customer.first_name,customer.last_name,sum(invoice .total) as total
from invoice join customer on customer.customer_id = invoice.customer_id
group by customer.customer_id order by total desc limit 1;


/*write a query to return the email,first name,last name and genre of all rock music listeners.
Return your list ordered alphabetically by email starting with A*/

select * from genre
select * from customer

select  distinct email,first_name,last_name
from customer join invoice on customer.customer_id= invoice.customer_id 
join invoice_line on invoice.invoice_id= invoice_line.invoice_id
where track_id in
(select track_id from track 
 join genre on track.genre_id = genre.genre_id
 where genre.name like ('%Rock%')) order by email desc;
 
 
 /* lets invite the artists who have written the most rock music in our dataset .write a qurey
 that returns the artist name and total track count of the top 10 rock bands;*/
 
 
 select * from track
 
 select * from artist
 
 select * from album
 
 select artist.artist_id,artist.name,count(artist.artist_id) as number_of_songs from track 
 join album on album.album_id= track.album_id
 join artist on artist.artist_id = album.artist_id
 join genre on genre.genre_id = track.genre_id
 where genre.name like '%Rock%'
 group by artist.artist_id
 order by number_of_songs desc limit 10;
 

/*return all the track names that have a song length longer than the average song length.
return the name and miliseconds for each track.Order by he song length with the longest 
songs listed first.*/

select * from track;

select name,milliseconds as duration from track where milliseconds> (select avg(milliseconds) from track) order by 
milliseconds desc;


/* Find how much amount spent by each customer on artists.
Write a query to return customer name,artist name and total spend.*/

with best_selling_artist as(
	select artist.artist_id as artist_id,artist.name as artist_name,
	sum (invoice_line.unit_price*invoice_line.quantity) as total_sales
	from invoice_line
	join track on track.track_id = invoice_line.track_id
	join album on album.album_id=track.album_id
	join artist on artist.artist_id=album.artist_id
	group by 1
	order by 3 desc
	limit 1
)

select c.customer_id,c.first_name,c.last_name,bsa.artist_name,
sum(il.unit_price*il.quantity) as amount_spent
from invoice i
join customer c on c.customer_id=i.customer_id
join invoice_line il on il.invoice_id=i.invoice_id
join track t on t.track_id = il.track_id
join album alb on alb.album_id =t.album_id
join best_selling_artist bsa on bsa.artist_id =alb.artist_id
group by 1,2,3,4
order by 5 desc;





