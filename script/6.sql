SELECT email  , SUBSTRING_INDEX (email  , '@', 1) , CONCAT (LEFT(UPPER(SUBSTRING_INDEX(email  , '@', 1)), 1),
LOWER (SUBSTR((SUBSTRING_INDEX(email , '@',1)),2))) as '1' ,
SUBSTRING_INDEX (email  , '@', -1) ,
CONCAT (LEFT(UPPER(SUBSTRING_INDEX(email  , '@', -1)), 1) ,
LOWER (SUBSTR((SUBSTRING_INDEX(email , '@',-1)),2))) as '2'
FROM customer
LIMIT 10;