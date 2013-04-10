
SELECT count(*) 
FROM (
    SELECT DISTINCT boss_id 
    FROM person  
    GROUP BY boss_id 
    HAVING boss_id <> 0
    ) AS person_boss;



SELECT DISTINCT p1.name
FROM person p1
INNER JOIN  person p2 ON p1.id = p2.boss_id 
ORDER BY p1.name;


SELECT DISTINCT boss_id, count(boss_id) 
FROM person
GROUP BY boss_id 
HAVING  boss_id <> 0  ;



SELECT p1.boss_id, p1.name, p1.id 
FROM person p1 INNER JOIN person p2 ON p1.id=p2.boss_id
GROUP BY p1.boss_id, p1.name, p1.id 
HAVING p1.boss_id <> 0 
    AND count(p1.boss_id) > 2 
ORDER BY p1.name;

-- or

SELECT * FROM person 
WHERE id IN (
    SELECT DISTINCT  boss_id 
    FROM person
    GROUP BY boss_id 
    HAVING  boss_id <> 0 AND
            count(boss_id) > 2 
    );