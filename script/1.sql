SELECT CONCAT(s.first_name , '' , s.last_name) AS ФИО , c.city AS Город , COUNT(c2.customer_id) AS Число_Покупателей
FROM staff s
JOIN address a ON a.address_id = s.address_id
JOIN city c ON c.city_id = a.city_id
JOIN store s2 ON s2.store_id = s.store_id
JOIN customer c2 ON s2.store_id = c2.store_id
GROUP BY s.first_name , s.last_name , c.city
HAVING Число_Покупателей > 300;
