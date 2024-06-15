SELECT
	ph.id AS photo_id,
	ph.capture_date,
	ph.description,
	COUNT(*) AS comments_count
FROM
	photos AS ph
JOIN
	comments AS co
ON 
	co.photo_id = ph.id
GROUP BY
	ph.id,
	ph.capture_date,
	ph.description,
	co.photo_id
HAVING
	ph.description IS NOT NULL
ORDER BY
	comments_count DESC,
	co.photo_id ASC
LIMIT 3;