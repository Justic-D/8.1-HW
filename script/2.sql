SELECT 
payment_id , 
DATE_FORMAT(payment_date, '%d - %m - %y') AS 'Date' ,
amount
FROM payment
WHERE payment_date
BETWEEN  '2005-06-15' AND '2005-06-19' 
AND amount > 10 
ORDER BY payment_date DESC;