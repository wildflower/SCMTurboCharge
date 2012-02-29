SELECT fk as key, count(fk) AS qty 
FROM mytable 
GROUP BY key 
ORDER BY qty DESC 
LIMIT 1;