SELECT s.staff_id AS Id, s.first_name AS ИМЯ , s.last_name AS Фамилия , c.city_id AS ID ,
c.city AS Город , COUNT(c2.customer_id) AS Число_Покупателей
FROM staff s
JOIN address a ON a.address_id = s.address_id
JOIN city c ON c.city_id = a.city_id
JOIN store s2 ON s2.store_id = s.store_id
JOIN customer c2 ON c2.store_id = s2.store_id
GROUP BY s.first_name , s.last_name , c.city , s.staff_id , c.city_id
HAVING Число_Покупателей > 300;
