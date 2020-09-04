SELECT LOWER(title) AS title, 
  (rental_rate) AS original_rate, 
   rental_rate * 0.5 AS sale_rate 
FROM film
-- Filter for films prior to 2006
where release_year<2006;

