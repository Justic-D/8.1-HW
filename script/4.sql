SELECT  LOWER (first_name) , REPLACE (first_name , 'LL', 'pp')
FROM customer
WHERE first_name LIKE 'Willie' OR first_name  LIKE 'Kelly'
