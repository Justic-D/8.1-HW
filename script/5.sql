SELECT email , SUBSTRING_INDEX (email , '@', 1) , SUBSTRING_INDEX (email , '@', -1)
FROM customer;