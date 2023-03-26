SELECT DISTINCT payment_id AS ID, CONCAT (c.last_name, ' ', c.first_name) AS ФИО, payment_date AS Дата,
SUM(p.amount) OVER (PARTITION BY c.customer_id) AS СУММА
FROM  payment p, rental r, customer c, inventory i
WHERE DATE(p.payment_date) = '2005-07-30'
AND p.payment_date = r.rental_date
AND r.customer_id = c.customer_id
AND i.inventory_id = r.inventory_id
