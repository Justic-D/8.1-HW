SELECT CONCAT (c.last_name, ' ', c.first_name) AS ФИО, SUM(p.amount) AS СУММА
from payment p, rental r, customer c, inventory i
where date(p.payment_date) = '2005-07-30'
and p.payment_date = r.rental_date
and r.customer_id = c.customer_id
and i.inventory_id = r.inventory_id
group by фио
