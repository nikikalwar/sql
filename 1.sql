SELECT LOWER(title) AS title, 
  (rental_rate) AS original_rate, 
   rental_rate * 0.5 AS sale_rate 
FROM film
-- Filter for films prior to 2006
where release_year<2006;


SELECT payment_date,
  EXTRACT(day from payment_date) AS payment_day 
FROM payment;

SELECT payment_date,
  EXTRACT(year from payment_date) AS payment_year 
FROM payment;

SELECT payment_date,
  EXTRACT (hour from payment_date )AS payment_hour 
FROM payment;

SELECT active, 
       count(payment_id) AS num_transactions, 
       avg(amount) AS avg_amount, 
       sum(amount) AS total_amount
FROM payment AS p
INNER JOIN customer AS c
  ON p.customer_id = c.customer_id
GROUP BY active;
