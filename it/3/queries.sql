SELECT count(*) 
FROM (
    SELECT DISTINCT boss_id 
    FROM person  
    GROUP BY boss_id 
    HAVING boss_id <> 0
    ) AS person_boss;



SELECT name 
FROM person 
WHERE id IN (
    SELECT DISTINCT boss_id 
    FROM person 
    GROUP BY boss_id 
    HAVING boss_id <> 0
    ) 
ORDER BY name;



SELECT DISTINCT boss_id, count(boss_id) 
FROM person
GROUP BY boss_id 
HAVING  boss_id <> 0  ;


SELECT * FROM person 
WHERE id IN (
    SELECT DISTINCT  boss_id 
    FROM person
    GROUP BY boss_id 
    HAVING  boss_id <> 0 AND
            count(boss_id) > 2 
    );