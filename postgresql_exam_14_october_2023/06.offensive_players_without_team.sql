SELECT
	pl.id,
	CONCAT(first_name, ' ', last_name) AS full_name,
	pl.age,
	pl.position,
	pl.salary,
	skd.pace,
	skd.shooting
FROM 
	players AS pl
JOIN 
	skills_data AS skd
ON 
	skd.id = pl.skills_data_id
WHERE 
	team_id IS NULL
		AND
	pl.position = 'A'
		AND
	skd.pace + skd.shooting > 130;