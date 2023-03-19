SELECT COUNT(`length`) AS Итого_Фильмов
FROM film f
WHERE f.length > (SELECT AVG(length) FROM film f);
