SELECT DISTINCT district
FROM address
WHERE district  LIKE 'k%a' and district not LIKE  '% %';
