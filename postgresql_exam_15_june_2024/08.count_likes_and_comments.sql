/*SELECT
	ph.id AS photo_id,
	COUNT(DISTINCT l.id) AS likes_count,
	COUNT(DISTINCT co.id) AS comments_count	
FROM
	likes AS l
LEFT JOIN
	photos AS ph
ON 
	ph.id = l.photo_id
LEFT JOIN
	comments AS co
ON 
	co.photo_id = ph.id
GROUP BY 
	ph.id
ORDER BY
	likes_count DESC,
	comments_count DESC,
	ph.id ASC;*/

    SELECT 
    p.id AS photo_id,
    COUNT(DISTINCT l.id) AS likes_count,
    COUNT(DISTINCT c.id) AS comments_count
FROM 
    photos p
LEFT JOIN 
    likes l ON p.id = l.photo_id
LEFT JOIN 
    comments c ON p.id = c.photo_id
GROUP BY 
    p.id
ORDER BY 
    likes_count DESC, 
    comments_count DESC, 
    photo_id ASC;