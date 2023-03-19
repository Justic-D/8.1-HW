SELECT
payment_id ,
DATE_FORMAT(payment_date, '%d - %m - %Y') AS 'Date' ,
amount
FROM payment
WHERE payment_date
BETWEEN  '2005-06-15 00:00:00' AND '2005-06-18 23:59:59'
AND amount > 10
ORDER BY payment_date DESC;