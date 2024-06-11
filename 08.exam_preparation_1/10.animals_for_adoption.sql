SELECT 
	a.name,
	EXTRACT(YEAR FROM a.birthdate) AS birth_year,
	atp.animal_type
FROM 
	animals AS a
JOIN animal_types AS atp
ON atp.id = a.animal_type_id
WHERE 
	AGE('01/01/2022', a.birthdate) < '5 year'
	AND a.owner_id IS NULL 
	AND atp.animal_type <> 'Birds'
ORDER BY a.name ASC;