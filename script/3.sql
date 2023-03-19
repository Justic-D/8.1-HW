SELECT DATE_FORMAT(p.payment_date, '%m') AS Месяц ,
Sum(p.amount) AS Сумма ,
COUNT(p.rental_id) AS Кол_во_Аренд
FROM payment p
GROUP BY Месяц
ORDER BY Сумма DESC
LIMIT 1;
