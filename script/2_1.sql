SELECT DISTINCT payment_id AS ID, CONCAT (c.last_name, ' ', c.first_name) AS ФИО, payment_date  AS Дата,
SUM(p.amount) OVER (PARTITION BY c.customer_id) AS СУММА
FROM  payment p, rental r, customer c, inventory i
WHERE payment_date >= '2005-07-30 00:00:00' and payment_date <= '2005-07-30 23:59:59'
-- WHERE payment_date >= '2005-07-30' and payment_date < DATE_ADD('2005-07-30', INTERVAL 1 DAY) 
AND p.payment_date = r.rental_date
AND r.customer_id = c.customer_id
AND i.inventory_id = r.inventory_id
