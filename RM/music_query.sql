SELECT * FROM album;
-- 
SELECT * FROM employee
ORDER BY levels DESC
LIMIT 1;

-- Which countries have the most invoice? 
SELECT * FROM invoice;
SELECT billing_country, COUNT(*) AS most_invoice FROM invoice
GROUP BY billing_country
ORDER BY most_invoice DESC;

-- What are top 3 values of top 3 invoice.
SELECT * FROM invoice
ORDER BY total DESC
LIMIT 3;
SELECT DISTINCT(total) FROM invoice
ORDER BY total DESC
LIMIT 3;
-- 
SELECT billing_city, SUM(total) AS total_sum_invoice
FROM invoice
GROUP BY billing_city
ORDER BY total_sum_invoice DESC;
-- 
SELECT * FROM customer;
SELECT customer.customer_id, customer.first_name, customer.last_name, SUM(invoice.total) AS total FROM customer
JOIN invoice ON customer.customer_id = invoice.customer_id
GROUP BY customer.customer_id
ORDER BY total DESC;


